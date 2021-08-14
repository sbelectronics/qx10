0000: c3 0c 9c     jp   $9C0C
0003: c3 01 f1     jp   $F101
0006: c3 08 f1     jp   $F108
0009: c3 0f f1     jp   $F10F
000c: c3 1b f1     jp   $F11B
000f: c3 22 f1     jp   $F122
0012: c3 29 f1     jp   $F129
0015: c3 30 f1     jp   $F130
0018: c3 37 f1     jp   $F137
001b: c3 3e f1     jp   $F13E
001e: c3 45 f1     jp   $F145
0021: c3 4c f1     jp   $F14C
0024: c3 53 f1     jp   $F153
0027: c3 5a f1     jp   $F15A
002a: c3 61 f1     jp   $F161
002d: c3 68 f1     jp   $F168
0030: c3 6f f1     jp   $F16F
0033: c3 76 f1     jp   $F176
0036: c3 63 f0     jp   $F063
0039: c3 63 f0     jp   $F063
003c: c3 63 f0     jp   $F063
003f: c3 63 f0     jp   $F063
0042: c3 63 f0     jp   $F063
0045: c3 63 f0     jp   $F063
0048: c3 63 f0     jp   $F063
004b: c3 63 f0     jp   $F063
004e: c3 63 f0     jp   $F063
0051: c3 63 f0     jp   $F063
0054: c3 63 f0     jp   $F063
0057: c3 63 f0     jp   $F063
005a: c3 63 f0     jp   $F063
005d: c3 7d f1     jp   $F17D
0060: 5d           ld   e,l
0061: 00           nop
0062: 21 03 00     ld   hl,$0003
0065: 11 00 f0     ld   de,$F000
0068: ed 4b 60 00  ld   bc,($0060)
006c: ed b0        ldir
006e: 31 00 00     ld   sp,$0000
0071: cd f2 94     call $94F2
0074: 21 ff ff     ld   hl,$FFFF
0077: 22 30 98     ld   ($9830),hl
007a: 3e ff        ld   a,$FF
007c: 32 b6 f4     ld   ($F4B6),a
007f: 32 b7 f4     ld   ($F4B7),a
0082: af           xor  a
0083: 32 8d 19     ld   ($198D),a
0086: 32 26 98     ld   ($9826),a
0089: 32 28 98     ld   ($9828),a
008c: 3d           dec  a
008d: 32 3d 98     ld   ($983D),a
0090: 1e 00        ld   e,$00
0092: cd 54 92     call $9254
0095: 1e 01        ld   e,$01
0097: cd 54 92     call $9254
009a: 3a 66 f0     ld   a,($F066)
009d: e6 04        and  $04
009f: 28 02        jr   z,$00A3
00a1: cb cf        set  1,a
00a3: 32 66 f0     ld   ($F066),a
00a6: 3e 8f        ld   a,$8F
00a8: 32 d5 38     ld   ($38D5),a
00ab: cd dd 12     call $12DD
00ae: 0e 1b        ld   c,$1B
00b0: cd d7 12     call $12D7
00b3: 0e 58        ld   c,$58
00b5: cd d7 12     call $12D7
00b8: 0e 45        ld   c,$45
00ba: cd d7 12     call $12D7
00bd: cd b3 f5     call $F5B3
00c0: cd d6 00     call $00D6
00c3: af           xor  a
00c4: 32 69 16     ld   ($1669),a
00c7: cd 62 07     call $0762
00ca: 01 80 00     ld   bc,$0080
00cd: cd 5e 90     call $905E
00d0: cd 20 f3     call $F320
00d3: c3 96 f4     jp   $F496
00d6: 01 03 01     ld   bc,$0103
00d9: cd 9b f3     call $F39B
00dc: 21 00 d8     ld   hl,$D800
00df: 11 00 da     ld   de,$DA00
00e2: 01 00 08     ld   bc,$0800
00e5: cd a5 f3     call $F3A5
00e8: 01 01 01     ld   bc,$0101
00eb: cd 9b f3     call $F39B
00ee: 01 06 00     ld   bc,$0006
00f1: 11 00 e2     ld   de,$E200
00f4: 21 28 dd     ld   hl,$DD28
00f7: cd a5 f3     call $F3A5
00fa: c9           ret
00fb: 08           ex   af,af'
00fc: 3a 17 02     ld   a,($0217)
00ff: b9           cp   c
0100: da 15 01     jp   c,$0115
0103: 79           ld   a,c
0104: 81           add  a,c
0105: d9           exx
0106: 5f           ld   e,a
0107: 16 00        ld   d,$00
0109: 21 17 01     ld   hl,$0117
010c: 19           add  hl,de
010d: 7e           ld   a,(hl)
010e: 23           inc  hl
010f: 66           ld   h,(hl)
0110: 6f           ld   l,a
0111: e5           push hl
0112: d9           exx
0113: 08           ex   af,af'
0114: c9           ret
0115: af           xor  a
0116: c9           ret
0117: 18 02        jr   $011B
0119: f2 94 ba     jp   p,$BA94
011c: 02           ld   (bc),a
011d: d7           rst  $10
011e: 02           ld   (bc),a
011f: db 02        in   a,($02)
0121: f0           ret  p
0122: 02           ld   (bc),a
0123: 03           inc  bc
0124: 03           inc  bc
0125: b8           cp   b
0126: 03           inc  bc
0127: f2 03 0d     jp   p,$0D03
012a: 04           inc  b
012b: 26 04        ld   h,$04
012d: 2f           cpl
012e: 04           inc  b
012f: 59           ld   e,c
0130: 04           inc  b
0131: 5d           ld   e,l
0132: 04           inc  b
0133: 72           ld   (hl),d
0134: 04           inc  b
0135: 79           ld   a,c
0136: 04           inc  b
0137: b5           or   l
0138: 04           inc  b
0139: b9           cp   c
013a: 04           inc  b
013b: c0           ret  nz
013c: 04           inc  b
013d: d0           ret  nc
013e: 04           inc  b
013f: 4d           ld   c,l
0140: 05           dec  b
0141: 60           ld   h,b
0142: 05           dec  b
0143: 74           ld   (hl),h
0144: 05           dec  b
0145: 8c           adc  a,h
0146: 05           dec  b
0147: a4           and  h
0148: 05           dec  b
0149: a9           xor  c
014a: 05           dec  b
014b: c2 05 25     jp   nz,$2505
014e: 06 29        ld   b,$29
0150: 06 2d        ld   b,$2D
0152: 06 32        ld   b,$32
0154: 06 52        ld   b,$52
0156: 06 65        ld   b,$65
0158: 06 7c        ld   b,$7C
015a: 06 8f        ld   b,$8F
015c: 06 a4        ld   b,$A4
015e: 06 bc        ld   b,$BC
0160: 06 d5        ld   b,$D5
0162: 06 e8        ld   b,$E8
0164: 06 19        ld   b,$19
0166: 07           rlca
0167: 1f           rra
0168: 07           rlca
0169: 30 07        jr   nc,$0172
016b: 57           ld   d,a
016c: 07           rlca
016d: 5b           ld   e,e
016e: 07           rlca
016f: 62           ld   h,d
0170: 07           rlca
0171: 88           adc  a,b
0172: 07           rlca
0173: 8d           adc  a,l
0174: 07           rlca
0175: ca 07 0f     jp   z,$0F07
0178: 08           ex   af,af'
0179: f0           ret  p
017a: f4 f0 f4     call p,$F4F0
017d: 66           ld   h,(hl)
017e: 08           ex   af,af'
017f: 92           sub  d
0180: 08           ex   af,af'
0181: fd 09        add  iy,bc
0183: 4c           ld   c,h
0184: 49           ld   c,c
0185: 00           nop
0186: 52           ld   d,d
0187: 11 69 1f     ld   de,$1F69
018a: 0b           dec  bc
018b: 23           inc  hl
018c: 0b           dec  bc
018d: fd 09        add  iy,bc
018f: 99           sbc  a,c
0190: 08           ex   af,af'
0191: e0           ret  po
0192: 08           ex   af,af'
0193: ea 08 f5     jp   pe,$F508
0196: 08           ex   af,af'
0197: 16 09        ld   d,$09
0199: 3e 09        ld   a,$09
019b: 3e 09        ld   a,$09
019d: 3e 09        ld   a,$09
019f: fd 09        add  iy,bc
01a1: fd 09        add  iy,bc
01a3: 63           ld   h,e
01a4: 32 00 44     ld   ($4400),a
01a7: a7           and  a
01a8: 09           add  hl,bc
01a9: ab           xor  e
01aa: 09           add  hl,bc
01ab: af           xor  a
01ac: 09           add  hl,bc
01ad: fd 09        add  iy,bc
01af: fd 09        add  iy,bc
01b1: fd 09        add  iy,bc
01b3: fd 09        add  iy,bc
01b5: fd 09        add  iy,bc
01b7: 46           ld   b,(hl)
01b8: 92           sub  d
01b9: 54           ld   d,h
01ba: 92           sub  d
01bb: 62           ld   h,d
01bc: 92           sub  d
01bd: fd 09        add  iy,bc
01bf: fd 09        add  iy,bc
01c1: fd 09        add  iy,bc
01c3: fd 09        add  iy,bc
01c5: fd 09        add  iy,bc
01c7: fd 09        add  iy,bc
01c9: fd 09        add  iy,bc
01cb: fd 09        add  iy,bc
01cd: c4 09 e7     call nz,$E709
01d0: 09           add  hl,bc
01d1: fd 09        add  iy,bc
01d3: fd 09        add  iy,bc
01d5: fd 09        add  iy,bc
01d7: fd 09        add  iy,bc
01d9: fd 09        add  iy,bc
01db: fd 09        add  iy,bc
01dd: fd 09        add  iy,bc
01df: fd 09        add  iy,bc
01e1: fd 09        add  iy,bc
01e3: fd 09        add  iy,bc
01e5: fd 09        add  iy,bc
01e7: fd 09        add  iy,bc
01e9: fd 09        add  iy,bc
01eb: fd 09        add  iy,bc
01ed: fd 09        add  iy,bc
01ef: fd 09        add  iy,bc
01f1: fd 09        add  iy,bc
01f3: fd 09        add  iy,bc
01f5: fd 09        add  iy,bc
01f7: fd 09        add  iy,bc
01f9: fd 09        add  iy,bc
01fb: fd 09        add  iy,bc
01fd: fd 09        add  iy,bc
01ff: fd 09        add  iy,bc
0201: fd 09        add  iy,bc
0203: fd 09        add  iy,bc
0205: fd 09        add  iy,bc
0207: fd 09        add  iy,bc
0209: fd 09        add  iy,bc
020b: fd 09        add  iy,bc
020d: fd 09        add  iy,bc
020f: fd 09        add  iy,bc
0211: fd 09        add  iy,bc
0213: fd 09        add  iy,bc
0215: fd 09        add  iy,bc
0217: 7f           ld   a,a
0218: 32 a6 02     ld   ($02A6),a
021b: 01 06 00     ld   bc,$0006
021e: cd a7 02     call $02A7
0221: 3a 81 0a     ld   a,($0A81)
0224: fe 05        cp   $05
0226: 30 7d        jr   nc,$02A5
0228: fe 03        cp   $03
022a: 20 07        jr   nz,$0233
022c: 3e fe        ld   a,$FE
022e: 32 7f 0a     ld   ($0A7F),a
0231: 18 30        jr   $0263
0233: fe 01        cp   $01
0235: 20 07        jr   nz,$023E
0237: 3e ff        ld   a,$FF
0239: 32 7f 0a     ld   ($0A7F),a
023c: 18 25        jr   $0263
023e: fe 00        cp   $00
0240: 28 21        jr   z,$0263
0242: 3a 65 f0     ld   a,($F065)
0245: 4f           ld   c,a
0246: 06 00        ld   b,$00
0248: cd 9b f3     call $F39B
024b: 11 70 fd     ld   de,$FD70
024e: 2a 84 0a     ld   hl,($0A84)
0251: 3a 81 0a     ld   a,($0A81)
0254: fe 04        cp   $04
0256: 20 05        jr   nz,$025D
0258: 01 00 01     ld   bc,$0100
025b: 18 03        jr   $0260
025d: 01 00 02     ld   bc,$0200
0260: cd a5 f3     call $F3A5
0263: ed 4b 80 0a  ld   bc,($0A80)
0267: ed 5b 82 0a  ld   de,($0A82)
026b: 21 70 fd     ld   hl,$FD70
026e: 3a a6 02     ld   a,($02A6)
0271: cd f9 94     call $94F9
0274: b7           or   a
0275: c2 a5 02     jp   nz,$02A5
0278: 3a 7f 0a     ld   a,($0A7F)
027b: b7           or   a
027c: ca a5 02     jp   z,$02A5
027f: 3a 65 f0     ld   a,($F065)
0282: 47           ld   b,a
0283: 0e 00        ld   c,$00
0285: cd 9b f3     call $F39B
0288: ed 5b 84 0a  ld   de,($0A84)
028c: 21 70 fd     ld   hl,$FD70
028f: 3a 7f 0a     ld   a,($0A7F)
0292: fe ff        cp   $FF
0294: 28 05        jr   z,$029B
0296: 01 00 01     ld   bc,$0100
0299: 18 03        jr   $029E
029b: 01 00 02     ld   bc,$0200
029e: cd a5 f3     call $F3A5
02a1: af           xor  a
02a2: 32 7f 0a     ld   ($0A7F),a
02a5: c9           ret
02a6: 00           nop
02a7: c5           push bc
02a8: 3a 65 f0     ld   a,($F065)
02ab: 4f           ld   c,a
02ac: 06 00        ld   b,$00
02ae: cd 9b f3     call $F39B
02b1: 21 80 0a     ld   hl,$0A80
02b4: eb           ex   de,hl
02b5: c1           pop  bc
02b6: cd a5 f3     call $F3A5
02b9: c9           ret
02ba: fe 03        cp   $03
02bc: 38 15        jr   c,$02D3
02be: fe 06        cp   $06
02c0: 30 11        jr   nc,$02D3
02c2: f5           push af
02c3: 78           ld   a,b
02c4: fe 10        cp   $10
02c6: 30 0a        jr   nc,$02D2
02c8: 3e 01        ld   a,$01
02ca: 32 d6 02     ld   ($02D6),a
02cd: f1           pop  af
02ce: cd 9e 90     call $909E
02d1: c9           ret
02d2: f1           pop  af
02d3: 3e ff        ld   a,$FF
02d5: c9           ret
02d6: 00           nop
02d7: 11 1f f6     ld   de,$F61F
02da: c9           ret
02db: d5           push de
02dc: 3a 65 f0     ld   a,($F065)
02df: 4f           ld   c,a
02e0: 06 00        ld   b,$00
02e2: cd 9b f3     call $F39B
02e5: e1           pop  hl
02e6: 11 95 f6     ld   de,$F695
02e9: 01 1b 00     ld   bc,$001B
02ec: cd a5 f3     call $F3A5
02ef: c9           ret
02f0: 3a 65 f0     ld   a,($F065)
02f3: 47           ld   b,a
02f4: 0e 00        ld   c,$00
02f6: cd 9b f3     call $F39B
02f9: 21 0a 27     ld   hl,$270A
02fc: 01 80 00     ld   bc,$0080
02ff: cd a5 f3     call $F3A5
0302: c9           ret
0303: 3a 3c 27     ld   a,($273C)
0306: 32 1d 0b     ld   ($0B1D),a
0309: 3a 35 27     ld   a,($2735)
030c: 32 1c 0b     ld   ($0B1C),a
030f: 3a 65 f0     ld   a,($F065)
0312: 4f           ld   c,a
0313: 06 00        ld   b,$00
0315: cd 9b f3     call $F39B
0318: 21 19 00     ld   hl,$0019
031b: 19           add  hl,de
031c: 11 23 27     ld   de,$2723
031f: 01 67 00     ld   bc,$0067
0322: cd a5 f3     call $F3A5
0325: 3a 1d 0b     ld   a,($0B1D)
0328: 32 3c 27     ld   ($273C),a
032b: 3a 34 27     ld   a,($2734)
032e: cd 32 06     call $0632
0331: 3a 1c 0b     ld   a,($0B1C)
0334: 47           ld   b,a
0335: 3a 35 27     ld   a,($2735)
0338: b8           cp   b
0339: 28 3c        jr   z,$0377
033b: b7           or   a
033c: 28 05        jr   z,$0343
033e: cd 12 f7     call $F712
0341: 18 34        jr   $0377
0343: 3a 65 9b     ld   a,($9B65)
0346: b7           or   a
0347: 28 2e        jr   z,$0377
0349: 21 a3 0a     ld   hl,$0AA3
034c: 3e 0b        ld   a,$0B
034e: 0e 00        ld   c,$00
0350: cd ec 12     call $12EC
0353: cd 6a 16     call $166A
0356: cd 69 12     call $1269
0359: f5           push af
035a: 3e 01        ld   a,$01
035c: cd ef 12     call $12EF
035f: f1           pop  af
0360: e6 df        and  $DF
0362: fe 41        cp   $41
0364: ca 72 03     jp   z,$0372
0367: fe 43        cp   $43
0369: c2 43 03     jp   nz,$0343
036c: af           xor  a
036d: 32 65 9b     ld   ($9B65),a
0370: 18 05        jr   $0377
0372: 3e 01        ld   a,$01
0374: 32 35 27     ld   ($2735),a
0377: cd 4f f3     call $F34F
037a: 32 2a 27     ld   ($272A),a
037d: 06 44        ld   b,$44
037f: 21 d4 38     ld   hl,$38D4
0382: 3a 27 27     ld   a,($2727)
0385: b7           or   a
0386: 20 02        jr   nz,$038A
0388: 06 64        ld   b,$64
038a: 70           ld   (hl),b
038b: cd dd 12     call $12DD
038e: 06 05        ld   b,$05
0390: 21 1e 98     ld   hl,$981E
0393: 3a 23 27     ld   a,($2723)
0396: b7           or   a
0397: 20 02        jr   nz,$039B
0399: 06 01        ld   b,$01
039b: 70           ld   (hl),b
039c: cd d6 13     call $13D6
039f: cd bd 14     call $14BD
03a2: 3e ff        ld   a,$FF
03a4: 32 59 12     ld   ($1259),a
03a7: 3a 25 27     ld   a,($2725)
03aa: b7           or   a
03ab: 20 0a        jr   nz,$03B7
03ad: 3e 34        ld   a,$34
03af: 0e 40        ld   c,$40
03b1: 21 94 0a     ld   hl,$0A94
03b4: cd ec 12     call $12EC
03b7: c9           ret
03b8: 3a 3d 27     ld   a,($273D)
03bb: f5           push af
03bc: af           xor  a
03bd: 32 3d 27     ld   ($273D),a
03c0: 3a 3c 27     ld   a,($273C)
03c3: b7           or   a
03c4: 20 0f        jr   nz,$03D5
03c6: 11 00 01     ld   de,$0100
03c9: 01 00 04     ld   bc,$0400
03cc: 21 0a 27     ld   hl,$270A
03cf: af           xor  a
03d0: cd f9 94     call $94F9
03d3: 18 17        jr   $03EC
03d5: af           xor  a
03d6: 21 01 00     ld   hl,$0001
03d9: cd 48 98     call $9848
03dc: eb           ex   de,hl
03dd: 21 0a 27     ld   hl,$270A
03e0: 01 80 00     ld   bc,$0080
03e3: ed b0        ldir
03e5: af           xor  a
03e6: 21 01 00     ld   hl,$0001
03e9: cd 59 98     call $9859
03ec: f1           pop  af
03ed: 32 3d 27     ld   ($273D),a
03f0: af           xor  a
03f1: c9           ret
03f2: d5           push de
03f3: 21 dc f7     ld   hl,$F7DC
03f6: cd f9 11     call $11F9
03f9: 3a 65 f0     ld   a,($F065)
03fc: 47           ld   b,a
03fd: 0e 00        ld   c,$00
03ff: cd 9b f3     call $F39B
0402: d1           pop  de
0403: 21 dc f7     ld   hl,$F7DC
0406: 01 07 00     ld   bc,$0007
0409: cd a5 f3     call $F3A5
040c: c9           ret
040d: 3a 65 f0     ld   a,($F065)
0410: 4f           ld   c,a
0411: 06 00        ld   b,$00
0413: cd 9b f3     call $F39B
0416: 21 dc f7     ld   hl,$F7DC
0419: eb           ex   de,hl
041a: 01 07 00     ld   bc,$0007
041d: cd a5 f3     call $F3A5
0420: 21 dc f7     ld   hl,$F7DC
0423: c3 07 12     jp   $1207
0426: 16 42        ld   d,$42
0428: 1e 32        ld   e,$32
042a: 26 32        ld   h,$32
042c: 2e 37        ld   l,$37
042e: c9           ret
042f: 3a 65 f0     ld   a,($F065)
0432: 4f           ld   c,a
0433: 06 00        ld   b,$00
0435: cd 9b f3     call $F39B
0438: 11 dc f7     ld   de,$F7DC
043b: 01 50 00     ld   bc,$0050
043e: cd a5 f3     call $F3A5
0441: 21 dc f7     ld   hl,$F7DC
0444: 3e 03        ld   a,$03
0446: 0e 00        ld   c,$00
0448: cd ec 12     call $12EC
044b: cd 6a 16     call $166A
044e: cd 69 12     call $1269
0451: f5           push af
0452: 3e 01        ld   a,$01
0454: cd ef 12     call $12EF
0457: f1           pop  af
0458: c9           ret
0459: 3a 14 98     ld   a,($9814)
045c: c9           ret
045d: 3a 65 f0     ld   a,($F065)
0460: 4f           ld   c,a
0461: 06 00        ld   b,$00
0463: cd 9b f3     call $F39B
0466: 21 00 d2     ld   hl,$D200
0469: eb           ex   de,hl
046a: ed 4b 79 0a  ld   bc,($0A79)
046e: cd a5 f3     call $F3A5
0471: c9           ret
0472: 32 9a 4f     ld   ($4F9A),a
0475: cd 59 40     call $4059
0478: c9           ret
0479: af           xor  a
047a: 32 3f 27     ld   ($273F),a
047d: f5           push af
047e: 3a 3c 27     ld   a,($273C)
0481: b7           or   a
0482: 20 0f        jr   nz,$0493
0484: f1           pop  af
0485: 06 0c        ld   b,$0C
0487: 21 00 d2     ld   hl,$D200
048a: 11 14 01     ld   de,$0114
048d: cd fe 09     call $09FE
0490: f5           push af
0491: 18 13        jr   $04A6
0493: f1           pop  af
0494: 06 06        ld   b,$06
0496: 11 00 d2     ld   de,$D200
0499: 21 01 00     ld   hl,$0001
049c: b7           or   a
049d: 3e 0a        ld   a,$0A
049f: c2 36 0a     jp   nz,$0A36
04a2: cd 22 0a     call $0A22
04a5: f5           push af
04a6: 21 11 5b     ld   hl,$5B11
04a9: 36 00        ld   (hl),$00
04ab: 11 12 5b     ld   de,$5B12
04ae: 01 ff 01     ld   bc,$01FF
04b1: ed b0        ldir
04b3: f1           pop  af
04b4: c9           ret
04b5: 3e 01        ld   a,$01
04b7: 18 c4        jr   $047D
04b9: 3a 9a 4f     ld   a,($4F9A)
04bc: 32 cf 04     ld   ($04CF),a
04bf: c9           ret
04c0: 3a cf 04     ld   a,($04CF)
04c3: fe ff        cp   $FF
04c5: c8           ret  z
04c6: 32 9a 4f     ld   ($4F9A),a
04c9: 3e ff        ld   a,$FF
04cb: 32 cf 04     ld   ($04CF),a
04ce: c9           ret
04cf: ff           rst  $38
04d0: f5           push af
04d1: 3e 01        ld   a,$01
04d3: 32 3f 27     ld   ($273F),a
04d6: 3a 3c 27     ld   a,($273C)
04d9: b7           or   a
04da: 20 12        jr   nz,$04EE
04dc: f1           pop  af
04dd: f5           push af
04de: 06 08        ld   b,$08
04e0: 11 09 00     ld   de,$0009
04e3: 21 00 d2     ld   hl,$D200
04e6: cd fe 09     call $09FE
04e9: f1           pop  af
04ea: b7           or   a
04eb: c0           ret  nz
04ec: 18 50        jr   $053E
04ee: 3e 04        ld   a,$04
04f0: 21 00 00     ld   hl,$0000
04f3: cd 48 98     call $9848
04f6: 24           inc  h
04f7: 11 00 d2     ld   de,$D200
04fa: 01 00 01     ld   bc,$0100
04fd: f1           pop  af
04fe: b7           or   a
04ff: 28 31        jr   z,$0532
0501: eb           ex   de,hl
0502: ed b0        ldir
0504: 3e 04        ld   a,$04
0506: 21 00 00     ld   hl,$0000
0509: cd 59 98     call $9859
050c: 06 03        ld   b,$03
050e: 3e 05        ld   a,$05
0510: 11 00 d3     ld   de,$D300
0513: 21 00 00     ld   hl,$0000
0516: cd 36 0a     call $0A36
0519: 3e 08        ld   a,$08
051b: 21 00 00     ld   hl,$0000
051e: cd 48 98     call $9848
0521: 21 bc d4     ld   hl,$D4BC
0524: 01 00 01     ld   bc,$0100
0527: ed b0        ldir
0529: 3e 08        ld   a,$08
052b: 21 00 00     ld   hl,$0000
052e: cd 59 98     call $9859
0531: c9           ret
0532: ed b0        ldir
0534: 06 04        ld   b,$04
0536: 3e 05        ld   a,$05
0538: 21 00 00     ld   hl,$0000
053b: cd 22 0a     call $0A22
053e: 3a 9a 4f     ld   a,($4F9A)
0541: fe 04        cp   $04
0543: 38 04        jr   c,$0549
0545: af           xor  a
0546: 32 9a 4f     ld   ($4F9A),a
0549: cd 59 40     call $4059
054c: c9           ret
054d: 3a 65 f0     ld   a,($F065)
0550: 47           ld   b,a
0551: 0e 00        ld   c,$00
0553: cd 9b f3     call $F39B
0556: 21 00 bc     ld   hl,$BC00
0559: 01 00 03     ld   bc,$0300
055c: cd a5 f3     call $F3A5
055f: c9           ret
0560: 3a 65 f0     ld   a,($F065)
0563: 4f           ld   c,a
0564: 06 00        ld   b,$00
0566: cd 9b f3     call $F39B
0569: eb           ex   de,hl
056a: 11 00 bc     ld   de,$BC00
056d: 01 00 03     ld   bc,$0300
0570: cd a5 f3     call $F3A5
0573: c9           ret
0574: 01 00 03     ld   bc,$0300
0577: cd 9b f3     call $F39B
057a: 21 00 bc     ld   hl,$BC00
057d: 11 00 d5     ld   de,$D500
0580: 01 00 03     ld   bc,$0300
0583: cd a5 f3     call $F3A5
0586: 3e ff        ld   a,$FF
0588: 32 67 0a     ld   ($0A67),a
058b: c9           ret
058c: 3a 67 0a     ld   a,($0A67)
058f: b7           or   a
0590: c8           ret  z
0591: 01 03 00     ld   bc,$0003
0594: cd 9b f3     call $F39B
0597: 21 00 d5     ld   hl,$D500
059a: 11 00 bc     ld   de,$BC00
059d: 01 00 03     ld   bc,$0300
05a0: cd a5 f3     call $F3A5
05a3: c9           ret
05a4: cd b0 05     call $05B0
05a7: 7e           ld   a,(hl)
05a8: c9           ret
05a9: f5           push af
05aa: cd b0 05     call $05B0
05ad: f1           pop  af
05ae: 77           ld   (hl),a
05af: c9           ret
05b0: d5           push de
05b1: 26 00        ld   h,$00
05b3: 6a           ld   l,d
05b4: 29           add  hl,hl
05b5: 11 69 0a     ld   de,$0A69
05b8: 19           add  hl,de
05b9: 7e           ld   a,(hl)
05ba: 23           inc  hl
05bb: 66           ld   h,(hl)
05bc: 6f           ld   l,a
05bd: d1           pop  de
05be: 16 00        ld   d,$00
05c0: 19           add  hl,de
05c1: c9           ret
05c2: af           xor  a
05c3: f5           push af
05c4: 3a 3c 27     ld   a,($273C)
05c7: b7           or   a
05c8: 20 0d        jr   nz,$05D7
05ca: f1           pop  af
05cb: 06 03        ld   b,$03
05cd: 21 00 bc     ld   hl,$BC00
05d0: 11 11 00     ld   de,$0011
05d3: cd fe 09     call $09FE
05d6: c9           ret
05d7: f1           pop  af
05d8: b7           or   a
05d9: 20 1c        jr   nz,$05F7
05db: 3e 08        ld   a,$08
05dd: 21 00 00     ld   hl,$0000
05e0: cd 48 98     call $9848
05e3: 24           inc  h
05e4: 11 00 bc     ld   de,$BC00
05e7: 01 00 01     ld   bc,$0100
05ea: ed b0        ldir
05ec: 06 01        ld   b,$01
05ee: 3e 09        ld   a,$09
05f0: 21 00 00     ld   hl,$0000
05f3: cd 22 0a     call $0A22
05f6: c9           ret
05f7: 3e 08        ld   a,$08
05f9: 21 00 00     ld   hl,$0000
05fc: cd 48 98     call $9848
05ff: 21 00 bc     ld   hl,$BC00
0602: 11 00 df     ld   de,$DF00
0605: 01 00 01     ld   bc,$0100
0608: ed b0        ldir
060a: e5           push hl
060b: 21 00 00     ld   hl,$0000
060e: 3e 08        ld   a,$08
0610: cd 59 98     call $9859
0613: e1           pop  hl
0614: 11 00 de     ld   de,$DE00
0617: 01 00 02     ld   bc,$0200
061a: ed b0        ldir
061c: 21 00 00     ld   hl,$0000
061f: 3e 09        ld   a,$09
0621: cd 59 98     call $9859
0624: c9           ret
0625: 3e 01        ld   a,$01
0627: 18 9a        jr   $05C3
0629: 32 8d 19     ld   ($198D),a
062c: c9           ret
062d: 32 31 06     ld   ($0631),a
0630: c9           ret
0631: 00           nop
0632: fe 03        cp   $03
0634: d0           ret  nc
0635: 32 34 27     ld   ($2734),a
0638: 87           add  a,a
0639: 87           add  a,a
063a: 21 55 0a     ld   hl,$0A55
063d: 5f           ld   e,a
063e: 16 00        ld   d,$00
0640: 19           add  hl,de
0641: 5e           ld   e,(hl)
0642: 23           inc  hl
0643: 56           ld   d,(hl)
0644: 23           inc  hl
0645: ed 53 51 0a  ld   ($0A51),de
0649: 5e           ld   e,(hl)
064a: 23           inc  hl
064b: 56           ld   d,(hl)
064c: ed 53 53 0a  ld   ($0A53),de
0650: af           xor  a
0651: c9           ret
0652: 2a 51 0a     ld   hl,($0A51)
0655: 22 61 0a     ld   ($0A61),hl
0658: 2a 53 0a     ld   hl,($0A53)
065b: 22 63 0a     ld   ($0A63),hl
065e: 2a 34 27     ld   hl,($2734)
0661: 22 65 0a     ld   ($0A65),hl
0664: c9           ret
0665: 2a 61 0a     ld   hl,($0A61)
0668: 7c           ld   a,h
0669: fe ff        cp   $FF
066b: c8           ret  z
066c: 22 51 0a     ld   ($0A51),hl
066f: 2a 63 0a     ld   hl,($0A63)
0672: 22 53 0a     ld   ($0A53),hl
0675: 2a 65 0a     ld   hl,($0A65)
0678: 22 34 27     ld   ($2734),hl
067b: c9           ret
067c: 3a 65 f0     ld   a,($F065)
067f: 47           ld   b,a
0680: 0e 00        ld   c,$00
0682: cd 9b f3     call $F39B
0685: 2a 51 0a     ld   hl,($0A51)
0688: 01 00 04     ld   bc,$0400
068b: cd a5 f3     call $F3A5
068e: c9           ret
068f: 3a 65 f0     ld   a,($F065)
0692: 4f           ld   c,a
0693: 06 00        ld   b,$00
0695: cd 9b f3     call $F39B
0698: eb           ex   de,hl
0699: ed 5b 51 0a  ld   de,($0A51)
069d: 01 00 04     ld   bc,$0400
06a0: cd a5 f3     call $F3A5
06a3: c9           ret
06a4: 01 00 03     ld   bc,$0300
06a7: cd 9b f3     call $F39B
06aa: 2a 51 0a     ld   hl,($0A51)
06ad: 11 00 d1     ld   de,$D100
06b0: 01 00 04     ld   bc,$0400
06b3: cd a5 f3     call $F3A5
06b6: 3e ff        ld   a,$FF
06b8: 32 68 0a     ld   ($0A68),a
06bb: c9           ret
06bc: 3a 68 0a     ld   a,($0A68)
06bf: b7           or   a
06c0: c8           ret  z
06c1: 01 03 00     ld   bc,$0003
06c4: cd 9b f3     call $F39B
06c7: 21 00 d1     ld   hl,$D100
06ca: ed 5b 51 0a  ld   de,($0A51)
06ce: 01 00 04     ld   bc,$0400
06d1: cd a5 f3     call $F3A5
06d4: c9           ret
06d5: cd fc 06     call $06FC
06d8: 3a 65 f0     ld   a,($F065)
06db: 47           ld   b,a
06dc: 0e 00        ld   c,$00
06de: cd 9b f3     call $F39B
06e1: 01 19 00     ld   bc,$0019
06e4: cd a5 f3     call $F3A5
06e7: c9           ret
06e8: cd fc 06     call $06FC
06eb: eb           ex   de,hl
06ec: 3a 65 f0     ld   a,($F065)
06ef: 4f           ld   c,a
06f0: 06 00        ld   b,$00
06f2: cd 9b f3     call $F39B
06f5: 01 19 00     ld   bc,$0019
06f8: cd a5 f3     call $F3A5
06fb: c9           ret
06fc: d5           push de
06fd: 87           add  a,a
06fe: 87           add  a,a
06ff: 5f           ld   e,a
0700: 16 00        ld   d,$00
0702: 21 51 0a     ld   hl,$0A51
0705: 7e           ld   a,(hl)
0706: 23           inc  hl
0707: 66           ld   h,(hl)
0708: 6f           ld   l,a
0709: 19           add  hl,de
070a: 23           inc  hl
070b: 23           inc  hl
070c: 5e           ld   e,(hl)
070d: 23           inc  hl
070e: 56           ld   d,(hl)
070f: 21 53 0a     ld   hl,$0A53
0712: 7e           ld   a,(hl)
0713: 23           inc  hl
0714: 66           ld   h,(hl)
0715: 6f           ld   l,a
0716: 19           add  hl,de
0717: d1           pop  de
0718: c9           ret
0719: cd 25 07     call $0725
071c: cb fe        set  7,(hl)
071e: c9           ret
071f: cd 25 07     call $0725
0722: cb be        res  7,(hl)
0724: c9           ret
0725: 87           add  a,a
0726: 87           add  a,a
0727: 5f           ld   e,a
0728: 16 00        ld   d,$00
072a: 21 f5 18     ld   hl,$18F5
072d: 19           add  hl,de
072e: 23           inc  hl
072f: c9           ret
0730: af           xor  a
0731: f5           push af
0732: 3a 3c 27     ld   a,($273C)
0735: b7           or   a
0736: 20 0d        jr   nz,$0745
0738: f1           pop  af
0739: 06 04        ld   b,$04
073b: 21 93 21     ld   hl,$2193
073e: 11 1c 00     ld   de,$001C
0741: cd fe 09     call $09FE
0744: c9           ret
0745: f1           pop  af
0746: 06 02        ld   b,$02
0748: 11 93 21     ld   de,$2193
074b: 21 00 00     ld   hl,$0000
074e: b7           or   a
074f: 3e 0e        ld   a,$0E
0751: c2 36 0a     jp   nz,$0A36
0754: c3 22 0a     jp   $0A22
0757: 3e 01        ld   a,$01
0759: 18 d6        jr   $0731
075b: 3e ff        ld   a,$FF
075d: 32 61 07     ld   ($0761),a
0760: c9           ret
0761: 00           nop
0762: 3a 61 07     ld   a,($0761)
0765: b7           or   a
0766: 28 09        jr   z,$0771
0768: cd 8c 05     call $058C
076b: cd bc 06     call $06BC
076e: cd 65 06     call $0665
0771: af           xor  a
0772: 32 61 07     ld   ($0761),a
0775: 32 67 0a     ld   ($0A67),a
0778: 32 68 0a     ld   ($0A68),a
077b: 32 31 06     ld   ($0631),a
077e: 32 8d 19     ld   ($198D),a
0781: 21 ff ff     ld   hl,$FFFF
0784: 22 61 0a     ld   ($0A61),hl
0787: c9           ret
0788: af           xor  a
0789: 32 61 07     ld   ($0761),a
078c: c9           ret
078d: 32 c9 07     ld   ($07C9),a
0790: fe 01        cp   $01
0792: c8           ret  z
0793: fe 02        cp   $02
0795: 38 2f        jr   c,$07C6
0797: fe 04        cp   $04
0799: 30 2b        jr   nc,$07C6
079b: 3a 35 27     ld   a,($2735)
079e: b7           or   a
079f: ca b4 07     jp   z,$07B4
07a2: 3a 65 9b     ld   a,($9B65)
07a5: b7           or   a
07a6: 28 03        jr   z,$07AB
07a8: 3e 02        ld   a,$02
07aa: c9           ret
07ab: af           xor  a
07ac: 32 35 27     ld   ($2735),a
07af: 3e ff        ld   a,$FF
07b1: 32 1e 0b     ld   ($0B1E),a
07b4: 3a c9 07     ld   a,($07C9)
07b7: fe 02        cp   $02
07b9: ca c1 07     jp   z,$07C1
07bc: 32 b7 f4     ld   ($F4B7),a
07bf: af           xor  a
07c0: c9           ret
07c1: 32 b6 f4     ld   ($F4B6),a
07c4: af           xor  a
07c5: c9           ret
07c6: 3e 01        ld   a,$01
07c8: c9           ret
07c9: 00           nop
07ca: fe 02        cp   $02
07cc: ca d8 07     jp   z,$07D8
07cf: fe 03        cp   $03
07d1: c0           ret  nz
07d2: 3e ff        ld   a,$FF
07d4: 32 b7 f4     ld   ($F4B7),a
07d7: c9           ret
07d8: 3e ff        ld   a,$FF
07da: 32 b6 f4     ld   ($F4B6),a
07dd: c9           ret
07de: 20 52        jr   nz,$0832
07e0: 41           ld   b,c
07e1: 4d           ld   c,l
07e2: 20 44        jr   nz,$0828
07e4: 49           ld   c,c
07e5: 53           ld   d,e
07e6: 4b           ld   c,e
07e7: 20 44        jr   nz,$082D
07e9: 41           ld   b,c
07ea: 54           ld   d,h
07eb: 41           ld   b,c
07ec: 20 57        jr   nz,$0845
07ee: 49           ld   c,c
07ef: 4c           ld   c,h
07f0: 4c           ld   c,h
07f1: 20 42        jr   nz,$0835
07f3: 45           ld   b,l
07f4: 20 4c        jr   nz,$0842
07f6: 4f           ld   c,a
07f7: 53           ld   d,e
07f8: 54           ld   d,h
07f9: 21 20 28     ld   hl,$2820
07fc: 41           ld   b,c
07fd: 29           add  hl,hl
07fe: 62           ld   h,d
07ff: 6f           ld   l,a
0800: 72           ld   (hl),d
0801: 74           ld   (hl),h
0802: 2f           cpl
0803: 28 43        jr   z,$0848
0805: 29           add  hl,hl
0806: 6f           ld   l,a
0807: 6e           ld   l,(hl)
0808: 74           ld   (hl),h
0809: 69           ld   l,c
080a: 6e           ld   l,(hl)
080b: 75           ld   (hl),l
080c: 65           ld   h,l
080d: 3a 00 01     ld   a,($0100)
0810: 08           ex   af,af'
0811: 00           nop
0812: cd a7 02     call $02A7
0815: 2a 84 0a     ld   hl,($0A84)
0818: ed 5b 86 0a  ld   de,($0A86)
081c: 19           add  hl,de
081d: 11 00 f0     ld   de,$F000
0820: b7           or   a
0821: ed 52        sbc  hl,de
0823: 30 27        jr   nc,$084C
0825: 3a 80 0a     ld   a,($0A80)
0828: b7           or   a
0829: fa 4c 08     jp   m,$084C
082c: fe 04        cp   $04
082e: d2 4c 08     jp   nc,$084C
0831: 3a 81 0a     ld   a,($0A81)
0834: a7           and  a
0835: ca 4f 08     jp   z,$084F
0838: fe 01        cp   $01
083a: ca 4f 08     jp   z,$084F
083d: 47           ld   b,a
083e: 3a b6 f4     ld   a,($F4B6)
0841: b8           cp   b
0842: ca 4f 08     jp   z,$084F
0845: 3a b7 f4     ld   a,($F4B7)
0848: b8           cp   b
0849: ca 4f 08     jp   z,$084F
084c: 3e 01        ld   a,$01
084e: c9           ret
084f: ed 4b 80 0a  ld   bc,($0A80)
0853: cd 9b f3     call $F39B
0856: 2a 82 0a     ld   hl,($0A82)
0859: ed 5b 84 0a  ld   de,($0A84)
085d: ed 4b 86 0a  ld   bc,($0A86)
0861: cd a5 f3     call $F3A5
0864: af           xor  a
0865: c9           ret
0866: 21 de 07     ld   hl,$07DE
0869: 3e 0b        ld   a,$0B
086b: 0e 00        ld   c,$00
086d: cd ec 12     call $12EC
0870: cd 6a 16     call $166A
0873: cd 69 12     call $1269
0876: e6 df        and  $DF
0878: fe 41        cp   $41
087a: ca 8a 08     jp   z,$088A
087d: fe 43        cp   $43
087f: c2 70 08     jp   nz,$0870
0882: 3e 01        ld   a,$01
0884: cd ef 12     call $12EF
0887: c3 ab 07     jp   $07AB
088a: 3e 01        ld   a,$01
088c: cd ef 12     call $12EF
088f: c3 62 00     jp   $0062
0892: b7           or   a
0893: ca ab 07     jp   z,$07AB
0896: c3 b4 07     jp   $07B4
0899: fe 12        cp   $12
089b: d0           ret  nc
089c: fe 04        cp   $04
089e: 28 3d        jr   z,$08DD
08a0: fe 07        cp   $07
08a2: 28 39        jr   z,$08DD
08a4: fe 0a        cp   $0A
08a6: 28 35        jr   z,$08DD
08a8: fe 0d        cp   $0D
08aa: 20 09        jr   nz,$08B5
08ac: 4f           ld   c,a
08ad: 3a f6 54     ld   a,($54F6)
08b0: fe 01        cp   $01
08b2: 79           ld   a,c
08b3: 28 28        jr   z,$08DD
08b5: f3           di
08b6: 68           ld   l,b
08b7: 4f           ld   c,a
08b8: 81           add  a,c
08b9: 81           add  a,c
08ba: 4f           ld   c,a
08bb: 06 00        ld   b,$00
08bd: 3a e9 08     ld   a,($08E9)
08c0: b7           or   a
08c1: 7d           ld   a,l
08c2: 28 0d        jr   z,$08D1
08c4: af           xor  a
08c5: 32 e9 08     ld   ($08E9),a
08c8: 21 93 25     ld   hl,$2593
08cb: 09           add  hl,bc
08cc: 5e           ld   e,(hl)
08cd: 23           inc  hl
08ce: 56           ld   d,(hl)
08cf: 23           inc  hl
08d0: 7e           ld   a,(hl)
08d1: 21 7c f5     ld   hl,$F57C
08d4: 09           add  hl,bc
08d5: 73           ld   (hl),e
08d6: 23           inc  hl
08d7: 72           ld   (hl),d
08d8: 23           inc  hl
08d9: 77           ld   (hl),a
08da: af           xor  a
08db: fb           ei
08dc: c9           ret
08dd: 3e ff        ld   a,$FF
08df: c9           ret
08e0: f5           push af
08e1: 3e 01        ld   a,$01
08e3: 32 e9 08     ld   ($08E9),a
08e6: f1           pop  af
08e7: 18 b0        jr   $0899
08e9: 00           nop
08ea: 3a e1 26     ld   a,($26E1)
08ed: 2f           cpl
08ee: 5f           ld   e,a
08ef: 3a e2 26     ld   a,($26E2)
08f2: 2f           cpl
08f3: 57           ld   d,a
08f4: c9           ret
08f5: 7b           ld   a,e
08f6: e6 6f        and  $6F
08f8: 47           ld   b,a
08f9: 3a e1 26     ld   a,($26E1)
08fc: 2f           cpl
08fd: b0           or   b
08fe: 2f           cpl
08ff: 32 e1 26     ld   ($26E1),a
0902: cd aa 26     call $26AA
0905: 7a           ld   a,d
0906: e6 fb        and  $FB
0908: 47           ld   b,a
0909: 3a e2 26     ld   a,($26E2)
090c: 2f           cpl
090d: b0           or   b
090e: 2f           cpl
090f: 32 e2 26     ld   ($26E2),a
0912: cd b0 26     call $26B0
0915: c9           ret
0916: 7b           ld   a,e
0917: e6 6f        and  $6F
0919: 47           ld   b,a
091a: 3a e1 26     ld   a,($26E1)
091d: b0           or   b
091e: 32 e1 26     ld   ($26E1),a
0921: cd aa 26     call $26AA
0924: 3a f6 54     ld   a,($54F6)
0927: fe 01        cp   $01
0929: 7a           ld   a,d
092a: 28 04        jr   z,$0930
092c: e6 fb        and  $FB
092e: 18 02        jr   $0932
0930: e6 db        and  $DB
0932: 47           ld   b,a
0933: 3a e2 26     ld   a,($26E2)
0936: b0           or   b
0937: 32 e2 26     ld   ($26E2),a
093a: cd b0 26     call $26B0
093d: c9           ret
093e: af           xor  a
093f: cd 27 f3     call $F327
0942: 21 59 09     ld   hl,$0959
0945: 3e 0a        ld   a,$0A
0947: 0e 00        ld   c,$00
0949: cd ec 12     call $12EC
094c: cd 6a 16     call $166A
094f: cd 69 12     call $1269
0952: af           xor  a
0953: cd ef 12     call $12EF
0956: c3 62 00     jp   $0062
0959: 20 50        jr   nz,$09AB
095b: 52           ld   d,d
095c: 4f           ld   c,a
095d: 47           ld   b,a
095e: 52           ld   d,d
095f: 41           ld   b,c
0960: 4d           ld   c,l
0961: 20 56        jr   nz,$09B9
0963: 45           ld   b,l
0964: 52           ld   d,d
0965: 53           ld   d,e
0966: 49           ld   c,c
0967: 4f           ld   c,a
0968: 4e           ld   c,(hl)
0969: 20 4e        jr   nz,$09B9
096b: 4f           ld   c,a
096c: 54           ld   d,h
096d: 20 53        jr   nz,$09C2
096f: 55           ld   d,l
0970: 50           ld   d,b
0971: 50           ld   d,b
0972: 4f           ld   c,a
0973: 52           ld   d,d
0974: 54           ld   d,h
0975: 45           ld   b,l
0976: 44           ld   b,h
0977: 20 42        jr   nz,$09BB
0979: 59           ld   e,c
097a: 20 54        jr   nz,$09D0
097c: 48           ld   c,b
097d: 49           ld   c,c
097e: 53           ld   d,e
097f: 20 42        jr   nz,$09C3
0981: 49           ld   c,c
0982: 4f           ld   c,a
0983: 53           ld   d,e
0984: 20 52        jr   nz,$09D8
0986: 45           ld   b,l
0987: 4c           ld   c,h
0988: 45           ld   b,l
0989: 41           ld   b,c
098a: 53           ld   d,e
098b: 45           ld   b,l
098c: 2e 20        ld   l,$20
098e: 20 50        jr   nz,$09E0
0990: 52           ld   d,d
0991: 45           ld   b,l
0992: 53           ld   d,e
0993: 53           ld   d,e
0994: 20 41        jr   nz,$09D7
0996: 4e           ld   c,(hl)
0997: 59           ld   e,c
0998: 20 4b        jr   nz,$09E5
099a: 45           ld   b,l
099b: 59           ld   e,c
099c: 20 54        jr   nz,$09F2
099e: 4f           ld   c,a
099f: 20 41        jr   nz,$09E2
09a1: 42           ld   b,d
09a2: 4f           ld   c,a
09a3: 52           ld   d,d
09a4: 54           ld   d,h
09a5: 2e 00        ld   l,$00
09a7: 21 6b 4f     ld   hl,$4F6B
09aa: c9           ret
09ab: cd d6 00     call $00D6
09ae: c9           ret
09af: c5           push bc
09b0: 3a 65 f0     ld   a,($F065)
09b3: 4f           ld   c,a
09b4: 06 03        ld   b,$03
09b6: cd 9b f3     call $F39B
09b9: 11 07 d8     ld   de,$D807
09bc: c1           pop  bc
09bd: 48           ld   c,b
09be: 06 00        ld   b,$00
09c0: cd a5 f3     call $F3A5
09c3: c9           ret
09c4: f3           di
09c5: 3a e4 09     ld   a,($09E4)
09c8: b7           or   a
09c9: 20 14        jr   nz,$09DF
09cb: 21 d6 28     ld   hl,$28D6
09ce: 22 4f 26     ld   ($264F),hl
09d1: 2a 07 e2     ld   hl,($E207)
09d4: 22 e5 09     ld   ($09E5),hl
09d7: cd b4 f5     call $F5B4
09da: 3e ff        ld   a,$FF
09dc: 32 e4 09     ld   ($09E4),a
09df: 21 18 f6     ld   hl,$F618
09e2: fb           ei
09e3: c9           ret
09e4: 00           nop
09e5: 00           nop
09e6: 00           nop
09e7: f3           di
09e8: 21 69 26     ld   hl,$2669
09eb: 22 4f 26     ld   ($264F),hl
09ee: 2a e5 09     ld   hl,($09E5)
09f1: 22 07 e2     ld   ($E207),hl
09f4: af           xor  a
09f5: 32 e4 09     ld   ($09E4),a
09f8: 32 14 2b     ld   ($2B14),a
09fb: fb           ei
09fc: c9           ret
09fd: c9           ret
09fe: c5           push bc
09ff: b7           or   a
0a00: 28 05        jr   z,$0A07
0a02: 01 00 04     ld   bc,$0400
0a05: 18 03        jr   $0A0A
0a07: 01 00 03     ld   bc,$0300
0a0a: af           xor  a
0a0b: cd f9 94     call $94F9
0a0e: b7           or   a
0a0f: c0           ret  nz
0a10: 24           inc  h
0a11: 1c           inc  e
0a12: ed 43 7b 0a  ld   ($0A7B),bc
0a16: c1           pop  bc
0a17: 78           ld   a,b
0a18: 3d           dec  a
0a19: f5           push af
0a1a: ed 4b 7b 0a  ld   bc,($0A7B)
0a1e: 20 ea        jr   nz,$0A0A
0a20: c1           pop  bc
0a21: c9           ret
0a22: f5           push af
0a23: c5           push bc
0a24: e5           push hl
0a25: d5           push de
0a26: cd 48 98     call $9848
0a29: d1           pop  de
0a2a: 01 00 02     ld   bc,$0200
0a2d: ed b0        ldir
0a2f: e1           pop  hl
0a30: c1           pop  bc
0a31: f1           pop  af
0a32: 3c           inc  a
0a33: 10 ed        djnz $0A22
0a35: c9           ret
0a36: f5           push af
0a37: c5           push bc
0a38: e5           push hl
0a39: eb           ex   de,hl
0a3a: 11 00 de     ld   de,$DE00
0a3d: 01 00 02     ld   bc,$0200
0a40: ed b0        ldir
0a42: d1           pop  de
0a43: e5           push hl
0a44: eb           ex   de,hl
0a45: e5           push hl
0a46: cd 59 98     call $9859
0a49: e1           pop  hl
0a4a: d1           pop  de
0a4b: c1           pop  bc
0a4c: f1           pop  af
0a4d: 3c           inc  a
0a4e: 10 e6        djnz $0A36
0a50: c9           ret
0a51: 93           sub  e
0a52: 19           add  hl,de
0a53: 1f           rra
0a54: 1a           ld   a,(de)
0a55: 93           sub  e
0a56: 19           add  hl,de
0a57: 1f           rra
0a58: 1a           ld   a,(de)
0a59: 93           sub  e
0a5a: 1d           dec  e
0a5b: 1f           rra
0a5c: 1e 93        ld   e,$93
0a5e: 21 1f 22     ld   hl,$221F
0a61: ff           rst  $38
0a62: ff           rst  $38
0a63: ff           rst  $38
0a64: ff           rst  $38
0a65: ff           rst  $38
0a66: ff           rst  $38
0a67: 00           nop
0a68: 00           nop
0a69: 00           nop
0a6a: bc           cp   h
0a6b: 80           add  a,b
0a6c: bc           cp   h
0a6d: 00           nop
0a6e: bd           cp   l
0a6f: 80           add  a,b
0a70: bd           cp   l
0a71: 00           nop
0a72: be           cp   (hl)
0a73: 80           add  a,b
0a74: be           cp   (hl)
0a75: 00           nop
0a76: be           cp   (hl)
0a77: 80           add  a,b
0a78: be           cp   (hl)
0a79: 00           nop
0a7a: 0c           inc  c
0a7b: 00           nop
0a7c: 00           nop
0a7d: 00           nop
0a7e: 00           nop
0a7f: 00           nop
0a80: 00           nop
0a81: 00           nop
0a82: 00           nop
0a83: 00           nop
0a84: 00           nop
0a85: 00           nop
0a86: 00           nop
0a87: 00           nop
0a88: 00           nop
0a89: 00           nop
0a8a: 00           nop
0a8b: 00           nop
0a8c: 00           nop
0a8d: 00           nop
0a8e: 00           nop
0a8f: 00           nop
0a90: 00           nop
0a91: 00           nop
0a92: 00           nop
0a93: 00           nop
0a94: 20 20        jr   nz,$0AB6
0a96: 20 20        jr   nz,$0AB8
0a98: 20 20        jr   nz,$0ABA
0a9a: 20 20        jr   nz,$0ABC
0a9c: 20 20        jr   nz,$0ABE
0a9e: 20 20        jr   nz,$0AC0
0aa0: 20 20        jr   nz,$0AC2
0aa2: 00           nop
0aa3: 20 52        jr   nz,$0AF7
0aa5: 41           ld   b,c
0aa6: 4d           ld   c,l
0aa7: 20 44        jr   nz,$0AED
0aa9: 49           ld   c,c
0aaa: 53           ld   d,e
0aab: 4b           ld   c,e
0aac: 20 44        jr   nz,$0AF2
0aae: 41           ld   b,c
0aaf: 54           ld   d,h
0ab0: 41           ld   b,c
0ab1: 20 57        jr   nz,$0B0A
0ab3: 49           ld   c,c
0ab4: 4c           ld   c,h
0ab5: 4c           ld   c,h
0ab6: 20 42        jr   nz,$0AFA
0ab8: 45           ld   b,l
0ab9: 20 4c        jr   nz,$0B07
0abb: 4f           ld   c,a
0abc: 53           ld   d,e
0abd: 54           ld   d,h
0abe: 20 49        jr   nz,$0B09
0ac0: 46           ld   b,(hl)
0ac1: 20 44        jr   nz,$0B07
0ac3: 49           ld   c,c
0ac4: 53           ld   d,e
0ac5: 41           ld   b,c
0ac6: 42           ld   b,d
0ac7: 4c           ld   c,h
0ac8: 45           ld   b,l
0ac9: 44           ld   b,h
0aca: 21 20 28     ld   hl,$2820
0acd: 41           ld   b,c
0ace: 29           add  hl,hl
0acf: 62           ld   h,d
0ad0: 6f           ld   l,a
0ad1: 72           ld   (hl),d
0ad2: 74           ld   (hl),h
0ad3: 2c           inc  l
0ad4: 20 28        jr   nz,$0AFE
0ad6: 43           ld   b,e
0ad7: 29           add  hl,hl
0ad8: 6f           ld   l,a
0ad9: 6e           ld   l,(hl)
0ada: 74           ld   (hl),h
0adb: 69           ld   l,c
0adc: 6e           ld   l,(hl)
0add: 75           ld   (hl),l
0ade: 65           ld   h,l
0adf: 3a 00 20     ld   a,($2000)
0ae2: 49           ld   c,c
0ae3: 4c           ld   c,h
0ae4: 4c           ld   c,h
0ae5: 45           ld   b,l
0ae6: 47           ld   b,a
0ae7: 41           ld   b,c
0ae8: 4c           ld   c,h
0ae9: 20 43        jr   nz,$0B2E
0aeb: 41           ld   b,c
0aec: 4c           ld   c,h
0aed: 4c           ld   c,h
0aee: 58           ld   e,b
0aef: 20 4f        jr   nz,$0B40
0af1: 52           ld   d,d
0af2: 20 4a        jr   nz,$0B3E
0af4: 55           ld   d,l
0af5: 4d           ld   c,l
0af6: 50           ld   d,b
0af7: 58           ld   e,b
0af8: 20 4f        jr   nz,$0B49
0afa: 50           ld   d,b
0afb: 45           ld   b,l
0afc: 52           ld   d,d
0afd: 41           ld   b,c
0afe: 54           ld   d,h
0aff: 49           ld   c,c
0b00: 4f           ld   c,a
0b01: 4e           ld   c,(hl)
0b02: 21 20 50     ld   hl,$5020
0b05: 52           ld   d,d
0b06: 45           ld   b,l
0b07: 53           ld   d,e
0b08: 53           ld   d,e
0b09: 20 41        jr   nz,$0B4C
0b0b: 4e           ld   c,(hl)
0b0c: 59           ld   e,c
0b0d: 20 4b        jr   nz,$0B5A
0b0f: 45           ld   b,l
0b10: 59           ld   e,c
0b11: 20 54        jr   nz,$0B67
0b13: 4f           ld   c,a
0b14: 20 41        jr   nz,$0B57
0b16: 42           ld   b,d
0b17: 4f           ld   c,a
0b18: 52           ld   d,d
0b19: 54           ld   d,h
0b1a: 2e 00        ld   l,$00
0b1c: 00           nop
0b1d: 00           nop
0b1e: 00           nop
0b1f: eb           ex   de,hl
0b20: c3 e6 12     jp   $12E6
0b23: 78           ld   a,b
0b24: 42           ld   b,d
0b25: 4b           ld   c,e
0b26: 3d           dec  a
0b27: 28 1d        jr   z,$0B46
0b29: 3d           dec  a
0b2a: c0           ret  nz
0b2b: c5           push bc
0b2c: cd e3 12     call $12E3
0b2f: c1           pop  bc
0b30: e5           push hl
0b31: c5           push bc
0b32: cd 77 12     call $1277
0b35: c1           pop  bc
0b36: e1           pop  hl
0b37: 24           inc  h
0b38: 7c           ld   a,h
0b39: fe 19        cp   $19
0b3b: d0           ret  nc
0b3c: e5           push hl
0b3d: c5           push bc
0b3e: cd e6 12     call $12E6
0b41: c1           pop  bc
0b42: e1           pop  hl
0b43: 10 eb        djnz $0B30
0b45: c9           ret
0b46: c5           push bc
0b47: cd 77 12     call $1277
0b4a: c1           pop  bc
0b4b: 10 f9        djnz $0B46
0b4d: c9           ret
0b4e: f5           push af
0b4f: c5           push bc
0b50: d5           push de
0b51: e5           push hl
0b52: dd e5        push ix
0b54: fd e5        push iy
0b56: 21 66 f0     ld   hl,$F066
0b59: cb 8e        res  1,(hl)
0b5b: cb 56        bit  2,(hl)
0b5d: 20 35        jr   nz,$0B94
0b5f: cb d6        set  2,(hl)
0b61: cd a2 0b     call $0BA2
0b64: 0e 1a        ld   c,$1A
0b66: cd d7 12     call $12D7
0b69: 21 00 00     ld   hl,$0000
0b6c: dd 21 cd 10  ld   ix,$10CD
0b70: cd 61 0d     call $0D61
0b73: e5           push hl
0b74: dd e5        push ix
0b76: cd 1d 0d     call $0D1D
0b79: dd e1        pop  ix
0b7b: e1           pop  hl
0b7c: cd 61 0d     call $0D61
0b7f: cd c6 0b     call $0BC6
0b82: dd 21 d1 10  ld   ix,$10D1
0b86: 21 16 00     ld   hl,$0016
0b89: cd 61 0d     call $0D61
0b8c: 21 1a 02     ld   hl,$021A
0b8f: cd 61 0d     call $0D61
0b92: 18 05        jr   $0B99
0b94: cb 96        res  2,(hl)
0b96: cd b9 0b     call $0BB9
0b99: fd e1        pop  iy
0b9b: dd e1        pop  ix
0b9d: e1           pop  hl
0b9e: d1           pop  de
0b9f: c1           pop  bc
0ba0: f1           pop  af
0ba1: c9           ret
0ba2: 3a f7 54     ld   a,($54F7)
0ba5: 32 b7 0b     ld   ($0BB7),a
0ba8: 3a f6 54     ld   a,($54F6)
0bab: 32 b8 0b     ld   ($0BB8),a
0bae: 97           sub  a
0baf: 06 ff        ld   b,$FF
0bb1: 21 01 00     ld   hl,$0001
0bb4: c3 00 52     jp   $5200
0bb7: 00           nop
0bb8: 00           nop
0bb9: 3a b8 0b     ld   a,($0BB8)
0bbc: 67           ld   h,a
0bbd: 3a b7 0b     ld   a,($0BB7)
0bc0: 47           ld   b,a
0bc1: 97           sub  a
0bc2: 6f           ld   l,a
0bc3: c3 00 52     jp   $5200
0bc6: dd 21 91 0f  ld   ix,$0F91
0bca: dd 46 00     ld   b,(ix+$00)
0bcd: dd 23        inc  ix
0bcf: dd 5e 00     ld   e,(ix+$00)
0bd2: dd 23        inc  ix
0bd4: 04           inc  b
0bd5: c8           ret  z
0bd6: 05           dec  b
0bd7: 16 00        ld   d,$00
0bd9: 21 0a 27     ld   hl,$270A
0bdc: 19           add  hl,de
0bdd: 7e           ld   a,(hl)
0bde: eb           ex   de,hl
0bdf: dd 66 00     ld   h,(ix+$00)
0be2: dd 23        inc  ix
0be4: dd 6e 00     ld   l,(ix+$00)
0be7: dd 23        inc  ix
0be9: 05           dec  b
0bea: 28 05        jr   z,$0BF1
0bec: 05           dec  b
0bed: 28 07        jr   z,$0BF6
0bef: 18 0a        jr   $0BFB
0bf1: cd 4b 0c     call $0C4B
0bf4: 18 d4        jr   $0BCA
0bf6: cd 11 0c     call $0C11
0bf9: 18 cf        jr   $0BCA
0bfb: cd 00 0c     call $0C00
0bfe: 18 ca        jr   $0BCA
0c00: 05           dec  b
0c01: ca 9c 0c     jp   z,$0C9C
0c04: 05           dec  b
0c05: ca c5 0c     jp   z,$0CC5
0c08: 05           dec  b
0c09: ca 35 0c     jp   z,$0C35
0c0c: 05           dec  b
0c0d: ca 5e 0c     jp   z,$0C5E
0c10: c9           ret
0c11: 4f           ld   c,a
0c12: 0c           inc  c
0c13: 0d           dec  c
0c14: 28 0a        jr   z,$0C20
0c16: dd cb 00 7e  bit  7,(ix+$00)
0c1a: dd 23        inc  ix
0c1c: 28 f8        jr   z,$0C16
0c1e: 18 f3        jr   $0C13
0c20: cd 61 0d     call $0D61
0c23: dd 7e 00     ld   a,(ix+$00)
0c26: 3c           inc  a
0c27: c8           ret  z
0c28: fe 20        cp   $20
0c2a: d8           ret  c
0c2b: dd cb 00 7e  bit  7,(ix+$00)
0c2f: dd 23        inc  ix
0c31: 28 f8        jr   z,$0C2B
0c33: 18 ee        jr   $0C23
0c35: 3a 64 f0     ld   a,($F064)
0c38: e6 c0        and  $C0
0c3a: 4f           ld   c,a
0c3b: fe 80        cp   $80
0c3d: 3e 00        ld   a,$00
0c3f: 28 d0        jr   z,$0C11
0c41: 79           ld   a,c
0c42: fe c0        cp   $C0
0c44: 3e 01        ld   a,$01
0c46: 28 c9        jr   z,$0C11
0c48: 3c           inc  a
0c49: 18 c6        jr   $0C11
0c4b: dd e5        push ix
0c4d: dd 21 18 0d  ld   ix,$0D18
0c51: a7           and  a
0c52: 20 04        jr   nz,$0C58
0c54: dd 21 1a 0d  ld   ix,$0D1A
0c58: cd 61 0d     call $0D61
0c5b: dd e1        pop  ix
0c5d: c9           ret
0c5e: dd e5        push ix
0c60: fd e5        push iy
0c62: e5           push hl
0c63: d5           push de
0c64: cd e6 12     call $12E6
0c67: cd 75 f3     call $F375
0c6a: f5           push af
0c6b: e6 0f        and  $0F
0c6d: c6 41        add  a,$41
0c6f: 4f           ld   c,a
0c70: cd d7 12     call $12D7
0c73: 0e 3a        ld   c,$3A
0c75: cd d7 12     call $12D7
0c78: f1           pop  af
0c79: cb 3f        srl  a
0c7b: cb 3f        srl  a
0c7d: cb 3f        srl  a
0c7f: cb 3f        srl  a
0c81: fe 0a        cp   $0A
0c83: 0e 30        ld   c,$30
0c85: 38 03        jr   c,$0C8A
0c87: 0c           inc  c
0c88: d6 0a        sub  $0A
0c8a: f5           push af
0c8b: cd d7 12     call $12D7
0c8e: f1           pop  af
0c8f: c6 30        add  a,$30
0c91: 4f           ld   c,a
0c92: cd d7 12     call $12D7
0c95: d1           pop  de
0c96: e1           pop  hl
0c97: fd e1        pop  iy
0c99: dd e1        pop  ix
0c9b: c9           ret
0c9c: 47           ld   b,a
0c9d: dd e5        push ix
0c9f: d5           push de
0ca0: c5           push bc
0ca1: 7d           ld   a,l
0ca2: c6 04        add  a,$04
0ca4: 6f           ld   l,a
0ca5: cd e6 12     call $12E6
0ca8: 0e 3e        ld   c,$3E
0caa: cd d7 12     call $12D7
0cad: c1           pop  bc
0cae: d1           pop  de
0caf: dd e1        pop  ix
0cb1: 13           inc  de
0cb2: eb           ex   de,hl
0cb3: 04           inc  b
0cb4: 05           dec  b
0cb5: c8           ret  z
0cb6: 4e           ld   c,(hl)
0cb7: 23           inc  hl
0cb8: e5           push hl
0cb9: c5           push bc
0cba: dd e5        push ix
0cbc: cd d7 12     call $12D7
0cbf: dd e1        pop  ix
0cc1: c1           pop  bc
0cc2: e1           pop  hl
0cc3: 18 ef        jr   $0CB4
0cc5: e5           push hl
0cc6: 21 13 0d     ld   hl,$0D13
0cc9: 06 05        ld   b,$05
0ccb: 36 ff        ld   (hl),$FF
0ccd: 23           inc  hl
0cce: 10 fb        djnz $0CCB
0cd0: 11 13 0d     ld   de,$0D13
0cd3: 0e 05        ld   c,$05
0cd5: 21 69 27     ld   hl,$2769
0cd8: 06 10        ld   b,$10
0cda: 79           ld   a,c
0cdb: be           cp   (hl)
0cdc: 2b           dec  hl
0cdd: 28 04        jr   z,$0CE3
0cdf: 10 fa        djnz $0CDB
0ce1: 18 03        jr   $0CE6
0ce3: 78           ld   a,b
0ce4: 3d           dec  a
0ce5: 12           ld   (de),a
0ce6: 13           inc  de
0ce7: 0d           dec  c
0ce8: 20 eb        jr   nz,$0CD5
0cea: e1           pop  hl
0ceb: 11 13 0d     ld   de,$0D13
0cee: 06 05        ld   b,$05
0cf0: dd e5        push ix
0cf2: e5           push hl
0cf3: d5           push de
0cf4: c5           push bc
0cf5: 1a           ld   a,(de)
0cf6: 3c           inc  a
0cf7: 28 10        jr   z,$0D09
0cf9: f5           push af
0cfa: cd e6 12     call $12E6
0cfd: f1           pop  af
0cfe: c6 40        add  a,$40
0d00: 4f           ld   c,a
0d01: cd d7 12     call $12D7
0d04: 0e 3a        ld   c,$3A
0d06: cd d7 12     call $12D7
0d09: c1           pop  bc
0d0a: d1           pop  de
0d0b: e1           pop  hl
0d0c: 25           dec  h
0d0d: 13           inc  de
0d0e: 10 e2        djnz $0CF2
0d10: dd e1        pop  ix
0d12: c9           ret
0d13: 63           ld   h,e
0d14: 63           ld   h,e
0d15: 63           ld   h,e
0d16: 63           ld   h,e
0d17: 63           ld   h,e
0d18: 4f           ld   c,a
0d19: ce 4f        adc  a,$4F
0d1b: 46           ld   b,(hl)
0d1c: c6 dd        add  a,$DD
0d1e: 21 d0 0d     ld   hl,$0DD0
0d21: dd 66 00     ld   h,(ix+$00)
0d24: dd 23        inc  ix
0d26: dd 6e 00     ld   l,(ix+$00)
0d29: dd 23        inc  ix
0d2b: dd 56 00     ld   d,(ix+$00)
0d2e: dd 23        inc  ix
0d30: dd 5e 00     ld   e,(ix+$00)
0d33: dd 23        inc  ix
0d35: e5           push hl
0d36: dd e5        push ix
0d38: cd 7f 0d     call $0D7F
0d3b: dd e1        pop  ix
0d3d: e1           pop  hl
0d3e: dd 6e 00     ld   l,(ix+$00)
0d41: dd 23        inc  ix
0d43: e5           push hl
0d44: dd 6e 00     ld   l,(ix+$00)
0d47: dd 23        inc  ix
0d49: 2c           inc  l
0d4a: 2d           dec  l
0d4b: 28 04        jr   z,$0D51
0d4d: 25           dec  h
0d4e: cd 61 0d     call $0D61
0d51: e1           pop  hl
0d52: dd 7e 00     ld   a,(ix+$00)
0d55: 3c           inc  a
0d56: c8           ret  z
0d57: fe 20        cp   $20
0d59: 38 c6        jr   c,$0D21
0d5b: 24           inc  h
0d5c: cd 61 0d     call $0D61
0d5f: 18 f1        jr   $0D52
0d61: e5           push hl
0d62: dd e5        push ix
0d64: cd e6 12     call $12E6
0d67: dd e1        pop  ix
0d69: dd 4e 00     ld   c,(ix+$00)
0d6c: dd 23        inc  ix
0d6e: dd e5        push ix
0d70: c5           push bc
0d71: cb b9        res  7,c
0d73: cd d7 12     call $12D7
0d76: c1           pop  bc
0d77: dd e1        pop  ix
0d79: cb 79        bit  7,c
0d7b: 28 ec        jr   z,$0D69
0d7d: e1           pop  hl
0d7e: c9           ret
0d7f: e5           push hl
0d80: cd c4 0d     call $0DC4
0d83: 0e dd        ld   c,$DD
0d85: cd ca 0d     call $0DCA
0d88: cd ba 0d     call $0DBA
0d8b: 0e fd        ld   c,$FD
0d8d: cd ca 0d     call $0DCA
0d90: 0e 08        ld   c,$08
0d92: cd ca 0d     call $0DCA
0d95: 0e 0a        ld   c,$0A
0d97: cd ca 0d     call $0DCA
0d9a: cd b2 0d     call $0DB2
0d9d: e1           pop  hl
0d9e: 24           inc  h
0d9f: cd c4 0d     call $0DC4
0da2: cd b2 0d     call $0DB2
0da5: 0e df        ld   c,$DF
0da7: cd ca 0d     call $0DCA
0daa: cd ba 0d     call $0DBA
0dad: 0e ff        ld   c,$FF
0daf: c3 ca 0d     jp   $0DCA
0db2: d5           push de
0db3: 53           ld   d,e
0db4: 1e e9        ld   e,$E9
0db6: 06 02        ld   b,$02
0db8: 18 05        jr   $0DBF
0dba: d5           push de
0dbb: 1e e8        ld   e,$E8
0dbd: 06 01        ld   b,$01
0dbf: cd 23 0b     call $0B23
0dc2: d1           pop  de
0dc3: c9           ret
0dc4: d5           push de
0dc5: cd e6 12     call $12E6
0dc8: d1           pop  de
0dc9: c9           ret
0dca: d5           push de
0dcb: cd d7 12     call $12D7
0dce: d1           pop  de
0dcf: c9           ret
0dd0: 05           dec  b
0dd1: 01 1e 01     ld   bc,$011E
0dd4: 07           rlca
0dd5: 08           ex   af,af'
0dd6: 41           ld   b,c
0dd7: 75           ld   (hl),l
0dd8: 74           ld   (hl),h
0dd9: 6f           ld   l,a
0dda: 20 42        jr   nz,$0E1E
0ddc: 6f           ld   l,a
0ddd: 6f           ld   l,a
0dde: 74           ld   (hl),h
0ddf: 20 43        jr   nz,$0E24
0de1: 6f           ld   l,a
0de2: 6d           ld   l,l
0de3: 6d           ld   l,l
0de4: 61           ld   h,c
0de5: 6e           ld   l,(hl)
0de6: e4 a0 0f     call po,$0FA0
0de9: 37           scf
0dea: 16 07        ld   d,$07
0dec: 42           ld   b,d
0ded: 3d           dec  a
0dee: 53           ld   d,e
0def: 65           ld   h,l
0df0: 72           ld   (hl),d
0df1: 69           ld   l,c
0df2: 61           ld   h,c
0df3: 6c           ld   l,h
0df4: 20 50        jr   nz,$0E46
0df6: 6f           ld   l,a
0df7: 72           ld   (hl),d
0df8: f4 50 72     call p,$7250
0dfb: 6f           ld   l,a
0dfc: 74           ld   (hl),h
0dfd: 6f           ld   l,a
0dfe: 63           ld   h,e
0dff: 6f           ld   l,a
0e00: ec 42 61     call pe,$6142
0e03: 75           ld   (hl),l
0e04: 64           ld   h,h
0e05: 20 52        jr   nz,$0E59
0e07: 61           ld   h,c
0e08: 74           ld   (hl),h
0e09: e5           push hl
0e0a: 50           ld   d,b
0e0b: 61           ld   h,c
0e0c: 72           ld   (hl),d
0e0d: 69           ld   l,c
0e0e: 74           ld   (hl),h
0e0f: f9           ld   sp,hl
0e10: 44           ld   b,h
0e11: 61           ld   h,c
0e12: 74           ld   (hl),h
0e13: 61           ld   h,c
0e14: 20 4c        jr   nz,$0E62
0e16: 65           ld   h,l
0e17: 6e           ld   l,(hl)
0e18: 67           ld   h,a
0e19: 74           ld   (hl),h
0e1a: e8           ret  pe
0e1b: 53           ld   d,e
0e1c: 74           ld   (hl),h
0e1d: 6f           ld   l,a
0e1e: 70           ld   (hl),b
0e1f: 20 42        jr   nz,$0E63
0e21: 69           ld   l,c
0e22: 74           ld   (hl),h
0e23: f3           di
0e24: 42           ld   b,d
0e25: 69           ld   l,c
0e26: 74           ld   (hl),h
0e27: 20 37        jr   nz,$0E60
0e29: 20 4d        jr   nz,$0E78
0e2b: 61           ld   h,c
0e2c: 73           ld   (hl),e
0e2d: eb           ex   de,hl
0e2e: 49           ld   c,c
0e2f: 6e           ld   l,(hl)
0e30: 74           ld   (hl),h
0e31: 65           ld   h,l
0e32: 72           ld   (hl),d
0e33: 72           ld   (hl),d
0e34: 75           ld   (hl),l
0e35: 70           ld   (hl),b
0e36: 74           ld   (hl),h
0e37: f3           di
0e38: 10 20        djnz $0E5A
0e3a: 12           ld   (de),a
0e3b: 06 25        ld   b,$25
0e3d: 22 44 69     ld   ($6944),hl
0e40: 73           ld   (hl),e
0e41: 6b           ld   l,e
0e42: 20 41        jr   nz,$0E85
0e44: 73           ld   (hl),e
0e45: 73           ld   (hl),e
0e46: 69           ld   l,c
0e47: 67           ld   h,a
0e48: 6e           ld   l,(hl)
0e49: 6d           ld   l,l
0e4a: 65           ld   h,l
0e4b: 6e           ld   l,(hl)
0e4c: 74           ld   (hl),h
0e4d: f3           di
0e4e: 4c           ld   c,h
0e4f: 65           ld   h,l
0e50: 66           ld   h,(hl)
0e51: 74           ld   (hl),h
0e52: 20 20        jr   nz,$0E74
0e54: 20 46        jr   nz,$0E9C
0e56: 6c           ld   l,h
0e57: 6f           ld   l,a
0e58: 70           ld   (hl),b
0e59: 70           ld   (hl),b
0e5a: f9           ld   sp,hl
0e5b: 52           ld   d,d
0e5c: 69           ld   l,c
0e5d: 67           ld   h,a
0e5e: 68           ld   l,b
0e5f: 74           ld   (hl),h
0e60: 20 20        jr   nz,$0E82
0e62: 46           ld   b,(hl)
0e63: 6c           ld   l,h
0e64: 6f           ld   l,a
0e65: 70           ld   (hl),b
0e66: 70           ld   (hl),b
0e67: f9           ld   sp,hl
0e68: 52           ld   d,d
0e69: 61           ld   h,c
0e6a: 6d           ld   l,l
0e6b: 20 20        jr   nz,$0E8D
0e6d: 44           ld   b,h
0e6e: 72           ld   (hl),d
0e6f: 69           ld   l,c
0e70: 76           halt
0e71: e5           push hl
0e72: 48           ld   c,b
0e73: 61           ld   h,c
0e74: 72           ld   (hl),d
0e75: 64           ld   h,h
0e76: 20 44        jr   nz,$0EBC
0e78: 72           ld   (hl),d
0e79: 69           ld   l,c
0e7a: 76           halt
0e7b: 65           ld   h,l
0e7c: 20 23        jr   nz,$0EA1
0e7e: b1           or   c
0e7f: 48           ld   c,b
0e80: 61           ld   h,c
0e81: 72           ld   (hl),d
0e82: 64           ld   h,h
0e83: 20 44        jr   nz,$0EC9
0e85: 72           ld   (hl),d
0e86: 69           ld   l,c
0e87: 76           halt
0e88: 65           ld   h,l
0e89: 20 23        jr   nz,$0EAE
0e8b: b2           or   d
0e8c: 20 20        jr   nz,$0EAE
0e8e: 44           ld   b,h
0e8f: 69           ld   l,c
0e90: 73           ld   (hl),e
0e91: 6b           ld   l,e
0e92: 20 26        jr   nz,$0EBA
0e94: 20 55        jr   nz,$0EEB
0e96: 73           ld   (hl),e
0e97: 65           ld   h,l
0e98: f2 13 01     jp   p,$0113
0e9b: 1a           ld   a,(de)
0e9c: 03           inc  bc
0e9d: 0a           ld   a,(bc)
0e9e: 07           rlca
0e9f: 44           ld   b,h
0ea0: 69           ld   l,c
0ea1: 73           ld   (hl),e
0ea2: 6b           ld   l,e
0ea3: 20 53        jr   nz,$0EF8
0ea5: 74           ld   (hl),h
0ea6: 61           ld   h,c
0ea7: 74           ld   (hl),h
0ea8: 69           ld   l,c
0ea9: 73           ld   (hl),e
0eaa: 74           ld   (hl),h
0eab: 69           ld   l,c
0eac: 63           ld   h,e
0ead: f3           di
0eae: 44           ld   b,h
0eaf: 69           ld   l,c
0eb0: 73           ld   (hl),e
0eb1: 6b           ld   l,e
0eb2: 20 20        jr   nz,$0ED4
0eb4: 45           ld   b,l
0eb5: 72           ld   (hl),d
0eb6: 72           ld   (hl),d
0eb7: 6f           ld   l,a
0eb8: 72           ld   (hl),d
0eb9: 20 4d        jr   nz,$0F08
0ebb: 73           ld   (hl),e
0ebc: 67           ld   h,a
0ebd: f3           di
0ebe: 44           ld   b,h
0ebf: 69           ld   l,c
0ec0: 73           ld   (hl),e
0ec1: 6b           ld   l,e
0ec2: 20 20        jr   nz,$0EE4
0ec4: 45           ld   b,l
0ec5: 72           ld   (hl),d
0ec6: 72           ld   (hl),d
0ec7: 6f           ld   l,a
0ec8: 72           ld   (hl),d
0ec9: 20 52        jr   nz,$0F1D
0ecb: 65           ld   h,l
0ecc: 74           ld   (hl),h
0ecd: 72           ld   (hl),d
0ece: f9           ld   sp,hl
0ecf: 52           ld   d,d
0ed0: 61           ld   h,c
0ed1: 6d           ld   l,l
0ed2: 20 20        jr   nz,$0EF4
0ed4: 20 44        jr   nz,$0F1A
0ed6: 69           ld   l,c
0ed7: 73           ld   (hl),e
0ed8: 6b           ld   l,e
0ed9: 20 20        jr   nz,$0EFB
0edb: 44           ld   b,h
0edc: 72           ld   (hl),d
0edd: 69           ld   l,c
0ede: 76           halt
0edf: e5           push hl
0ee0: 0a           ld   a,(bc)
0ee1: 01 14 04     ld   bc,$0414
0ee4: 09           add  hl,bc
0ee5: 08           ex   af,af'
0ee6: 50           ld   d,b
0ee7: 72           ld   (hl),d
0ee8: 69           ld   l,c
0ee9: 6e           ld   l,(hl)
0eea: 74           ld   (hl),h
0eeb: 65           ld   h,l
0eec: f2 20 20     jp   p,$2020
0eef: 20 20        jr   nz,$0F11
0ef1: 20 50        jr   nz,$0F43
0ef3: 72           ld   (hl),d
0ef4: 69           ld   l,c
0ef5: 6e           ld   l,(hl)
0ef6: 74           ld   (hl),h
0ef7: 65           ld   h,l
0ef8: f2 20 20     jp   p,$2020
0efb: 20 49        jr   nz,$0F46
0efd: 6e           ld   l,(hl)
0efe: 74           ld   (hl),h
0eff: 65           ld   h,l
0f00: 72           ld   (hl),d
0f01: 66           ld   h,(hl)
0f02: 61           ld   h,c
0f03: 63           ld   h,e
0f04: e5           push hl
0f05: 42           ld   b,d
0f06: 69           ld   l,c
0f07: 74           ld   (hl),h
0f08: 20 20        jr   nz,$0F2A
0f0a: 37           scf
0f0b: 20 20        jr   nz,$0F2D
0f0d: 4d           ld   c,l
0f0e: 61           ld   h,c
0f0f: 73           ld   (hl),e
0f10: eb           ex   de,hl
0f11: 53           ld   d,e
0f12: 69           ld   l,c
0f13: 6e           ld   l,(hl)
0f14: 67           ld   h,a
0f15: 6c           ld   l,h
0f16: 65           ld   h,l
0f17: 20 53        jr   nz,$0F6C
0f19: 68           ld   l,b
0f1a: 65           ld   h,l
0f1b: 65           ld   h,l
0f1c: f4 05 34     call p,$3405
0f1f: 19           add  hl,de
0f20: 07           rlca
0f21: 3e 3a        ld   a,$3A
0f23: 4b           ld   c,e
0f24: 65           ld   h,l
0f25: 79           ld   a,c
0f26: 62           ld   h,d
0f27: 6f           ld   l,a
0f28: 61           ld   h,c
0f29: 72           ld   (hl),d
0f2a: 64           ld   h,h
0f2b: 20 26        jr   nz,$0F53
0f2d: 20 43        jr   nz,$0F72
0f2f: 52           ld   d,d
0f30: d4 53 68     call nc,$6853
0f33: 69           ld   l,c
0f34: 66           ld   h,(hl)
0f35: 74           ld   (hl),h
0f36: 20 4c        jr   nz,$0F84
0f38: 6f           ld   l,a
0f39: 63           ld   h,e
0f3a: 6b           ld   l,e
0f3b: 20 4d        jr   nz,$0F8A
0f3d: 6f           ld   l,a
0f3e: 64           ld   h,h
0f3f: e5           push hl
0f40: 54           ld   d,h
0f41: 79           ld   a,c
0f42: 70           ld   (hl),b
0f43: 61           ld   h,c
0f44: 6d           ld   l,l
0f45: 61           ld   h,c
0f46: 74           ld   (hl),h
0f47: 69           ld   l,c
0f48: 63           ld   h,e
0f49: 20 20        jr   nz,$0F6B
0f4b: 4b           ld   c,e
0f4c: 65           ld   h,l
0f4d: 79           ld   a,c
0f4e: f3           di
0f4f: 46           ld   b,(hl)
0f50: 75           ld   (hl),l
0f51: 6e           ld   l,(hl)
0f52: 63           ld   h,e
0f53: 74           ld   (hl),h
0f54: 69           ld   l,c
0f55: 6f           ld   l,a
0f56: 6e           ld   l,(hl)
0f57: 20 20        jr   nz,$0F79
0f59: 20 4b        jr   nz,$0FA6
0f5b: 65           ld   h,l
0f5c: 79           ld   a,c
0f5d: f3           di
0f5e: 42           ld   b,d
0f5f: 69           ld   l,c
0f60: 74           ld   (hl),h
0f61: 20 37        jr   nz,$0F9A
0f63: 20 20        jr   nz,$0F85
0f65: 4d           ld   c,l
0f66: 61           ld   h,c
0f67: 73           ld   (hl),e
0f68: eb           ex   de,hl
0f69: 43           ld   b,e
0f6a: 75           ld   (hl),l
0f6b: 72           ld   (hl),d
0f6c: 73           ld   (hl),e
0f6d: 6f           ld   l,a
0f6e: 72           ld   (hl),d
0f6f: 20 42        jr   nz,$0FB3
0f71: 6c           ld   l,h
0f72: 69           ld   l,c
0f73: 6e           ld   l,(hl)
0f74: eb           ex   de,hl
0f75: 41           ld   b,c
0f76: 75           ld   (hl),l
0f77: 74           ld   (hl),h
0f78: 6f           ld   l,a
0f79: 20 20        jr   nz,$0F9B
0f7b: 4c           ld   c,h
0f7c: 69           ld   l,c
0f7d: 6e           ld   l,(hl)
0f7e: 65           ld   h,l
0f7f: 20 57        jr   nz,$0FD8
0f81: 72           ld   (hl),d
0f82: 61           ld   h,c
0f83: f0           ret  p
0f84: 53           ld   d,e
0f85: 63           ld   h,e
0f86: 72           ld   (hl),d
0f87: 65           ld   h,l
0f88: 65           ld   h,l
0f89: 6e           ld   l,(hl)
0f8a: 20 53        jr   nz,$0FDF
0f8c: 61           ld   h,c
0f8d: 76           halt
0f8e: 65           ld   h,l
0f8f: f2 ff 01     jp   p,$01FF
0f92: 1a           ld   a,(de)
0f93: 14           inc  d
0f94: 03           inc  bc
0f95: 01 19 15     ld   bc,$1519
0f98: 03           inc  bc
0f99: 01 2b 16     ld   bc,$162B
0f9c: 03           inc  bc
0f9d: 01 26 06     ld   bc,$0626
0fa0: 03           inc  bc
0fa1: 01 28 15     ld   bc,$1528
0fa4: 39           add  hl,sp
0fa5: 01 30 16     ld   bc,$1630
0fa8: 39           add  hl,sp
0fa9: 01 1f 07     ld   bc,$071F
0fac: 36 01        ld   (hl),$01
0fae: 27           daa
0faf: 09           add  hl,bc
0fb0: 36 01        ld   (hl),$01
0fb2: 1d           dec  e
0fb3: 0a           ld   a,(bc)
0fb4: 36 01        ld   (hl),$01
0fb6: 1c           inc  e
0fb7: 0b           dec  bc
0fb8: 36 01        ld   (hl),$01
0fba: 36 0c        ld   (hl),$0C
0fbc: 36 01        ld   (hl),$01
0fbe: 2f           cpl
0fbf: 0d           dec  c
0fc0: 03           inc  bc
0fc1: 01 31 0e     ld   bc,$0E31
0fc4: 03           inc  bc
0fc5: 02           ld   (bc),a
0fc6: 22 10 39     ld   ($3910),hl
0fc9: 4e           ld   c,(hl)
0fca: 4f           ld   c,a
0fcb: 4e           ld   c,(hl)
0fcc: c5           push bc
0fcd: 45           ld   b,l
0fce: 54           ld   d,h
0fcf: 58           ld   e,b
0fd0: 2f           cpl
0fd1: 41           ld   b,c
0fd2: 43           ld   b,e
0fd3: cb 43        bit  0,e
0fd5: 54           ld   d,h
0fd6: 53           ld   d,e
0fd7: 2f           cpl
0fd8: 52           ld   d,d
0fd9: 54           ld   d,h
0fda: d3 58        out  ($58),a
0fdc: 4f           ld   c,a
0fdd: 4e           ld   c,(hl)
0fde: 2f           cpl
0fdf: 58           ld   e,b
0fe0: 4f           ld   c,a
0fe1: 46           ld   b,(hl)
0fe2: c6 02        add  a,$02
0fe4: 21 11 39     ld   hl,$3911
0fe7: 4e           ld   c,(hl)
0fe8: 4f           ld   c,a
0fe9: 4e           ld   c,(hl)
0fea: c5           push bc
0feb: 35           dec  (hl)
0fec: b0           or   b
0fed: 37           scf
0fee: b5           or   l
0fef: 31 31 b0     ld   sp,$B031
0ff2: 31 33 b4     ld   sp,$B433
0ff5: 31 35 b0     ld   sp,$B035
0ff8: 33           inc  sp
0ff9: 30 b0        jr   nc,$0FAB
0ffb: 36 30        ld   (hl),$30
0ffd: b0           or   b
0ffe: 31 32 30     ld   sp,$3032
1001: b0           or   b
1002: 31 38 30     ld   sp,$3038
1005: b0           or   b
1006: 32 34 30     ld   ($3034),a
1009: b0           or   b
100a: 33           inc  sp
100b: 36 30        ld   (hl),$30
100d: b0           or   b
100e: 34           inc  (hl)
100f: 38 30        jr   c,$1041
1011: b0           or   b
1012: 37           scf
1013: 32 30 b0     ld   ($B030),a
1016: 39           add  hl,sp
1017: 36 30        ld   (hl),$30
1019: b0           or   b
101a: 02           ld   (bc),a
101b: 2c           inc  l
101c: 0b           dec  bc
101d: 03           inc  bc
101e: 4e           ld   c,(hl)
101f: 4f           ld   c,a
1020: 4e           ld   c,(hl)
1021: c5           push bc
1022: 47           ld   b,a
1023: 45           ld   b,l
1024: 4e           ld   c,(hl)
1025: 45           ld   b,l
1026: 52           ld   d,d
1027: 49           ld   c,c
1028: c3 43 45     jp   $4543
102b: 4e           ld   c,(hl)
102c: 54           ld   d,h
102d: 52           ld   d,d
102e: 4f           ld   c,a
102f: 4e           ld   c,(hl)
1030: 49           ld   c,c
1031: 43           ld   b,e
1032: d3 46        out  ($46),a
1034: 58           ld   e,b
1035: 2d           dec  l
1036: 38 b0        jr   c,$0FE8
1038: 46           ld   b,(hl)
1039: 58           ld   e,b
103a: 2d           dec  l
103b: 31 30 b0     ld   sp,$B030
103e: 52           ld   d,d
103f: 58           ld   e,b
1040: 2d           dec  l
1041: 38 b0        jr   c,$0FF3
1043: 52           ld   d,d
1044: 58           ld   e,b
1045: 2d           dec  l
1046: 31 30 b0     ld   sp,$B030
1049: 4d           ld   c,l
104a: 58           ld   e,b
104b: 2d           dec  l
104c: 38 b0        jr   c,$0FFE
104e: 4d           ld   c,l
104f: 58           ld   e,b
1050: 2d           dec  l
1051: 31 30 b0     ld   sp,$B030
1054: 4c           ld   c,h
1055: 51           ld   d,c
1056: 2d           dec  l
1057: 31 35 30     ld   sp,$3035
105a: b0           or   b
105b: 43           ld   b,e
105c: 52           ld   d,d
105d: 2d           dec  l
105e: c9           ret
105f: 43           ld   b,e
1060: 52           ld   d,d
1061: 2d           dec  l
1062: 49           ld   c,c
1063: c9           ret
1064: 43           ld   b,e
1065: 52           ld   d,d
1066: 2d           dec  l
1067: 49           ld   c,c
1068: 49           ld   c,c
1069: c9           ret
106a: 02           ld   (bc),a
106b: 23           inc  hl
106c: 12           ld   (de),a
106d: 39           add  hl,sp
106e: 4e           ld   c,(hl)
106f: 4f           ld   c,a
1070: 4e           ld   c,(hl)
1071: c5           push bc
1072: 4f           ld   c,a
1073: 44           ld   b,h
1074: c4 45 56     call nz,$5645
1077: 45           ld   b,l
1078: ce 02        adc  a,$02
107a: 25           dec  h
107b: 13           inc  de
107c: 39           add  hl,sp
107d: b5           or   l
107e: b6           or   (hl)
107f: b7           or   a
1080: b8           cp   b
1081: 02           ld   (bc),a
1082: 24           inc  h
1083: 14           inc  d
1084: 39           add  hl,sp
1085: b1           or   c
1086: 31 2e b0     ld   sp,$B02E
1089: b2           or   d
108a: 02           ld   (bc),a
108b: 29           add  hl,hl
108c: 06 36        ld   b,$36
108e: 43           ld   b,e
108f: 41           ld   b,c
1090: 50           ld   d,b
1091: d3 53        out  ($53),a
1093: 48           ld   c,b
1094: 49           ld   c,c
1095: 46           ld   b,(hl)
1096: d4 02 2a     call nc,$2A02
1099: 08           ex   af,af'
109a: 36 48        ld   (hl),$48
109c: 41           ld   b,c
109d: 53           ld   d,e
109e: 43           ld   b,e
109f: c9           ret
10a0: 54           ld   d,h
10a1: 56           ld   d,(hl)
10a2: 49           ld   c,c
10a3: 2d           dec  l
10a4: 39           add  hl,sp
10a5: 32 b0 43     ld   ($43B0),a
10a8: 55           ld   d,l
10a9: 53           ld   d,e
10aa: 54           ld   d,h
10ab: 4f           ld   c,a
10ac: cd 03 60     call $6003
10af: 06 03        ld   b,$03
10b1: 04           inc  b
10b2: 50           ld   d,b
10b3: 15           dec  d
10b4: 22 05 00     ld   ($0005),hl
10b7: 0c           inc  c
10b8: 03           inc  bc
10b9: 50           ld   d,b
10ba: 41           ld   b,c
10bb: 52           ld   d,d
10bc: 41           ld   b,c
10bd: 4c           ld   c,h
10be: 4c           ld   c,h
10bf: 45           ld   b,l
10c0: cc 53 45     call z,$4553
10c3: 52           ld   d,d
10c4: 49           ld   c,c
10c5: 41           ld   b,c
10c6: cc a0 06     call z,$06A0
10c9: 00           nop
10ca: 16 22        ld   d,$22
10cc: ff           rst  $38
10cd: 1b           dec  de
10ce: a9           xor  c
10cf: 1b           dec  de
10d0: a8           xor  b
10d1: 45           ld   b,l
10d2: 50           ld   d,b
10d3: 53           ld   d,e
10d4: 4f           ld   c,a
10d5: 4e           ld   c,(hl)
10d6: 20 51        jr   nz,$1129
10d8: 58           ld   e,b
10d9: 2d           dec  l
10da: 31 30 20     ld   sp,$2030
10dd: 26 20        ld   h,$20
10df: 51           ld   d,c
10e0: 58           ld   e,b
10e1: 2d           dec  l
10e2: 31 36 20     ld   sp,$2036
10e5: 43           ld   b,e
10e6: 50           ld   d,b
10e7: 2f           cpl
10e8: 4d           ld   c,l
10e9: 20 32        jr   nz,$111D
10eb: 2e 32        ld   l,$32
10ed: 20 42        jr   nz,$1131
10ef: 32 2e 32     ld   ($322E),a
10f2: 37           scf
10f3: 20 a0        jr   nz,$1095
10f5: 50           ld   d,b
10f6: 52           ld   d,d
10f7: 45           ld   b,l
10f8: 53           ld   d,e
10f9: 53           ld   d,e
10fa: 20 43        jr   nz,$113F
10fc: 4f           ld   c,a
10fd: 4e           ld   c,(hl)
10fe: 54           ld   d,h
10ff: 52           ld   d,d
1100: 4f           ld   c,a
1101: 4c           ld   c,h
1102: 2d           dec  l
1103: 48           ld   c,b
1104: 45           ld   b,l
1105: 4c           ld   c,h
1106: 50           ld   d,b
1107: 20 54        jr   nz,$115D
1109: 4f           ld   c,a
110a: 20 45        jr   nz,$1151
110c: 58           ld   e,b
110d: 49           ld   c,c
110e: 54           ld   d,h
110f: a0           and  b
1110: 3a 5a 12     ld   a,($125A)
1113: b7           or   a
1114: 20 47        jr   nz,$115D
1116: 2a 52 12     ld   hl,($1252)
1119: 23           inc  hl
111a: 22 52 12     ld   ($1252),hl
111d: 3a 1c 2b     ld   a,($2B1C)
1120: b7           or   a
1121: 28 08        jr   z,$112B
1123: 3a 66 f0     ld   a,($F066)
1126: cb ef        set  5,a
1128: 32 66 f0     ld   ($F066),a
112b: 3a 58 12     ld   a,($1258)
112e: 3d           dec  a
112f: 28 0c        jr   z,$113D
1131: 32 58 12     ld   ($1258),a
1134: 3a 59 12     ld   a,($1259)
1137: fe ff        cp   $FF
1139: 28 16        jr   z,$1151
113b: 18 20        jr   $115D
113d: 3e 3c        ld   a,$3C
113f: 32 58 12     ld   ($1258),a
1142: 3a 40 27     ld   a,($2740)
1145: b7           or   a
1146: 28 09        jr   z,$1151
1148: 3a 56 12     ld   a,($1256)
114b: 3d           dec  a
114c: 28 08        jr   z,$1156
114e: 32 56 12     ld   ($1256),a
1151: cd 6a 11     call $116A
1154: 18 07        jr   $115D
1156: 32 57 12     ld   ($1257),a
1159: 3e 0c        ld   a,$0C
115b: d3 39        out  ($39),a
115d: 3e 0c        ld   a,$0C
115f: d3 3d        out  ($3D),a
1161: db 3c        in   a,($3C)
1163: 3e 20        ld   a,$20
1165: d3 08        out  ($08),a
1167: d3 0c        out  ($0C),a
1169: c9           ret
116a: 3a 25 27     ld   a,($2725)
116d: b7           or   a
116e: c8           ret  z
116f: 3e ff        ld   a,$FF
1171: 32 59 12     ld   ($1259),a
1174: 3a 54 12     ld   a,($1254)
1177: b7           or   a
1178: c0           ret  nz
1179: 3a 55 12     ld   a,($1255)
117c: b7           or   a
117d: c0           ret  nz
117e: 3a f6 54     ld   a,($54F6)
1181: b7           or   a
1182: c0           ret  nz
1183: 3a 67 f0     ld   a,($F067)
1186: b7           or   a
1187: c0           ret  nz
1188: cd e3 11     call $11E3
118b: 3a 59 12     ld   a,($1259)
118e: 4f           ld   c,a
118f: 3a 49 12     ld   a,($1249)
1192: b9           cp   c
1193: c8           ret  z
1194: 32 59 12     ld   ($1259),a
1197: 3a 4a 12     ld   a,($124A)
119a: e6 0f        and  $0F
119c: 47           ld   b,a
119d: 3a 4a 12     ld   a,($124A)
11a0: e6 f0        and  $F0
11a2: cb 3f        srl  a
11a4: 4f           ld   c,a
11a5: cb 3f        srl  a
11a7: cb 3f        srl  a
11a9: 81           add  a,c
11aa: 80           add  a,b
11ab: 47           ld   b,a
11ac: 3e 3c        ld   a,$3C
11ae: 90           sub  b
11af: 32 58 12     ld   ($1258),a
11b2: 21 35 12     ld   hl,$1235
11b5: 11 45 12     ld   de,$1245
11b8: 06 05        ld   b,$05
11ba: c5           push bc
11bb: cd cc 11     call $11CC
11be: c1           pop  bc
11bf: 10 f9        djnz $11BA
11c1: 3e 34        ld   a,$34
11c3: 0e 40        ld   c,$40
11c5: 21 35 12     ld   hl,$1235
11c8: cd ec 12     call $12EC
11cb: c9           ret
11cc: 1a           ld   a,(de)
11cd: cb 3f        srl  a
11cf: cb 3f        srl  a
11d1: cb 3f        srl  a
11d3: cb 3f        srl  a
11d5: f6 30        or   $30
11d7: 77           ld   (hl),a
11d8: 23           inc  hl
11d9: 1a           ld   a,(de)
11da: e6 0f        and  $0F
11dc: f6 30        or   $30
11de: 77           ld   (hl),a
11df: 23           inc  hl
11e0: 23           inc  hl
11e1: 13           inc  de
11e2: c9           ret
11e3: cd 2a 12     call $122A
11e6: 21 44 12     ld   hl,$1244
11e9: 11 4b 12     ld   de,$124B
11ec: 06 07        ld   b,$07
11ee: 1a           ld   a,(de)
11ef: d3 3d        out  ($3D),a
11f1: db 3c        in   a,($3C)
11f3: 77           ld   (hl),a
11f4: 23           inc  hl
11f5: 13           inc  de
11f6: 10 f6        djnz $11EE
11f8: c9           ret
11f9: e5           push hl
11fa: cd e3 11     call $11E3
11fd: 21 44 12     ld   hl,$1244
1200: d1           pop  de
1201: 01 07 00     ld   bc,$0007
1204: ed b0        ldir
1206: c9           ret
1207: 11 44 12     ld   de,$1244
120a: 01 07 00     ld   bc,$0007
120d: ed b0        ldir
120f: cd 2a 12     call $122A
1212: 21 44 12     ld   hl,$1244
1215: 11 4b 12     ld   de,$124B
1218: 06 07        ld   b,$07
121a: 1a           ld   a,(de)
121b: d3 3d        out  ($3D),a
121d: 7e           ld   a,(hl)
121e: d3 3c        out  ($3C),a
1220: 23           inc  hl
1221: 13           inc  de
1222: 10 f6        djnz $121A
1224: 3e ff        ld   a,$FF
1226: 32 59 12     ld   ($1259),a
1229: c9           ret
122a: 3e 0a        ld   a,$0A
122c: d3 3d        out  ($3D),a
122e: db 3c        in   a,($3C)
1230: cb 7f        bit  7,a
1232: 20 f6        jr   nz,$122A
1234: c9           ret
1235: 30 38        jr   nc,$126F
1237: 2f           cpl
1238: 32 33 2f     ld   ($2F33),a
123b: 38 34        jr   c,$1271
123d: 20 32        jr   nz,$1271
123f: 30 3a        jr   nc,$127B
1241: 31 37 00     ld   sp,$0037
1244: 01 03 28     ld   bc,$2803
1247: 83           add  a,e
1248: 20 00        jr   nz,$124A
124a: 00           nop
124b: 06 08        ld   b,$08
124d: 07           rlca
124e: 09           add  hl,bc
124f: 04           inc  b
1250: 02           ld   (bc),a
1251: 00           nop
1252: 00           nop
1253: 00           nop
1254: 00           nop
1255: 00           nop
1256: 14           inc  d
1257: ff           rst  $38
1258: 01 ff ff     ld   bc,$FFFF
125b: 3a 64 f0     ld   a,($F064)
125e: cd c7 12     call $12C7
1261: 2b           dec  hl
1262: f5           push af
1263: 2b           dec  hl
1264: f5           push af
1265: 73           ld   (hl),e
1266: 14           inc  d
1267: f2 12 3a     jp   p,$3A12
126a: 64           ld   h,h
126b: f0           ret  p
126c: cd c7 12     call $12C7
126f: 86           add  a,(hl)
1270: 14           inc  d
1271: 86           add  a,(hl)
1272: 14           inc  d
1273: 80           add  a,b
1274: 14           inc  d
1275: 0c           inc  c
1276: 13           inc  de
1277: 3a 64 f0     ld   a,($F064)
127a: cd c7 12     call $12C7
127d: d7           rst  $10
127e: 12           ld   (de),a
127f: d7           rst  $10
1280: 12           ld   (de),a
1281: 83           add  a,e
1282: 14           inc  d
1283: 5f           ld   e,a
1284: 13           inc  de
1285: 3a 64 f0     ld   a,($F064)
1288: 0f           rrca
1289: 0f           rrca
128a: 0f           rrca
128b: 0f           rrca
128c: cd c7 12     call $12C7
128f: d7           rst  $10
1290: 12           ld   (de),a
1291: d7           rst  $10
1292: 12           ld   (de),a
1293: 5f           ld   e,a
1294: 13           inc  de
1295: 5f           ld   e,a
1296: 13           inc  de
1297: 3a 64 f0     ld   a,($F064)
129a: 0f           rrca
129b: 0f           rrca
129c: cd c7 12     call $12C7
129f: 86           add  a,(hl)
12a0: 14           inc  d
12a1: 86           add  a,(hl)
12a2: 14           inc  d
12a3: 0c           inc  c
12a4: 13           inc  de
12a5: 0c           inc  c
12a6: 13           inc  de
12a7: 3a 64 f0     ld   a,($F064)
12aa: 07           rlca
12ab: 07           rlca
12ac: cd c7 12     call $12C7
12af: d7           rst  $10
12b0: 12           ld   (de),a
12b1: d7           rst  $10
12b2: 12           ld   (de),a
12b3: be           cp   (hl)
12b4: 14           inc  d
12b5: 5f           ld   e,a
12b6: 13           inc  de
12b7: 3a 64 f0     ld   a,($F064)
12ba: 07           rlca
12bb: 07           rlca
12bc: cd c7 12     call $12C7
12bf: 56           ld   d,(hl)
12c0: 13           inc  de
12c1: 2b           dec  hl
12c2: f5           push af
12c3: f6 14        or   $14
12c5: f6 14        or   $14
12c7: e6 03        and  $03
12c9: 87           add  a,a
12ca: e1           pop  hl
12cb: 85           add  a,l
12cc: 6f           ld   l,a
12cd: d2 d1 12     jp   nc,$12D1
12d0: 24           inc  h
12d1: 7e           ld   a,(hl)
12d2: 23           inc  hl
12d3: 66           ld   h,(hl)
12d4: 6f           ld   l,a
12d5: e9           jp   (hl)
12d6: 1b           dec  de
12d7: 00           nop
12d8: 00           nop
12d9: 00           nop
12da: 00           nop
12db: 00           nop
12dc: 00           nop
12dd: 00           nop
12de: 00           nop
12df: 00           nop
12e0: 00           nop
12e1: 00           nop
12e2: 00           nop
12e3: 00           nop
12e4: 00           nop
12e5: 00           nop
12e6: 00           nop
12e7: 00           nop
12e8: 00           nop
12e9: 00           nop
12ea: 00           nop
12eb: 00           nop
12ec: 00           nop
12ed: 00           nop
12ee: 00           nop
12ef: 00           nop
12f0: 00           nop
12f1: 00           nop
12f2: 3a 3a 27     ld   a,($273A)
12f5: b7           or   a
12f6: 20 09        jr   nz,$1301
12f8: db 13        in   a,($13)
12fa: e6 01        and  $01
12fc: c8           ret  z
12fd: 3e ff        ld   a,$FF
12ff: b7           or   a
1300: c9           ret
1301: 2a ba 26     ld   hl,($26BA)
1304: 7d           ld   a,l
1305: b4           or   h
1306: 28 03        jr   z,$130B
1308: 3e ff        ld   a,$FF
130a: b7           or   a
130b: c9           ret
130c: cd f2 12     call $12F2
130f: 28 fb        jr   z,$130C
1311: 3a 3a 27     ld   a,($273A)
1314: b7           or   a
1315: 20 04        jr   nz,$131B
1317: db 11        in   a,($11)
1319: 18 18        jr   $1333
131b: f3           di
131c: 2a ba 26     ld   hl,($26BA)
131f: 2b           dec  hl
1320: 22 ba 26     ld   ($26BA),hl
1323: 16 00        ld   d,$00
1325: 3a bd 26     ld   a,($26BD)
1328: 5f           ld   e,a
1329: 21 fe a1     ld   hl,$A1FE
132c: 19           add  hl,de
132d: 3c           inc  a
132e: 32 bd 26     ld   ($26BD),a
1331: 7e           ld   a,(hl)
1332: fb           ei
1333: 4f           ld   c,a
1334: 3a 32 27     ld   a,($2732)
1337: b7           or   a
1338: 79           ld   a,c
1339: 28 02        jr   z,$133D
133b: e6 7f        and  $7F
133d: 4f           ld   c,a
133e: 3a 6f 14     ld   a,($146F)
1341: b9           cp   c
1342: 20 05        jr   nz,$1349
1344: af           xor  a
1345: 32 71 14     ld   ($1471),a
1348: c9           ret
1349: 3a 70 14     ld   a,($1470)
134c: b9           cp   c
134d: 79           ld   a,c
134e: c0           ret  nz
134f: 3e ff        ld   a,$FF
1351: 32 71 14     ld   ($1471),a
1354: af           xor  a
1355: c9           ret
1356: db 13        in   a,($13)
1358: e6 04        and  $04
135a: c8           ret  z
135b: 3e ff        ld   a,$FF
135d: b7           or   a
135e: c9           ret
135f: cd 56 13     call $1356
1362: 28 fb        jr   z,$135F
1364: 3a 32 27     ld   a,($2732)
1367: b7           or   a
1368: 79           ld   a,c
1369: 28 02        jr   z,$136D
136b: e6 7f        and  $7F
136d: 4f           ld   c,a
136e: 3a 2c 27     ld   a,($272C)
1371: b7           or   a
1372: 28 5e        jr   z,$13D2
1374: fe 01        cp   $01
1376: 28 36        jr   z,$13AE
1378: fe 02        cp   $02
137a: 20 0c        jr   nz,$1388
137c: 3e 10        ld   a,$10
137e: d3 13        out  ($13),a
1380: db 13        in   a,($13)
1382: cb 6f        bit  5,a
1384: 28 f6        jr   z,$137C
1386: 18 4a        jr   $13D2
1388: fe 03        cp   $03
138a: 20 46        jr   nz,$13D2
138c: 3a 71 14     ld   a,($1471)
138f: b7           or   a
1390: 28 07        jr   z,$1399
1392: c5           push bc
1393: cd 0c 13     call $130C
1396: c1           pop  bc
1397: 18 f3        jr   $138C
1399: cd f2 12     call $12F2
139c: 28 34        jr   z,$13D2
139e: db 11        in   a,($11)
13a0: 47           ld   b,a
13a1: 3a 70 14     ld   a,($1470)
13a4: b8           cp   b
13a5: 20 2b        jr   nz,$13D2
13a7: 3e ff        ld   a,$FF
13a9: 32 71 14     ld   ($1471),a
13ac: 18 de        jr   $138C
13ae: 21 72 14     ld   hl,$1472
13b1: 34           inc  (hl)
13b2: 16 80        ld   d,$80
13b4: 79           ld   a,c
13b5: fe 1b        cp   $1B
13b7: 20 02        jr   nz,$13BB
13b9: 16 7b        ld   d,$7B
13bb: 7a           ld   a,d
13bc: be           cp   (hl)
13bd: 30 13        jr   nc,$13D2
13bf: 3e 03        ld   a,$03
13c1: d3 11        out  ($11),a
13c3: af           xor  a
13c4: 32 71 14     ld   ($1471),a
13c7: c5           push bc
13c8: cd 0c 13     call $130C
13cb: c1           pop  bc
13cc: e6 7f        and  $7F
13ce: fe 06        cp   $06
13d0: 20 f5        jr   nz,$13C7
13d2: 79           ld   a,c
13d3: d3 11        out  ($11),a
13d5: c9           ret
13d6: 21 44 14     ld   hl,$1444
13d9: 06 00        ld   b,$00
13db: 3a 2b 27     ld   a,($272B)
13de: 87           add  a,a
13df: 4f           ld   c,a
13e0: 09           add  hl,bc
13e1: 3a 2e 27     ld   a,($272E)
13e4: 3c           inc  a
13e5: cb 27        sla  a
13e7: cb 27        sla  a
13e9: 47           ld   b,a
13ea: 3a 2d 27     ld   a,($272D)
13ed: fe 02        cp   $02
13ef: 20 01        jr   nz,$13F2
13f1: 3c           inc  a
13f2: b0           or   b
13f3: 47           ld   b,a
13f4: 3a 65 14     ld   a,($1465)
13f7: e6 f0        and  $F0
13f9: b0           or   b
13fa: 32 65 14     ld   ($1465),a
13fd: 3a 2f 27     ld   a,($272F)
1400: cb 0f        rrc  a
1402: cb 0f        rrc  a
1404: 47           ld   b,a
1405: cb 0f        rrc  a
1407: 4f           ld   c,a
1408: 3a 67 14     ld   a,($1467)
140b: e6 3f        and  $3F
140d: b0           or   b
140e: 32 67 14     ld   ($1467),a
1411: 3a 69 14     ld   a,($1469)
1414: e6 9f        and  $9F
1416: b1           or   c
1417: 32 69 14     ld   ($1469),a
141a: 3a 3a 27     ld   a,($273A)
141d: b7           or   a
141e: 28 04        jr   z,$1424
1420: 3e 11        ld   a,$11
1422: 18 02        jr   $1426
1424: 3e 00        ld   a,$00
1426: 32 6e 14     ld   ($146E),a
1429: 3e b6        ld   a,$B6
142b: d3 07        out  ($07),a
142d: 7e           ld   a,(hl)
142e: d3 06        out  ($06),a
1430: 23           inc  hl
1431: 7e           ld   a,(hl)
1432: d3 06        out  ($06),a
1434: 3e 18        ld   a,$18
1436: d3 13        out  ($13),a
1438: 00           nop
1439: 00           nop
143a: 21 64 14     ld   hl,$1464
143d: 06 0b        ld   b,$0B
143f: 0e 13        ld   c,$13
1441: ed b3        otir
1443: c9           ret
1444: 00           nop
1445: 00           nop
1446: c4 09 83     call nz,$8309
1449: 06 6f        ld   b,$6F
144b: 04           inc  b
144c: 9c           sbc  a,h
144d: 03           inc  bc
144e: 40           ld   b,b
144f: 03           inc  bc
1450: a0           and  b
1451: 01 d0 00     ld   bc,$00D0
1454: 68           ld   l,b
1455: 00           nop
1456: 45           ld   b,l
1457: 00           nop
1458: 34           inc  (hl)
1459: 00           nop
145a: 23           inc  hl
145b: 00           nop
145c: 1a           ld   a,(de)
145d: 00           nop
145e: 11 00 0d     ld   de,$0D00
1461: 00           nop
1462: 07           rlca
1463: 00           nop
1464: 14           inc  d
1465: 44           ld   b,h
1466: 03           inc  bc
1467: c1           pop  bc
1468: 05           dec  b
1469: ea 02 00     jp   pe,$0002
146c: 10 01        djnz $146F
146e: 11 00 00     ld   de,$0000
1471: 00           nop
1472: 00           nop
1473: cd 4f f3     call $F34F
1476: e6 0c        and  $0C
1478: fe 08        cp   $08
147a: d2 f2 12     jp   nc,$12F2
147d: c3 2b f5     jp   $F52B
1480: c3 97 12     jp   $1297
1483: c3 a7 12     jp   $12A7
1486: 3a 66 f0     ld   a,($F066)
1489: b7           or   a
148a: c4 e9 f1     call nz,$F1E9
148d: cd 2b f5     call $F52B
1490: 28 f4        jr   z,$1486
1492: f3           di
1493: 3a 7b f5     ld   a,($F57B)
1496: 3d           dec  a
1497: 32 7b f5     ld   ($F57B),a
149a: 16 00        ld   d,$00
149c: 3a 90 19     ld   a,($1990)
149f: 21 80 bb     ld   hl,$BB80
14a2: 5f           ld   e,a
14a3: 19           add  hl,de
14a4: 3c           inc  a
14a5: fe 80        cp   $80
14a7: 20 02        jr   nz,$14AB
14a9: 3e 00        ld   a,$00
14ab: 32 90 19     ld   ($1990),a
14ae: 7e           ld   a,(hl)
14af: fb           ei
14b0: c9           ret
14b1: 7e           ld   a,(hl)
14b2: 23           inc  hl
14b3: b7           or   a
14b4: c8           ret  z
14b5: 4f           ld   c,a
14b6: e5           push hl
14b7: cd 77 12     call $1277
14ba: e1           pop  hl
14bb: 18 f4        jr   $14B1
14bd: c9           ret
14be: 3a 36 27     ld   a,($2736)
14c1: a7           and  a
14c2: c8           ret  z
14c3: 3a 69 16     ld   a,($1669)
14c6: a7           and  a
14c7: c0           ret  nz
14c8: c5           push bc
14c9: cd f6 14     call $14F6
14cc: 3c           inc  a
14cd: 79           ld   a,c
14ce: c1           pop  bc
14cf: 20 19        jr   nz,$14EA
14d1: 3a 67 f0     ld   a,($F067)
14d4: a7           and  a
14d5: 20 08        jr   nz,$14DF
14d7: 3a 39 27     ld   a,($2739)
14da: a7           and  a
14db: 28 02        jr   z,$14DF
14dd: cb b9        res  7,c
14df: 79           ld   a,c
14e0: d3 14        out  ($14),a
14e2: 97           sub  a
14e3: d3 17        out  ($17),a
14e5: 3c           inc  a
14e6: d3 17        out  ($17),a
14e8: 79           ld   a,c
14e9: c9           ret
14ea: 3c           inc  a
14eb: 28 d1        jr   z,$14BE
14ed: 3d           dec  a
14ee: c8           ret  z
14ef: c5           push bc
14f0: cd 38 15     call $1538
14f3: c1           pop  bc
14f4: 18 c8        jr   $14BE
14f6: 3a 36 27     ld   a,($2736)
14f9: a7           and  a
14fa: 28 26        jr   z,$1522
14fc: db 15        in   a,($15)
14fe: db 15        in   a,($15)
1500: 5f           ld   e,a
1501: e6 78        and  $78
1503: 4f           ld   c,a
1504: fe 48        cp   $48
1506: 28 1a        jr   z,$1522
1508: fe 68        cp   $68
150a: 28 1c        jr   z,$1528
150c: 3a 3b 27     ld   a,($273B)
150f: a7           and  a
1510: 79           ld   a,c
1511: 28 08        jr   z,$151B
1513: fe 58        cp   $58
1515: 28 0b        jr   z,$1522
1517: fe 70        cp   $70
1519: 28 07        jr   z,$1522
151b: fe 78        cp   $78
151d: c4 31 15     call nz,$1531
1520: 97           sub  a
1521: c9           ret
1522: 3e ff        ld   a,$FF
1524: cd 31 15     call $1531
1527: c9           ret
1528: 0e ff        ld   c,$FF
152a: 97           sub  a
152b: cd 31 15     call $1531
152e: c9           ret
152f: 4f           ld   c,a
1530: c9           ret
1531: 2a 52 12     ld   hl,($1252)
1534: 22 65 16     ld   ($1665),hl
1537: c9           ret
1538: fe 78        cp   $78
153a: 20 0c        jr   nz,$1548
153c: 2a 65 16     ld   hl,($1665)
153f: ed 4b 52 12  ld   bc,($1252)
1543: 23           inc  hl
1544: a7           and  a
1545: ed 42        sbc  hl,bc
1547: d0           ret  nc
1548: cd 03 16     call $1603
154b: db 15        in   a,($15)
154d: bb           cp   e
154e: c0           ret  nz
154f: 3a 67 f0     ld   a,($F067)
1552: 32 68 16     ld   ($1668),a
1555: 3e ff        ld   a,$FF
1557: 32 67 f0     ld   ($F067),a
155a: d5           push de
155b: 21 17 16     ld   hl,$1617
155e: 3e 03        ld   a,$03
1560: 0e 00        ld   c,$00
1562: cd ec 12     call $12EC
1565: cd 6a 16     call $166A
1568: d1           pop  de
1569: 01 00 00     ld   bc,$0000
156c: 3e 01        ld   a,$01
156e: 32 67 16     ld   ($1667),a
1571: d5           push de
1572: c5           push bc
1573: cd 2b f5     call $F52B
1576: c1           pop  bc
1577: d1           pop  de
1578: 3c           inc  a
1579: 28 1a        jr   z,$1595
157b: cd e7 15     call $15E7
157e: db 15        in   a,($15)
1580: bb           cp   e
1581: 28 ee        jr   z,$1571
1583: 5f           ld   e,a
1584: cd ca 15     call $15CA
1587: 3c           inc  a
1588: 28 0b        jr   z,$1595
158a: cd f6 14     call $14F6
158d: 3c           inc  a
158e: 28 34        jr   z,$15C4
1590: 0c           inc  c
1591: 28 31        jr   z,$15C4
1593: 18 dc        jr   $1571
1595: d5           push de
1596: cd 86 14     call $1486
1599: e6 df        and  $DF
159b: d1           pop  de
159c: fe 41        cp   $41
159e: 28 12        jr   z,$15B2
15a0: fe 49        cp   $49
15a2: 28 05        jr   z,$15A9
15a4: cd f3 15     call $15F3
15a7: 18 c8        jr   $1571
15a9: 32 69 16     ld   ($1669),a
15ac: 97           sub  a
15ad: 32 0d e5     ld   ($E50D),a
15b0: 18 12        jr   $15C4
15b2: 97           sub  a
15b3: cd dd 15     call $15DD
15b6: 97           sub  a
15b7: 32 0d e5     ld   ($E50D),a
15ba: 32 67 f0     ld   ($F067),a
15bd: af           xor  a
15be: cd 88 f3     call $F388
15c1: c3 62 00     jp   $0062
15c4: 3e 01        ld   a,$01
15c6: cd dd 15     call $15DD
15c9: c9           ret
15ca: d5           push de
15cb: cd 2b f5     call $F52B
15ce: d1           pop  de
15cf: fe ff        cp   $FF
15d1: c8           ret  z
15d2: cd 03 16     call $1603
15d5: db 15        in   a,($15)
15d7: bb           cp   e
15d8: 5f           ld   e,a
15d9: 20 ef        jr   nz,$15CA
15db: 97           sub  a
15dc: c9           ret
15dd: cd ef 12     call $12EF
15e0: 3a 68 16     ld   a,($1668)
15e3: 32 67 f0     ld   ($F067),a
15e6: c9           ret
15e7: 0b           dec  bc
15e8: 79           ld   a,c
15e9: b0           or   b
15ea: c0           ret  nz
15eb: 3a 67 16     ld   a,($1667)
15ee: 3d           dec  a
15ef: 32 67 16     ld   ($1667),a
15f2: c0           ret  nz
15f3: 3e 21        ld   a,$21
15f5: 32 67 16     ld   ($1667),a
15f8: d5           push de
15f9: c5           push bc
15fa: 21 15 16     ld   hl,$1615
15fd: cd b1 14     call $14B1
1600: c1           pop  bc
1601: d1           pop  de
1602: c9           ret
1603: e5           push hl
1604: d5           push de
1605: c5           push bc
1606: 21 00 00     ld   hl,$0000
1609: 11 00 00     ld   de,$0000
160c: 01 00 7d     ld   bc,$7D00
160f: ed b0        ldir
1611: c1           pop  bc
1612: d1           pop  de
1613: e1           pop  hl
1614: c9           ret
1615: 07           rlca
1616: 00           nop
1617: 20 50        jr   nz,$1669
1619: 72           ld   (hl),d
161a: 69           ld   l,c
161b: 6e           ld   l,(hl)
161c: 74           ld   (hl),h
161d: 65           ld   h,l
161e: 72           ld   (hl),d
161f: 20 6e        jr   nz,$168F
1621: 6f           ld   l,a
1622: 74           ld   (hl),h
1623: 20 72        jr   nz,$1697
1625: 65           ld   h,l
1626: 61           ld   h,c
1627: 64           ld   h,h
1628: 79           ld   a,c
1629: 2e 20        ld   l,$20
162b: 20 43        jr   nz,$1670
162d: 6f           ld   l,a
162e: 72           ld   (hl),d
162f: 72           ld   (hl),d
1630: 65           ld   h,l
1631: 63           ld   h,e
1632: 74           ld   (hl),h
1633: 20 66        jr   nz,$169B
1635: 61           ld   h,c
1636: 75           ld   (hl),l
1637: 6c           ld   l,h
1638: 74           ld   (hl),h
1639: 20 6f        jr   nz,$16AA
163b: 72           ld   (hl),d
163c: 20 28        jr   nz,$1666
163e: 41           ld   b,c
163f: 29           add  hl,hl
1640: 62           ld   h,d
1641: 6f           ld   l,a
1642: 72           ld   (hl),d
1643: 74           ld   (hl),h
1644: 2f           cpl
1645: 28 49        jr   z,$1690
1647: 29           add  hl,hl
1648: 67           ld   h,a
1649: 6e           ld   l,(hl)
164a: 6f           ld   l,a
164b: 72           ld   (hl),d
164c: 65           ld   h,l
164d: 20 6f        jr   nz,$16BE
164f: 75           ld   (hl),l
1650: 74           ld   (hl),h
1651: 70           ld   (hl),b
1652: 75           ld   (hl),l
1653: 74           ld   (hl),h
1654: 20 75        jr   nz,$16CB
1656: 6e           ld   l,(hl)
1657: 74           ld   (hl),h
1658: 69           ld   l,c
1659: 6c           ld   l,h
165a: 20 77        jr   nz,$16D3
165c: 61           ld   h,c
165d: 72           ld   (hl),d
165e: 6d           ld   l,l
165f: 62           ld   h,d
1660: 6f           ld   l,a
1661: 6f           ld   l,a
1662: 74           ld   (hl),h
1663: 2e 00        ld   l,$00
1665: 00           nop
1666: 00           nop
1667: 00           nop
1668: 00           nop
1669: 00           nop
166a: f3           di
166b: cd 70 16     call $1670
166e: fb           ei
166f: c9           ret
1670: 21 00 00     ld   hl,$0000
1673: 22 8f 19     ld   ($198F),hl
1676: af           xor  a
1677: 32 7b f5     ld   ($F57B),a
167a: c9           ret
167b: f3           di
167c: cd 81 16     call $1681
167f: fb           ei
1680: c9           ret
1681: e5           push hl
1682: f5           push af
1683: 3a 7b f5     ld   a,($F57B)
1686: fe 80        cp   $80
1688: 28 1d        jr   z,$16A7
168a: 3c           inc  a
168b: 32 7b f5     ld   ($F57B),a
168e: 21 80 bb     ld   hl,$BB80
1691: 3a 8f 19     ld   a,($198F)
1694: 16 00        ld   d,$00
1696: 5f           ld   e,a
1697: 19           add  hl,de
1698: 3c           inc  a
1699: fe 80        cp   $80
169b: 20 02        jr   nz,$169F
169d: 3e 00        ld   a,$00
169f: 32 8f 19     ld   ($198F),a
16a2: f1           pop  af
16a3: 77           ld   (hl),a
16a4: af           xor  a
16a5: 18 03        jr   $16AA
16a7: f1           pop  af
16a8: 3e ff        ld   a,$FF
16aa: e1           pop  hl
16ab: c9           ret
16ac: 47           ld   b,a
16ad: 3a 7b f5     ld   a,($F57B)
16b0: 80           add  a,b
16b1: fe 80        cp   $80
16b3: 30 0c        jr   nc,$16C1
16b5: 7e           ld   a,(hl)
16b6: cd 81 16     call $1681
16b9: 23           inc  hl
16ba: 10 f9        djnz $16B5
16bc: af           xor  a
16bd: 18 02        jr   $16C1
16bf: 3e ff        ld   a,$FF
16c1: c9           ret
16c2: e5           push hl
16c3: c5           push bc
16c4: 4f           ld   c,a
16c5: fe 7f        cp   $7F
16c7: 38 06        jr   c,$16CF
16c9: cd b3 18     call $18B3
16cc: c3 6f 17     jp   $176F
16cf: 21 91 19     ld   hl,$1991
16d2: be           cp   (hl)
16d3: 20 5d        jr   nz,$1732
16d5: 21 8e 19     ld   hl,$198E
16d8: 7e           ld   a,(hl)
16d9: cb 4f        bit  1,a
16db: 20 22        jr   nz,$16FF
16dd: ee 08        xor  $08
16df: 77           ld   (hl),a
16e0: e6 08        and  $08
16e2: 06 46        ld   b,$46
16e4: 28 01        jr   z,$16E7
16e6: 04           inc  b
16e7: 3a 14 98     ld   a,($9814)
16ea: b7           or   a
16eb: 28 0b        jr   z,$16F8
16ed: 3a 33 27     ld   a,($2733)
16f0: b7           or   a
16f1: 20 05        jr   nz,$16F8
16f3: 78           ld   a,b
16f4: e6 41        and  $41
16f6: 18 01        jr   $16F9
16f8: 78           ld   a,b
16f9: cd ea 18     call $18EA
16fc: c3 6f 17     jp   $176F
16ff: 3a 33 27     ld   a,($2733)
1702: ee 01        xor  $01
1704: 32 33 27     ld   ($2733),a
1707: 3a 14 98     ld   a,($9814)
170a: b7           or   a
170b: 28 23        jr   z,$1730
170d: 3a 8e 19     ld   a,($198E)
1710: e6 08        and  $08
1712: 28 1c        jr   z,$1730
1714: 3a 33 27     ld   a,($2733)
1717: b7           or   a
1718: 28 0c        jr   z,$1726
171a: 3e 40        ld   a,$40
171c: cd ea 18     call $18EA
171f: 3e 47        ld   a,$47
1721: cd ea 18     call $18EA
1724: 18 0a        jr   $1730
1726: 3e 46        ld   a,$46
1728: cd ea 18     call $18EA
172b: 3e 41        ld   a,$41
172d: cd ea 18     call $18EA
1730: 18 3d        jr   $176F
1732: cd 57 18     call $1857
1735: fe ff        cp   $FF
1737: 28 36        jr   z,$176F
1739: 3a 8d 19     ld   a,($198D)
173c: b7           or   a
173d: 28 05        jr   z,$1744
173f: cd 8f 18     call $188F
1742: 18 30        jr   $1774
1744: 3a 31 06     ld   a,($0631)
1747: b7           or   a
1748: 20 07        jr   nz,$1751
174a: cd e1 17     call $17E1
174d: fe ff        cp   $FF
174f: 28 23        jr   z,$1774
1751: cd 8f 18     call $188F
1754: cd 93 17     call $1793
1757: 06 00        ld   b,$00
1759: 09           add  hl,bc
175a: 7e           ld   a,(hl)
175b: b7           or   a
175c: 28 16        jr   z,$1774
175e: fe 18        cp   $18
1760: 20 05        jr   nz,$1767
1762: cd 70 16     call $1670
1765: 3e 18        ld   a,$18
1767: cd d2 17     call $17D2
176a: cd 81 16     call $1681
176d: 18 05        jr   $1774
176f: 3e a0        ld   a,$A0
1771: cd ea 18     call $18EA
1774: 3e 14        ld   a,$14
1776: 32 56 12     ld   ($1256),a
1779: c1           pop  bc
177a: e1           pop  hl
177b: c9           ret
177c: 3e ff        ld   a,$FF
177e: 32 57 12     ld   ($1257),a
1781: 32 59 12     ld   ($1259),a
1784: 3e 0d        ld   a,$0D
1786: d3 39        out  ($39),a
1788: 3e a0        ld   a,$A0
178a: cd ea 18     call $18EA
178d: 3e 14        ld   a,$14
178f: 32 56 12     ld   ($1256),a
1792: c9           ret
1793: 21 8e 19     ld   hl,$198E
1796: 3a 33 27     ld   a,($2733)
1799: b7           or   a
179a: 7e           ld   a,(hl)
179b: 28 1b        jr   z,$17B8
179d: cb 5f        bit  3,a
179f: 28 17        jr   z,$17B8
17a1: cb 57        bit  2,a
17a3: 20 13        jr   nz,$17B8
17a5: f5           push af
17a6: 79           ld   a,c
17a7: 21 c7 17     ld   hl,$17C7
17aa: 01 0b 00     ld   bc,$000B
17ad: ed b1        cpir
17af: 4f           ld   c,a
17b0: 28 05        jr   z,$17B7
17b2: f1           pop  af
17b3: f6 01        or   $01
17b5: 18 01        jr   $17B8
17b7: f1           pop  af
17b8: e6 07        and  $07
17ba: 87           add  a,a
17bb: 5f           ld   e,a
17bc: 16 00        ld   d,$00
17be: 21 6b 19     ld   hl,$196B
17c1: 19           add  hl,de
17c2: 7e           ld   a,(hl)
17c3: 23           inc  hl
17c4: 66           ld   h,(hl)
17c5: 6f           ld   l,a
17c6: c9           ret
17c7: 3c           inc  a
17c8: 3d           dec  a
17c9: 3e 3f        ld   a,$3F
17cb: 5e           ld   e,(hl)
17cc: 5f           ld   e,a
17cd: 6e           ld   l,(hl)
17ce: 6f           ld   l,a
17cf: 41           ld   b,c
17d0: 74           ld   (hl),h
17d1: 78           ld   a,b
17d2: 21 8e 19     ld   hl,$198E
17d5: cb 5e        bit  3,(hl)
17d7: c8           ret  z
17d8: fe 61        cp   $61
17da: d8           ret  c
17db: fe 7b        cp   $7B
17dd: d0           ret  nc
17de: ee 20        xor  $20
17e0: c9           ret
17e1: 21 51 0a     ld   hl,$0A51
17e4: 7e           ld   a,(hl)
17e5: 23           inc  hl
17e6: 66           ld   h,(hl)
17e7: 6f           ld   l,a
17e8: 11 04 00     ld   de,$0004
17eb: 3e 23        ld   a,$23
17ed: 47           ld   b,a
17ee: 79           ld   a,c
17ef: be           cp   (hl)
17f0: 28 05        jr   z,$17F7
17f2: 19           add  hl,de
17f3: 10 f9        djnz $17EE
17f5: af           xor  a
17f6: c9           ret
17f7: e5           push hl
17f8: 11 8e 19     ld   de,$198E
17fb: 1a           ld   a,(de)
17fc: e6 07        and  $07
17fe: 57           ld   d,a
17ff: 23           inc  hl
1800: 7e           ld   a,(hl)
1801: 32 92 19     ld   ($1992),a
1804: e6 07        and  $07
1806: ba           cp   d
1807: 28 06        jr   z,$180F
1809: e1           pop  hl
180a: 11 04 00     ld   de,$0004
180d: 18 e3        jr   $17F2
180f: 23           inc  hl
1810: 5e           ld   e,(hl)
1811: 23           inc  hl
1812: 56           ld   d,(hl)
1813: 21 53 0a     ld   hl,$0A53
1816: 7e           ld   a,(hl)
1817: 23           inc  hl
1818: 66           ld   h,(hl)
1819: 6f           ld   l,a
181a: 19           add  hl,de
181b: 7e           ld   a,(hl)
181c: cb 7f        bit  7,a
181e: 28 e9        jr   z,$1809
1820: d1           pop  de
1821: cb 6f        bit  5,a
1823: 28 01        jr   z,$1826
1825: 3c           inc  a
1826: e6 1f        and  $1F
1828: 47           ld   b,a
1829: 3a 7b f5     ld   a,($F57B)
182c: 80           add  a,b
182d: fe 80        cp   $80
182f: 30 12        jr   nc,$1843
1831: 7e           ld   a,(hl)
1832: f5           push af
1833: e6 1f        and  $1F
1835: 23           inc  hl
1836: cd ac 16     call $16AC
1839: f1           pop  af
183a: cb 6f        bit  5,a
183c: 28 05        jr   z,$1843
183e: 3e 0d        ld   a,$0D
1840: cd 81 16     call $1681
1843: 3a 92 19     ld   a,($1992)
1846: cb 7f        bit  7,a
1848: 28 05        jr   z,$184F
184a: cd 8f 18     call $188F
184d: 18 05        jr   $1854
184f: 3e a0        ld   a,$A0
1851: cd ea 18     call $18EA
1854: 3e ff        ld   a,$FF
1856: c9           ret
1857: 21 f5 18     ld   hl,$18F5
185a: 11 04 00     ld   de,$0004
185d: 3e 09        ld   a,$09
185f: 47           ld   b,a
1860: 79           ld   a,c
1861: be           cp   (hl)
1862: 28 05        jr   z,$1869
1864: 19           add  hl,de
1865: 10 f9        djnz $1860
1867: af           xor  a
1868: c9           ret
1869: 11 8e 19     ld   de,$198E
186c: 1a           ld   a,(de)
186d: e6 07        and  $07
186f: 57           ld   d,a
1870: 23           inc  hl
1871: 7e           ld   a,(hl)
1872: e6 07        and  $07
1874: ba           cp   d
1875: 28 06        jr   z,$187D
1877: 2b           dec  hl
1878: 11 04 00     ld   de,$0004
187b: 18 e7        jr   $1864
187d: 7e           ld   a,(hl)
187e: cb 7f        bit  7,a
1880: 20 e5        jr   nz,$1867
1882: 23           inc  hl
1883: 7e           ld   a,(hl)
1884: 23           inc  hl
1885: 66           ld   h,(hl)
1886: 6f           ld   l,a
1887: 11 8c 18     ld   de,$188C
188a: d5           push de
188b: e9           jp   (hl)
188c: 3e ff        ld   a,$FF
188e: c9           ret
188f: 3a 29 27     ld   a,($2729)
1892: b7           or   a
1893: 3e a0        ld   a,$A0
1895: 28 02        jr   z,$1899
1897: 3e a1        ld   a,$A1
1899: c3 ea 18     jp   $18EA
189c: 3e c0        ld   a,$C0
189e: c3 ea 18     jp   $18EA
18a1: 3e c1        ld   a,$C1
18a3: c3 ea 18     jp   $18EA
18a6: db 30        in   a,($30)
18a8: e6 f0        and  $F0
18aa: f5           push af
18ab: cb c7        set  0,a
18ad: d3 18        out  ($18),a
18af: f1           pop  af
18b0: d3 18        out  ($18),a
18b2: c9           ret
18b3: 21 8e 19     ld   hl,$198E
18b6: d6 84        sub  $84
18b8: 28 21        jr   z,$18DB
18ba: 3d           dec  a
18bb: 28 1b        jr   z,$18D8
18bd: 3d           dec  a
18be: 28 1b        jr   z,$18DB
18c0: 3d           dec  a
18c1: 28 15        jr   z,$18D8
18c3: d6 03        sub  $03
18c5: 28 1a        jr   z,$18E1
18c7: 3d           dec  a
18c8: 28 14        jr   z,$18DE
18ca: 3d           dec  a
18cb: 28 1a        jr   z,$18E7
18cd: 3d           dec  a
18ce: 28 14        jr   z,$18E4
18d0: 3d           dec  a
18d1: 28 0e        jr   z,$18E1
18d3: 3d           dec  a
18d4: 28 08        jr   z,$18DE
18d6: af           xor  a
18d7: c9           ret
18d8: cb c6        set  0,(hl)
18da: c9           ret
18db: cb 86        res  0,(hl)
18dd: c9           ret
18de: cb ce        set  1,(hl)
18e0: c9           ret
18e1: cb 8e        res  1,(hl)
18e3: c9           ret
18e4: cb d6        set  2,(hl)
18e6: c9           ret
18e7: cb 96        res  2,(hl)
18e9: c9           ret
18ea: f5           push af
18eb: db 12        in   a,($12)
18ed: e6 04        and  $04
18ef: 28 fa        jr   z,$18EB
18f1: f1           pop  af
18f2: d3 10        out  ($10),a
18f4: c9           ret
18f5: 0e 02        ld   c,$02
18f7: 19           add  hl,de
18f8: 19           add  hl,de
18f9: 0f           rrca
18fa: 02           ld   (bc),a
18fb: 20 19        jr   nz,$1916
18fd: 1f           rra
18fe: 82           add  a,d
18ff: 29           add  hl,hl
1900: 19           add  hl,de
1901: 1e 02        ld   e,$02
1903: 2a 19 73     ld   hl,($7319)
1906: 02           ld   (bc),a
1907: 37           scf
1908: 19           add  hl,de
1909: 73           ld   (hl),e
190a: 06 48        ld   b,$48
190c: f5           push af
190d: 72           ld   (hl),d
190e: 02           ld   (bc),a
190f: 46           ld   b,(hl)
1910: 19           add  hl,de
1911: 05           dec  b
1912: 02           ld   (bc),a
1913: 59           ld   e,c
1914: 19           add  hl,de
1915: 1e 04        ld   e,$04
1917: 5f           ld   e,a
1918: 19           add  hl,de
1919: 3a 9a 4f     ld   a,($4F9A)
191c: ee 01        xor  $01
191e: 18 11        jr   $1931
1920: 3a 9a 4f     ld   a,($4F9A)
1923: ee 02        xor  $02
1925: e6 03        and  $03
1927: 18 08        jr   $1931
1929: c9           ret
192a: 3a 9a 4f     ld   a,($4F9A)
192d: ee 04        xor  $04
192f: e6 05        and  $05
1931: 32 9a 4f     ld   ($4F9A),a
1934: c3 59 40     jp   $4059
1937: 3a 66 f0     ld   a,($F066)
193a: e6 3f        and  $3F
193c: c0           ret  nz
193d: 3a 66 f0     ld   a,($F066)
1940: cb ff        set  7,a
1942: 32 66 f0     ld   ($F066),a
1945: c9           ret
1946: 21 66 f0     ld   hl,$F066
1949: cb 46        bit  0,(hl)
194b: c0           ret  nz
194c: 3a c4 4f     ld   a,($4FC4)
194f: b7           or   a
1950: c0           ret  nz
1951: 3a f8 54     ld   a,($54F8)
1954: b7           or   a
1955: c0           ret  nz
1956: cb ce        set  1,(hl)
1958: c9           ret
1959: 21 66 f0     ld   hl,$F066
195c: cb c6        set  0,(hl)
195e: c9           ret
195f: 3a 66 f0     ld   a,($F066)
1962: e6 ff        and  $FF
1964: c0           ret  nz
1965: cb df        set  3,a
1967: 32 66 f0     ld   ($F066),a
196a: c9           ret
196b: 00           nop
196c: bc           cp   h
196d: 80           add  a,b
196e: bc           cp   h
196f: 00           nop
1970: bd           cp   l
1971: 80           add  a,b
1972: bd           cp   l
1973: 00           nop
1974: be           cp   (hl)
1975: 80           add  a,b
1976: be           cp   (hl)
1977: 00           nop
1978: be           cp   (hl)
1979: 80           add  a,b
197a: be           cp   (hl)
197b: e6 07        and  $07
197d: cb 27        sla  a
197f: f6 41        or   $41
1981: d3 10        out  ($10),a
1983: c9           ret
1984: e6 07        and  $07
1986: cb 27        sla  a
1988: f6 40        or   $40
198a: d3 10        out  ($10),a
198c: c9           ret
198d: 00           nop
198e: 00           nop
198f: 00           nop
1990: 00           nop
1991: 42           ld   b,d
1992: 00           nop
1993: 00           nop
1994: 00           nop
1995: 00           nop
1996: 00           nop
1997: 00           nop
1998: 00           nop
1999: 00           nop
199a: 00           nop
199b: 00           nop
199c: 00           nop
199d: 00           nop
199e: 00           nop
199f: 00           nop
19a0: 00           nop
19a1: 00           nop
19a2: 00           nop
19a3: 00           nop
19a4: 00           nop
19a5: 00           nop
19a6: 00           nop
19a7: 00           nop
19a8: 00           nop
19a9: 00           nop
19aa: 00           nop
19ab: 00           nop
19ac: 00           nop
19ad: 00           nop
19ae: 00           nop
19af: 00           nop
19b0: 00           nop
19b1: 00           nop
19b2: 00           nop
19b3: 00           nop
19b4: 00           nop
19b5: 00           nop
19b6: 00           nop
19b7: 00           nop
19b8: 00           nop
19b9: 00           nop
19ba: 00           nop
19bb: 00           nop
19bc: 00           nop
19bd: 00           nop
19be: 00           nop
19bf: 00           nop
19c0: 00           nop
19c1: 00           nop
19c2: 00           nop
19c3: 00           nop
19c4: 00           nop
19c5: 00           nop
19c6: 00           nop
19c7: 00           nop
19c8: 00           nop
19c9: 00           nop
19ca: 00           nop
19cb: 00           nop
19cc: 00           nop
19cd: 00           nop
19ce: 00           nop
19cf: 00           nop
19d0: 00           nop
19d1: 00           nop
19d2: 00           nop
19d3: 00           nop
19d4: 00           nop
19d5: 00           nop
19d6: 00           nop
19d7: 00           nop
19d8: 00           nop
19d9: 00           nop
19da: 00           nop
19db: 00           nop
19dc: 00           nop
19dd: 00           nop
19de: 00           nop
19df: 00           nop
19e0: 00           nop
19e1: 00           nop
19e2: 00           nop
19e3: 00           nop
19e4: 00           nop
19e5: 00           nop
19e6: 00           nop
19e7: 00           nop
19e8: 00           nop
19e9: 00           nop
19ea: 00           nop
19eb: 00           nop
19ec: 00           nop
19ed: 00           nop
19ee: 00           nop
19ef: 00           nop
19f0: 00           nop
19f1: 00           nop
19f2: 00           nop
19f3: 00           nop
19f4: 00           nop
19f5: 00           nop
19f6: 00           nop
19f7: 00           nop
19f8: 00           nop
19f9: 00           nop
19fa: 00           nop
19fb: 00           nop
19fc: 00           nop
19fd: 00           nop
19fe: 00           nop
19ff: 00           nop
1a00: 00           nop
1a01: 00           nop
1a02: 00           nop
1a03: 00           nop
1a04: 00           nop
1a05: 00           nop
1a06: 00           nop
1a07: 00           nop
1a08: 00           nop
1a09: 00           nop
1a0a: 00           nop
1a0b: 00           nop
1a0c: 00           nop
1a0d: 00           nop
1a0e: 00           nop
1a0f: 00           nop
1a10: 00           nop
1a11: 00           nop
1a12: 00           nop
1a13: 00           nop
1a14: 00           nop
1a15: 00           nop
1a16: 00           nop
1a17: 00           nop
1a18: 00           nop
1a19: 00           nop
1a1a: 00           nop
1a1b: 00           nop
1a1c: 00           nop
1a1d: 00           nop
1a1e: 00           nop
1a1f: 00           nop
1a20: 00           nop
1a21: 00           nop
1a22: 00           nop
1a23: 00           nop
1a24: 00           nop
1a25: 00           nop
1a26: 00           nop
1a27: 00           nop
1a28: 00           nop
1a29: 00           nop
1a2a: 00           nop
1a2b: 00           nop
1a2c: 00           nop
1a2d: 00           nop
1a2e: 00           nop
1a2f: 00           nop
1a30: 00           nop
1a31: 00           nop
1a32: 00           nop
1a33: 00           nop
1a34: 00           nop
1a35: 00           nop
1a36: 00           nop
1a37: 00           nop
1a38: 00           nop
1a39: 00           nop
1a3a: 00           nop
1a3b: 00           nop
1a3c: 00           nop
1a3d: 00           nop
1a3e: 00           nop
1a3f: 00           nop
1a40: 00           nop
1a41: 00           nop
1a42: 00           nop
1a43: 00           nop
1a44: 00           nop
1a45: 00           nop
1a46: 00           nop
1a47: 00           nop
1a48: 00           nop
1a49: 00           nop
1a4a: 00           nop
1a4b: 00           nop
1a4c: 00           nop
1a4d: 00           nop
1a4e: 00           nop
1a4f: 00           nop
1a50: 00           nop
1a51: 00           nop
1a52: 00           nop
1a53: 00           nop
1a54: 00           nop
1a55: 00           nop
1a56: 00           nop
1a57: 00           nop
1a58: 00           nop
1a59: 00           nop
1a5a: 00           nop
1a5b: 00           nop
1a5c: 00           nop
1a5d: 00           nop
1a5e: 00           nop
1a5f: 00           nop
1a60: 00           nop
1a61: 00           nop
1a62: 00           nop
1a63: 00           nop
1a64: 00           nop
1a65: 00           nop
1a66: 00           nop
1a67: 00           nop
1a68: 00           nop
1a69: 00           nop
1a6a: 00           nop
1a6b: 00           nop
1a6c: 00           nop
1a6d: 00           nop
1a6e: 00           nop
1a6f: 00           nop
1a70: 00           nop
1a71: 00           nop
1a72: 00           nop
1a73: 00           nop
1a74: 00           nop
1a75: 00           nop
1a76: 00           nop
1a77: 00           nop
1a78: 00           nop
1a79: 00           nop
1a7a: 00           nop
1a7b: 00           nop
1a7c: 00           nop
1a7d: 00           nop
1a7e: 00           nop
1a7f: 00           nop
1a80: 00           nop
1a81: 00           nop
1a82: 00           nop
1a83: 00           nop
1a84: 00           nop
1a85: 00           nop
1a86: 00           nop
1a87: 00           nop
1a88: 00           nop
1a89: 00           nop
1a8a: 00           nop
1a8b: 00           nop
1a8c: 00           nop
1a8d: 00           nop
1a8e: 00           nop
1a8f: 00           nop
1a90: 00           nop
1a91: 00           nop
1a92: 00           nop
1a93: 00           nop
1a94: 00           nop
1a95: 00           nop
1a96: 00           nop
1a97: 00           nop
1a98: 00           nop
1a99: 00           nop
1a9a: 00           nop
1a9b: 00           nop
1a9c: 00           nop
1a9d: 00           nop
1a9e: 00           nop
1a9f: 00           nop
1aa0: 00           nop
1aa1: 00           nop
1aa2: 00           nop
1aa3: 00           nop
1aa4: 00           nop
1aa5: 00           nop
1aa6: 00           nop
1aa7: 00           nop
1aa8: 00           nop
1aa9: 00           nop
1aaa: 00           nop
1aab: 00           nop
1aac: 00           nop
1aad: 00           nop
1aae: 00           nop
1aaf: 00           nop
1ab0: 00           nop
1ab1: 00           nop
1ab2: 00           nop
1ab3: 00           nop
1ab4: 00           nop
1ab5: 00           nop
1ab6: 00           nop
1ab7: 00           nop
1ab8: 00           nop
1ab9: 00           nop
1aba: 00           nop
1abb: 00           nop
1abc: 00           nop
1abd: 00           nop
1abe: 00           nop
1abf: 00           nop
1ac0: 00           nop
1ac1: 00           nop
1ac2: 00           nop
1ac3: 00           nop
1ac4: 00           nop
1ac5: 00           nop
1ac6: 00           nop
1ac7: 00           nop
1ac8: 00           nop
1ac9: 00           nop
1aca: 00           nop
1acb: 00           nop
1acc: 00           nop
1acd: 00           nop
1ace: 00           nop
1acf: 00           nop
1ad0: 00           nop
1ad1: 00           nop
1ad2: 00           nop
1ad3: 00           nop
1ad4: 00           nop
1ad5: 00           nop
1ad6: 00           nop
1ad7: 00           nop
1ad8: 00           nop
1ad9: 00           nop
1ada: 00           nop
1adb: 00           nop
1adc: 00           nop
1add: 00           nop
1ade: 00           nop
1adf: 00           nop
1ae0: 00           nop
1ae1: 00           nop
1ae2: 00           nop
1ae3: 00           nop
1ae4: 00           nop
1ae5: 00           nop
1ae6: 00           nop
1ae7: 00           nop
1ae8: 00           nop
1ae9: 00           nop
1aea: 00           nop
1aeb: 00           nop
1aec: 00           nop
1aed: 00           nop
1aee: 00           nop
1aef: 00           nop
1af0: 00           nop
1af1: 00           nop
1af2: 00           nop
1af3: 00           nop
1af4: 00           nop
1af5: 00           nop
1af6: 00           nop
1af7: 00           nop
1af8: 00           nop
1af9: 00           nop
1afa: 00           nop
1afb: 00           nop
1afc: 00           nop
1afd: 00           nop
1afe: 00           nop
1aff: 00           nop
1b00: 00           nop
1b01: 00           nop
1b02: 00           nop
1b03: 00           nop
1b04: 00           nop
1b05: 00           nop
1b06: 00           nop
1b07: 00           nop
1b08: 00           nop
1b09: 00           nop
1b0a: 00           nop
1b0b: 00           nop
1b0c: 00           nop
1b0d: 00           nop
1b0e: 00           nop
1b0f: 00           nop
1b10: 00           nop
1b11: 00           nop
1b12: 00           nop
1b13: 00           nop
1b14: 00           nop
1b15: 00           nop
1b16: 00           nop
1b17: 00           nop
1b18: 00           nop
1b19: 00           nop
1b1a: 00           nop
1b1b: 00           nop
1b1c: 00           nop
1b1d: 00           nop
1b1e: 00           nop
1b1f: 00           nop
1b20: 00           nop
1b21: 00           nop
1b22: 00           nop
1b23: 00           nop
1b24: 00           nop
1b25: 00           nop
1b26: 00           nop
1b27: 00           nop
1b28: 00           nop
1b29: 00           nop
1b2a: 00           nop
1b2b: 00           nop
1b2c: 00           nop
1b2d: 00           nop
1b2e: 00           nop
1b2f: 00           nop
1b30: 00           nop
1b31: 00           nop
1b32: 00           nop
1b33: 00           nop
1b34: 00           nop
1b35: 00           nop
1b36: 00           nop
1b37: 00           nop
1b38: 00           nop
1b39: 00           nop
1b3a: 00           nop
1b3b: 00           nop
1b3c: 00           nop
1b3d: 00           nop
1b3e: 00           nop
1b3f: 00           nop
1b40: 00           nop
1b41: 00           nop
1b42: 00           nop
1b43: 00           nop
1b44: 00           nop
1b45: 00           nop
1b46: 00           nop
1b47: 00           nop
1b48: 00           nop
1b49: 00           nop
1b4a: 00           nop
1b4b: 00           nop
1b4c: 00           nop
1b4d: 00           nop
1b4e: 00           nop
1b4f: 00           nop
1b50: 00           nop
1b51: 00           nop
1b52: 00           nop
1b53: 00           nop
1b54: 00           nop
1b55: 00           nop
1b56: 00           nop
1b57: 00           nop
1b58: 00           nop
1b59: 00           nop
1b5a: 00           nop
1b5b: 00           nop
1b5c: 00           nop
1b5d: 00           nop
1b5e: 00           nop
1b5f: 00           nop
1b60: 00           nop
1b61: 00           nop
1b62: 00           nop
1b63: 00           nop
1b64: 00           nop
1b65: 00           nop
1b66: 00           nop
1b67: 00           nop
1b68: 00           nop
1b69: 00           nop
1b6a: 00           nop
1b6b: 00           nop
1b6c: 00           nop
1b6d: 00           nop
1b6e: 00           nop
1b6f: 00           nop
1b70: 00           nop
1b71: 00           nop
1b72: 00           nop
1b73: 00           nop
1b74: 00           nop
1b75: 00           nop
1b76: 00           nop
1b77: 00           nop
1b78: 00           nop
1b79: 00           nop
1b7a: 00           nop
1b7b: 00           nop
1b7c: 00           nop
1b7d: 00           nop
1b7e: 00           nop
1b7f: 00           nop
1b80: 00           nop
1b81: 00           nop
1b82: 00           nop
1b83: 00           nop
1b84: 00           nop
1b85: 00           nop
1b86: 00           nop
1b87: 00           nop
1b88: 00           nop
1b89: 00           nop
1b8a: 00           nop
1b8b: 00           nop
1b8c: 00           nop
1b8d: 00           nop
1b8e: 00           nop
1b8f: 00           nop
1b90: 00           nop
1b91: 00           nop
1b92: 00           nop
1b93: 00           nop
1b94: 00           nop
1b95: 00           nop
1b96: 00           nop
1b97: 00           nop
1b98: 00           nop
1b99: 00           nop
1b9a: 00           nop
1b9b: 00           nop
1b9c: 00           nop
1b9d: 00           nop
1b9e: 00           nop
1b9f: 00           nop
1ba0: 00           nop
1ba1: 00           nop
1ba2: 00           nop
1ba3: 00           nop
1ba4: 00           nop
1ba5: 00           nop
1ba6: 00           nop
1ba7: 00           nop
1ba8: 00           nop
1ba9: 00           nop
1baa: 00           nop
1bab: 00           nop
1bac: 00           nop
1bad: 00           nop
1bae: 00           nop
1baf: 00           nop
1bb0: 00           nop
1bb1: 00           nop
1bb2: 00           nop
1bb3: 00           nop
1bb4: 00           nop
1bb5: 00           nop
1bb6: 00           nop
1bb7: 00           nop
1bb8: 00           nop
1bb9: 00           nop
1bba: 00           nop
1bbb: 00           nop
1bbc: 00           nop
1bbd: 00           nop
1bbe: 00           nop
1bbf: 00           nop
1bc0: 00           nop
1bc1: 00           nop
1bc2: 00           nop
1bc3: 00           nop
1bc4: 00           nop
1bc5: 00           nop
1bc6: 00           nop
1bc7: 00           nop
1bc8: 00           nop
1bc9: 00           nop
1bca: 00           nop
1bcb: 00           nop
1bcc: 00           nop
1bcd: 00           nop
1bce: 00           nop
1bcf: 00           nop
1bd0: 00           nop
1bd1: 00           nop
1bd2: 00           nop
1bd3: 00           nop
1bd4: 00           nop
1bd5: 00           nop
1bd6: 00           nop
1bd7: 00           nop
1bd8: 00           nop
1bd9: 00           nop
1bda: 00           nop
1bdb: 00           nop
1bdc: 00           nop
1bdd: 00           nop
1bde: 00           nop
1bdf: 00           nop
1be0: 00           nop
1be1: 00           nop
1be2: 00           nop
1be3: 00           nop
1be4: 00           nop
1be5: 00           nop
1be6: 00           nop
1be7: 00           nop
1be8: 00           nop
1be9: 00           nop
1bea: 00           nop
1beb: 00           nop
1bec: 00           nop
1bed: 00           nop
1bee: 00           nop
1bef: 00           nop
1bf0: 00           nop
1bf1: 00           nop
1bf2: 00           nop
1bf3: 00           nop
1bf4: 00           nop
1bf5: 00           nop
1bf6: 00           nop
1bf7: 00           nop
1bf8: 00           nop
1bf9: 00           nop
1bfa: 00           nop
1bfb: 00           nop
1bfc: 00           nop
1bfd: 00           nop
1bfe: 00           nop
1bff: 00           nop
1c00: 00           nop
1c01: 00           nop
1c02: 00           nop
1c03: 00           nop
1c04: 00           nop
1c05: 00           nop
1c06: 00           nop
1c07: 00           nop
1c08: 00           nop
1c09: 00           nop
1c0a: 00           nop
1c0b: 00           nop
1c0c: 00           nop
1c0d: 00           nop
1c0e: 00           nop
1c0f: 00           nop
1c10: 00           nop
1c11: 00           nop
1c12: 00           nop
1c13: 00           nop
1c14: 00           nop
1c15: 00           nop
1c16: 00           nop
1c17: 00           nop
1c18: 00           nop
1c19: 00           nop
1c1a: 00           nop
1c1b: 00           nop
1c1c: 00           nop
1c1d: 00           nop
1c1e: 00           nop
1c1f: 00           nop
1c20: 00           nop
1c21: 00           nop
1c22: 00           nop
1c23: 00           nop
1c24: 00           nop
1c25: 00           nop
1c26: 00           nop
1c27: 00           nop
1c28: 00           nop
1c29: 00           nop
1c2a: 00           nop
1c2b: 00           nop
1c2c: 00           nop
1c2d: 00           nop
1c2e: 00           nop
1c2f: 00           nop
1c30: 00           nop
1c31: 00           nop
1c32: 00           nop
1c33: 00           nop
1c34: 00           nop
1c35: 00           nop
1c36: 00           nop
1c37: 00           nop
1c38: 00           nop
1c39: 00           nop
1c3a: 00           nop
1c3b: 00           nop
1c3c: 00           nop
1c3d: 00           nop
1c3e: 00           nop
1c3f: 00           nop
1c40: 00           nop
1c41: 00           nop
1c42: 00           nop
1c43: 00           nop
1c44: 00           nop
1c45: 00           nop
1c46: 00           nop
1c47: 00           nop
1c48: 00           nop
1c49: 00           nop
1c4a: 00           nop
1c4b: 00           nop
1c4c: 00           nop
1c4d: 00           nop
1c4e: 00           nop
1c4f: 00           nop
1c50: 00           nop
1c51: 00           nop
1c52: 00           nop
1c53: 00           nop
1c54: 00           nop
1c55: 00           nop
1c56: 00           nop
1c57: 00           nop
1c58: 00           nop
1c59: 00           nop
1c5a: 00           nop
1c5b: 00           nop
1c5c: 00           nop
1c5d: 00           nop
1c5e: 00           nop
1c5f: 00           nop
1c60: 00           nop
1c61: 00           nop
1c62: 00           nop
1c63: 00           nop
1c64: 00           nop
1c65: 00           nop
1c66: 00           nop
1c67: 00           nop
1c68: 00           nop
1c69: 00           nop
1c6a: 00           nop
1c6b: 00           nop
1c6c: 00           nop
1c6d: 00           nop
1c6e: 00           nop
1c6f: 00           nop
1c70: 00           nop
1c71: 00           nop
1c72: 00           nop
1c73: 00           nop
1c74: 00           nop
1c75: 00           nop
1c76: 00           nop
1c77: 00           nop
1c78: 00           nop
1c79: 00           nop
1c7a: 00           nop
1c7b: 00           nop
1c7c: 00           nop
1c7d: 00           nop
1c7e: 00           nop
1c7f: 00           nop
1c80: 00           nop
1c81: 00           nop
1c82: 00           nop
1c83: 00           nop
1c84: 00           nop
1c85: 00           nop
1c86: 00           nop
1c87: 00           nop
1c88: 00           nop
1c89: 00           nop
1c8a: 00           nop
1c8b: 00           nop
1c8c: 00           nop
1c8d: 00           nop
1c8e: 00           nop
1c8f: 00           nop
1c90: 00           nop
1c91: 00           nop
1c92: 00           nop
1c93: 00           nop
1c94: 00           nop
1c95: 00           nop
1c96: 00           nop
1c97: 00           nop
1c98: 00           nop
1c99: 00           nop
1c9a: 00           nop
1c9b: 00           nop
1c9c: 00           nop
1c9d: 00           nop
1c9e: 00           nop
1c9f: 00           nop
1ca0: 00           nop
1ca1: 00           nop
1ca2: 00           nop
1ca3: 00           nop
1ca4: 00           nop
1ca5: 00           nop
1ca6: 00           nop
1ca7: 00           nop
1ca8: 00           nop
1ca9: 00           nop
1caa: 00           nop
1cab: 00           nop
1cac: 00           nop
1cad: 00           nop
1cae: 00           nop
1caf: 00           nop
1cb0: 00           nop
1cb1: 00           nop
1cb2: 00           nop
1cb3: 00           nop
1cb4: 00           nop
1cb5: 00           nop
1cb6: 00           nop
1cb7: 00           nop
1cb8: 00           nop
1cb9: 00           nop
1cba: 00           nop
1cbb: 00           nop
1cbc: 00           nop
1cbd: 00           nop
1cbe: 00           nop
1cbf: 00           nop
1cc0: 00           nop
1cc1: 00           nop
1cc2: 00           nop
1cc3: 00           nop
1cc4: 00           nop
1cc5: 00           nop
1cc6: 00           nop
1cc7: 00           nop
1cc8: 00           nop
1cc9: 00           nop
1cca: 00           nop
1ccb: 00           nop
1ccc: 00           nop
1ccd: 00           nop
1cce: 00           nop
1ccf: 00           nop
1cd0: 00           nop
1cd1: 00           nop
1cd2: 00           nop
1cd3: 00           nop
1cd4: 00           nop
1cd5: 00           nop
1cd6: 00           nop
1cd7: 00           nop
1cd8: 00           nop
1cd9: 00           nop
1cda: 00           nop
1cdb: 00           nop
1cdc: 00           nop
1cdd: 00           nop
1cde: 00           nop
1cdf: 00           nop
1ce0: 00           nop
1ce1: 00           nop
1ce2: 00           nop
1ce3: 00           nop
1ce4: 00           nop
1ce5: 00           nop
1ce6: 00           nop
1ce7: 00           nop
1ce8: 00           nop
1ce9: 00           nop
1cea: 00           nop
1ceb: 00           nop
1cec: 00           nop
1ced: 00           nop
1cee: 00           nop
1cef: 00           nop
1cf0: 00           nop
1cf1: 00           nop
1cf2: 00           nop
1cf3: 00           nop
1cf4: 00           nop
1cf5: 00           nop
1cf6: 00           nop
1cf7: 00           nop
1cf8: 00           nop
1cf9: 00           nop
1cfa: 00           nop
1cfb: 00           nop
1cfc: 00           nop
1cfd: 00           nop
1cfe: 00           nop
1cff: 00           nop
1d00: 00           nop
1d01: 00           nop
1d02: 00           nop
1d03: 00           nop
1d04: 00           nop
1d05: 00           nop
1d06: 00           nop
1d07: 00           nop
1d08: 00           nop
1d09: 00           nop
1d0a: 00           nop
1d0b: 00           nop
1d0c: 00           nop
1d0d: 00           nop
1d0e: 00           nop
1d0f: 00           nop
1d10: 00           nop
1d11: 00           nop
1d12: 00           nop
1d13: 00           nop
1d14: 00           nop
1d15: 00           nop
1d16: 00           nop
1d17: 00           nop
1d18: 00           nop
1d19: 00           nop
1d1a: 00           nop
1d1b: 00           nop
1d1c: 00           nop
1d1d: 00           nop
1d1e: 00           nop
1d1f: 00           nop
1d20: 00           nop
1d21: 00           nop
1d22: 00           nop
1d23: 00           nop
1d24: 00           nop
1d25: 00           nop
1d26: 00           nop
1d27: 00           nop
1d28: 00           nop
1d29: 00           nop
1d2a: 00           nop
1d2b: 00           nop
1d2c: 00           nop
1d2d: 00           nop
1d2e: 00           nop
1d2f: 00           nop
1d30: 00           nop
1d31: 00           nop
1d32: 00           nop
1d33: 00           nop
1d34: 00           nop
1d35: 00           nop
1d36: 00           nop
1d37: 00           nop
1d38: 00           nop
1d39: 00           nop
1d3a: 00           nop
1d3b: 00           nop
1d3c: 00           nop
1d3d: 00           nop
1d3e: 00           nop
1d3f: 00           nop
1d40: 00           nop
1d41: 00           nop
1d42: 00           nop
1d43: 00           nop
1d44: 00           nop
1d45: 00           nop
1d46: 00           nop
1d47: 00           nop
1d48: 00           nop
1d49: 00           nop
1d4a: 00           nop
1d4b: 00           nop
1d4c: 00           nop
1d4d: 00           nop
1d4e: 00           nop
1d4f: 00           nop
1d50: 00           nop
1d51: 00           nop
1d52: 00           nop
1d53: 00           nop
1d54: 00           nop
1d55: 00           nop
1d56: 00           nop
1d57: 00           nop
1d58: 00           nop
1d59: 00           nop
1d5a: 00           nop
1d5b: 00           nop
1d5c: 00           nop
1d5d: 00           nop
1d5e: 00           nop
1d5f: 00           nop
1d60: 00           nop
1d61: 00           nop
1d62: 00           nop
1d63: 00           nop
1d64: 00           nop
1d65: 00           nop
1d66: 00           nop
1d67: 00           nop
1d68: 00           nop
1d69: 00           nop
1d6a: 00           nop
1d6b: 00           nop
1d6c: 00           nop
1d6d: 00           nop
1d6e: 00           nop
1d6f: 00           nop
1d70: 00           nop
1d71: 00           nop
1d72: 00           nop
1d73: 00           nop
1d74: 00           nop
1d75: 00           nop
1d76: 00           nop
1d77: 00           nop
1d78: 00           nop
1d79: 00           nop
1d7a: 00           nop
1d7b: 00           nop
1d7c: 00           nop
1d7d: 00           nop
1d7e: 00           nop
1d7f: 00           nop
1d80: 00           nop
1d81: 00           nop
1d82: 00           nop
1d83: 00           nop
1d84: 00           nop
1d85: 00           nop
1d86: 00           nop
1d87: 00           nop
1d88: 00           nop
1d89: 00           nop
1d8a: 00           nop
1d8b: 00           nop
1d8c: 00           nop
1d8d: 00           nop
1d8e: 00           nop
1d8f: 00           nop
1d90: 00           nop
1d91: 00           nop
1d92: 00           nop
1d93: 00           nop
1d94: 00           nop
1d95: 00           nop
1d96: 00           nop
1d97: 00           nop
1d98: 00           nop
1d99: 00           nop
1d9a: 00           nop
1d9b: 00           nop
1d9c: 00           nop
1d9d: 00           nop
1d9e: 00           nop
1d9f: 00           nop
1da0: 00           nop
1da1: 00           nop
1da2: 00           nop
1da3: 00           nop
1da4: 00           nop
1da5: 00           nop
1da6: 00           nop
1da7: 00           nop
1da8: 00           nop
1da9: 00           nop
1daa: 00           nop
1dab: 00           nop
1dac: 00           nop
1dad: 00           nop
1dae: 00           nop
1daf: 00           nop
1db0: 00           nop
1db1: 00           nop
1db2: 00           nop
1db3: 00           nop
1db4: 00           nop
1db5: 00           nop
1db6: 00           nop
1db7: 00           nop
1db8: 00           nop
1db9: 00           nop
1dba: 00           nop
1dbb: 00           nop
1dbc: 00           nop
1dbd: 00           nop
1dbe: 00           nop
1dbf: 00           nop
1dc0: 00           nop
1dc1: 00           nop
1dc2: 00           nop
1dc3: 00           nop
1dc4: 00           nop
1dc5: 00           nop
1dc6: 00           nop
1dc7: 00           nop
1dc8: 00           nop
1dc9: 00           nop
1dca: 00           nop
1dcb: 00           nop
1dcc: 00           nop
1dcd: 00           nop
1dce: 00           nop
1dcf: 00           nop
1dd0: 00           nop
1dd1: 00           nop
1dd2: 00           nop
1dd3: 00           nop
1dd4: 00           nop
1dd5: 00           nop
1dd6: 00           nop
1dd7: 00           nop
1dd8: 00           nop
1dd9: 00           nop
1dda: 00           nop
1ddb: 00           nop
1ddc: 00           nop
1ddd: 00           nop
1dde: 00           nop
1ddf: 00           nop
1de0: 00           nop
1de1: 00           nop
1de2: 00           nop
1de3: 00           nop
1de4: 00           nop
1de5: 00           nop
1de6: 00           nop
1de7: 00           nop
1de8: 00           nop
1de9: 00           nop
1dea: 00           nop
1deb: 00           nop
1dec: 00           nop
1ded: 00           nop
1dee: 00           nop
1def: 00           nop
1df0: 00           nop
1df1: 00           nop
1df2: 00           nop
1df3: 00           nop
1df4: 00           nop
1df5: 00           nop
1df6: 00           nop
1df7: 00           nop
1df8: 00           nop
1df9: 00           nop
1dfa: 00           nop
1dfb: 00           nop
1dfc: 00           nop
1dfd: 00           nop
1dfe: 00           nop
1dff: 00           nop
1e00: 00           nop
1e01: 00           nop
1e02: 00           nop
1e03: 00           nop
1e04: 00           nop
1e05: 00           nop
1e06: 00           nop
1e07: 00           nop
1e08: 00           nop
1e09: 00           nop
1e0a: 00           nop
1e0b: 00           nop
1e0c: 00           nop
1e0d: 00           nop
1e0e: 00           nop
1e0f: 00           nop
1e10: 00           nop
1e11: 00           nop
1e12: 00           nop
1e13: 00           nop
1e14: 00           nop
1e15: 00           nop
1e16: 00           nop
1e17: 00           nop
1e18: 00           nop
1e19: 00           nop
1e1a: 00           nop
1e1b: 00           nop
1e1c: 00           nop
1e1d: 00           nop
1e1e: 00           nop
1e1f: 00           nop
1e20: 00           nop
1e21: 00           nop
1e22: 00           nop
1e23: 00           nop
1e24: 00           nop
1e25: 00           nop
1e26: 00           nop
1e27: 00           nop
1e28: 00           nop
1e29: 00           nop
1e2a: 00           nop
1e2b: 00           nop
1e2c: 00           nop
1e2d: 00           nop
1e2e: 00           nop
1e2f: 00           nop
1e30: 00           nop
1e31: 00           nop
1e32: 00           nop
1e33: 00           nop
1e34: 00           nop
1e35: 00           nop
1e36: 00           nop
1e37: 00           nop
1e38: 00           nop
1e39: 00           nop
1e3a: 00           nop
1e3b: 00           nop
1e3c: 00           nop
1e3d: 00           nop
1e3e: 00           nop
1e3f: 00           nop
1e40: 00           nop
1e41: 00           nop
1e42: 00           nop
1e43: 00           nop
1e44: 00           nop
1e45: 00           nop
1e46: 00           nop
1e47: 00           nop
1e48: 00           nop
1e49: 00           nop
1e4a: 00           nop
1e4b: 00           nop
1e4c: 00           nop
1e4d: 00           nop
1e4e: 00           nop
1e4f: 00           nop
1e50: 00           nop
1e51: 00           nop
1e52: 00           nop
1e53: 00           nop
1e54: 00           nop
1e55: 00           nop
1e56: 00           nop
1e57: 00           nop
1e58: 00           nop
1e59: 00           nop
1e5a: 00           nop
1e5b: 00           nop
1e5c: 00           nop
1e5d: 00           nop
1e5e: 00           nop
1e5f: 00           nop
1e60: 00           nop
1e61: 00           nop
1e62: 00           nop
1e63: 00           nop
1e64: 00           nop
1e65: 00           nop
1e66: 00           nop
1e67: 00           nop
1e68: 00           nop
1e69: 00           nop
1e6a: 00           nop
1e6b: 00           nop
1e6c: 00           nop
1e6d: 00           nop
1e6e: 00           nop
1e6f: 00           nop
1e70: 00           nop
1e71: 00           nop
1e72: 00           nop
1e73: 00           nop
1e74: 00           nop
1e75: 00           nop
1e76: 00           nop
1e77: 00           nop
1e78: 00           nop
1e79: 00           nop
1e7a: 00           nop
1e7b: 00           nop
1e7c: 00           nop
1e7d: 00           nop
1e7e: 00           nop
1e7f: 00           nop
1e80: 00           nop
1e81: 00           nop
1e82: 00           nop
1e83: 00           nop
1e84: 00           nop
1e85: 00           nop
1e86: 00           nop
1e87: 00           nop
1e88: 00           nop
1e89: 00           nop
1e8a: 00           nop
1e8b: 00           nop
1e8c: 00           nop
1e8d: 00           nop
1e8e: 00           nop
1e8f: 00           nop
1e90: 00           nop
1e91: 00           nop
1e92: 00           nop
1e93: 00           nop
1e94: 00           nop
1e95: 00           nop
1e96: 00           nop
1e97: 00           nop
1e98: 00           nop
1e99: 00           nop
1e9a: 00           nop
1e9b: 00           nop
1e9c: 00           nop
1e9d: 00           nop
1e9e: 00           nop
1e9f: 00           nop
1ea0: 00           nop
1ea1: 00           nop
1ea2: 00           nop
1ea3: 00           nop
1ea4: 00           nop
1ea5: 00           nop
1ea6: 00           nop
1ea7: 00           nop
1ea8: 00           nop
1ea9: 00           nop
1eaa: 00           nop
1eab: 00           nop
1eac: 00           nop
1ead: 00           nop
1eae: 00           nop
1eaf: 00           nop
1eb0: 00           nop
1eb1: 00           nop
1eb2: 00           nop
1eb3: 00           nop
1eb4: 00           nop
1eb5: 00           nop
1eb6: 00           nop
1eb7: 00           nop
1eb8: 00           nop
1eb9: 00           nop
1eba: 00           nop
1ebb: 00           nop
1ebc: 00           nop
1ebd: 00           nop
1ebe: 00           nop
1ebf: 00           nop
1ec0: 00           nop
1ec1: 00           nop
1ec2: 00           nop
1ec3: 00           nop
1ec4: 00           nop
1ec5: 00           nop
1ec6: 00           nop
1ec7: 00           nop
1ec8: 00           nop
1ec9: 00           nop
1eca: 00           nop
1ecb: 00           nop
1ecc: 00           nop
1ecd: 00           nop
1ece: 00           nop
1ecf: 00           nop
1ed0: 00           nop
1ed1: 00           nop
1ed2: 00           nop
1ed3: 00           nop
1ed4: 00           nop
1ed5: 00           nop
1ed6: 00           nop
1ed7: 00           nop
1ed8: 00           nop
1ed9: 00           nop
1eda: 00           nop
1edb: 00           nop
1edc: 00           nop
1edd: 00           nop
1ede: 00           nop
1edf: 00           nop
1ee0: 00           nop
1ee1: 00           nop
1ee2: 00           nop
1ee3: 00           nop
1ee4: 00           nop
1ee5: 00           nop
1ee6: 00           nop
1ee7: 00           nop
1ee8: 00           nop
1ee9: 00           nop
1eea: 00           nop
1eeb: 00           nop
1eec: 00           nop
1eed: 00           nop
1eee: 00           nop
1eef: 00           nop
1ef0: 00           nop
1ef1: 00           nop
1ef2: 00           nop
1ef3: 00           nop
1ef4: 00           nop
1ef5: 00           nop
1ef6: 00           nop
1ef7: 00           nop
1ef8: 00           nop
1ef9: 00           nop
1efa: 00           nop
1efb: 00           nop
1efc: 00           nop
1efd: 00           nop
1efe: 00           nop
1eff: 00           nop
1f00: 00           nop
1f01: 00           nop
1f02: 00           nop
1f03: 00           nop
1f04: 00           nop
1f05: 00           nop
1f06: 00           nop
1f07: 00           nop
1f08: 00           nop
1f09: 00           nop
1f0a: 00           nop
1f0b: 00           nop
1f0c: 00           nop
1f0d: 00           nop
1f0e: 00           nop
1f0f: 00           nop
1f10: 00           nop
1f11: 00           nop
1f12: 00           nop
1f13: 00           nop
1f14: 00           nop
1f15: 00           nop
1f16: 00           nop
1f17: 00           nop
1f18: 00           nop
1f19: 00           nop
1f1a: 00           nop
1f1b: 00           nop
1f1c: 00           nop
1f1d: 00           nop
1f1e: 00           nop
1f1f: 00           nop
1f20: 00           nop
1f21: 00           nop
1f22: 00           nop
1f23: 00           nop
1f24: 00           nop
1f25: 00           nop
1f26: 00           nop
1f27: 00           nop
1f28: 00           nop
1f29: 00           nop
1f2a: 00           nop
1f2b: 00           nop
1f2c: 00           nop
1f2d: 00           nop
1f2e: 00           nop
1f2f: 00           nop
1f30: 00           nop
1f31: 00           nop
1f32: 00           nop
1f33: 00           nop
1f34: 00           nop
1f35: 00           nop
1f36: 00           nop
1f37: 00           nop
1f38: 00           nop
1f39: 00           nop
1f3a: 00           nop
1f3b: 00           nop
1f3c: 00           nop
1f3d: 00           nop
1f3e: 00           nop
1f3f: 00           nop
1f40: 00           nop
1f41: 00           nop
1f42: 00           nop
1f43: 00           nop
1f44: 00           nop
1f45: 00           nop
1f46: 00           nop
1f47: 00           nop
1f48: 00           nop
1f49: 00           nop
1f4a: 00           nop
1f4b: 00           nop
1f4c: 00           nop
1f4d: 00           nop
1f4e: 00           nop
1f4f: 00           nop
1f50: 00           nop
1f51: 00           nop
1f52: 00           nop
1f53: 00           nop
1f54: 00           nop
1f55: 00           nop
1f56: 00           nop
1f57: 00           nop
1f58: 00           nop
1f59: 00           nop
1f5a: 00           nop
1f5b: 00           nop
1f5c: 00           nop
1f5d: 00           nop
1f5e: 00           nop
1f5f: 00           nop
1f60: 00           nop
1f61: 00           nop
1f62: 00           nop
1f63: 00           nop
1f64: 00           nop
1f65: 00           nop
1f66: 00           nop
1f67: 00           nop
1f68: 00           nop
1f69: 00           nop
1f6a: 00           nop
1f6b: 00           nop
1f6c: 00           nop
1f6d: 00           nop
1f6e: 00           nop
1f6f: 00           nop
1f70: 00           nop
1f71: 00           nop
1f72: 00           nop
1f73: 00           nop
1f74: 00           nop
1f75: 00           nop
1f76: 00           nop
1f77: 00           nop
1f78: 00           nop
1f79: 00           nop
1f7a: 00           nop
1f7b: 00           nop
1f7c: 00           nop
1f7d: 00           nop
1f7e: 00           nop
1f7f: 00           nop
1f80: 00           nop
1f81: 00           nop
1f82: 00           nop
1f83: 00           nop
1f84: 00           nop
1f85: 00           nop
1f86: 00           nop
1f87: 00           nop
1f88: 00           nop
1f89: 00           nop
1f8a: 00           nop
1f8b: 00           nop
1f8c: 00           nop
1f8d: 00           nop
1f8e: 00           nop
1f8f: 00           nop
1f90: 00           nop
1f91: 00           nop
1f92: 00           nop
1f93: 00           nop
1f94: 00           nop
1f95: 00           nop
1f96: 00           nop
1f97: 00           nop
1f98: 00           nop
1f99: 00           nop
1f9a: 00           nop
1f9b: 00           nop
1f9c: 00           nop
1f9d: 00           nop
1f9e: 00           nop
1f9f: 00           nop
1fa0: 00           nop
1fa1: 00           nop
1fa2: 00           nop
1fa3: 00           nop
1fa4: 00           nop
1fa5: 00           nop
1fa6: 00           nop
1fa7: 00           nop
1fa8: 00           nop
1fa9: 00           nop
1faa: 00           nop
1fab: 00           nop
1fac: 00           nop
1fad: 00           nop
1fae: 00           nop
1faf: 00           nop
1fb0: 00           nop
1fb1: 00           nop
1fb2: 00           nop
1fb3: 00           nop
1fb4: 00           nop
1fb5: 00           nop
1fb6: 00           nop
1fb7: 00           nop
1fb8: 00           nop
1fb9: 00           nop
1fba: 00           nop
1fbb: 00           nop
1fbc: 00           nop
1fbd: 00           nop
1fbe: 00           nop
1fbf: 00           nop
1fc0: 00           nop
1fc1: 00           nop
1fc2: 00           nop
1fc3: 00           nop
1fc4: 00           nop
1fc5: 00           nop
1fc6: 00           nop
1fc7: 00           nop
1fc8: 00           nop
1fc9: 00           nop
1fca: 00           nop
1fcb: 00           nop
1fcc: 00           nop
1fcd: 00           nop
1fce: 00           nop
1fcf: 00           nop
1fd0: 00           nop
1fd1: 00           nop
1fd2: 00           nop
1fd3: 00           nop
1fd4: 00           nop
1fd5: 00           nop
1fd6: 00           nop
1fd7: 00           nop
1fd8: 00           nop
1fd9: 00           nop
1fda: 00           nop
1fdb: 00           nop
1fdc: 00           nop
1fdd: 00           nop
1fde: 00           nop
1fdf: 00           nop
1fe0: 00           nop
1fe1: 00           nop
1fe2: 00           nop
1fe3: 00           nop
1fe4: 00           nop
1fe5: 00           nop
1fe6: 00           nop
1fe7: 00           nop
1fe8: 00           nop
1fe9: 00           nop
1fea: 00           nop
1feb: 00           nop
1fec: 00           nop
1fed: 00           nop
1fee: 00           nop
1fef: 00           nop
1ff0: 00           nop
1ff1: 00           nop
1ff2: 00           nop
1ff3: 00           nop
1ff4: 00           nop
1ff5: 00           nop
1ff6: 00           nop
1ff7: 00           nop
1ff8: 00           nop
1ff9: 00           nop
1ffa: 00           nop
1ffb: 00           nop
1ffc: 00           nop
1ffd: 00           nop
1ffe: 00           nop
1fff: 00           nop
2000: 00           nop
2001: 00           nop
2002: 00           nop
2003: 00           nop
2004: 00           nop
2005: 00           nop
2006: 00           nop
2007: 00           nop
2008: 00           nop
2009: 00           nop
200a: 00           nop
200b: 00           nop
200c: 00           nop
200d: 00           nop
200e: 00           nop
200f: 00           nop
2010: 00           nop
2011: 00           nop
2012: 00           nop
2013: 00           nop
2014: 00           nop
2015: 00           nop
2016: 00           nop
2017: 00           nop
2018: 00           nop
2019: 00           nop
201a: 00           nop
201b: 00           nop
201c: 00           nop
201d: 00           nop
201e: 00           nop
201f: 00           nop
2020: 00           nop
2021: 00           nop
2022: 00           nop
2023: 00           nop
2024: 00           nop
2025: 00           nop
2026: 00           nop
2027: 00           nop
2028: 00           nop
2029: 00           nop
202a: 00           nop
202b: 00           nop
202c: 00           nop
202d: 00           nop
202e: 00           nop
202f: 00           nop
2030: 00           nop
2031: 00           nop
2032: 00           nop
2033: 00           nop
2034: 00           nop
2035: 00           nop
2036: 00           nop
2037: 00           nop
2038: 00           nop
2039: 00           nop
203a: 00           nop
203b: 00           nop
203c: 00           nop
203d: 00           nop
203e: 00           nop
203f: 00           nop
2040: 00           nop
2041: 00           nop
2042: 00           nop
2043: 00           nop
2044: 00           nop
2045: 00           nop
2046: 00           nop
2047: 00           nop
2048: 00           nop
2049: 00           nop
204a: 00           nop
204b: 00           nop
204c: 00           nop
204d: 00           nop
204e: 00           nop
204f: 00           nop
2050: 00           nop
2051: 00           nop
2052: 00           nop
2053: 00           nop
2054: 00           nop
2055: 00           nop
2056: 00           nop
2057: 00           nop
2058: 00           nop
2059: 00           nop
205a: 00           nop
205b: 00           nop
205c: 00           nop
205d: 00           nop
205e: 00           nop
205f: 00           nop
2060: 00           nop
2061: 00           nop
2062: 00           nop
2063: 00           nop
2064: 00           nop
2065: 00           nop
2066: 00           nop
2067: 00           nop
2068: 00           nop
2069: 00           nop
206a: 00           nop
206b: 00           nop
206c: 00           nop
206d: 00           nop
206e: 00           nop
206f: 00           nop
2070: 00           nop
2071: 00           nop
2072: 00           nop
2073: 00           nop
2074: 00           nop
2075: 00           nop
2076: 00           nop
2077: 00           nop
2078: 00           nop
2079: 00           nop
207a: 00           nop
207b: 00           nop
207c: 00           nop
207d: 00           nop
207e: 00           nop
207f: 00           nop
2080: 00           nop
2081: 00           nop
2082: 00           nop
2083: 00           nop
2084: 00           nop
2085: 00           nop
2086: 00           nop
2087: 00           nop
2088: 00           nop
2089: 00           nop
208a: 00           nop
208b: 00           nop
208c: 00           nop
208d: 00           nop
208e: 00           nop
208f: 00           nop
2090: 00           nop
2091: 00           nop
2092: 00           nop
2093: 00           nop
2094: 00           nop
2095: 00           nop
2096: 00           nop
2097: 00           nop
2098: 00           nop
2099: 00           nop
209a: 00           nop
209b: 00           nop
209c: 00           nop
209d: 00           nop
209e: 00           nop
209f: 00           nop
20a0: 00           nop
20a1: 00           nop
20a2: 00           nop
20a3: 00           nop
20a4: 00           nop
20a5: 00           nop
20a6: 00           nop
20a7: 00           nop
20a8: 00           nop
20a9: 00           nop
20aa: 00           nop
20ab: 00           nop
20ac: 00           nop
20ad: 00           nop
20ae: 00           nop
20af: 00           nop
20b0: 00           nop
20b1: 00           nop
20b2: 00           nop
20b3: 00           nop
20b4: 00           nop
20b5: 00           nop
20b6: 00           nop
20b7: 00           nop
20b8: 00           nop
20b9: 00           nop
20ba: 00           nop
20bb: 00           nop
20bc: 00           nop
20bd: 00           nop
20be: 00           nop
20bf: 00           nop
20c0: 00           nop
20c1: 00           nop
20c2: 00           nop
20c3: 00           nop
20c4: 00           nop
20c5: 00           nop
20c6: 00           nop
20c7: 00           nop
20c8: 00           nop
20c9: 00           nop
20ca: 00           nop
20cb: 00           nop
20cc: 00           nop
20cd: 00           nop
20ce: 00           nop
20cf: 00           nop
20d0: 00           nop
20d1: 00           nop
20d2: 00           nop
20d3: 00           nop
20d4: 00           nop
20d5: 00           nop
20d6: 00           nop
20d7: 00           nop
20d8: 00           nop
20d9: 00           nop
20da: 00           nop
20db: 00           nop
20dc: 00           nop
20dd: 00           nop
20de: 00           nop
20df: 00           nop
20e0: 00           nop
20e1: 00           nop
20e2: 00           nop
20e3: 00           nop
20e4: 00           nop
20e5: 00           nop
20e6: 00           nop
20e7: 00           nop
20e8: 00           nop
20e9: 00           nop
20ea: 00           nop
20eb: 00           nop
20ec: 00           nop
20ed: 00           nop
20ee: 00           nop
20ef: 00           nop
20f0: 00           nop
20f1: 00           nop
20f2: 00           nop
20f3: 00           nop
20f4: 00           nop
20f5: 00           nop
20f6: 00           nop
20f7: 00           nop
20f8: 00           nop
20f9: 00           nop
20fa: 00           nop
20fb: 00           nop
20fc: 00           nop
20fd: 00           nop
20fe: 00           nop
20ff: 00           nop
2100: 00           nop
2101: 00           nop
2102: 00           nop
2103: 00           nop
2104: 00           nop
2105: 00           nop
2106: 00           nop
2107: 00           nop
2108: 00           nop
2109: 00           nop
210a: 00           nop
210b: 00           nop
210c: 00           nop
210d: 00           nop
210e: 00           nop
210f: 00           nop
2110: 00           nop
2111: 00           nop
2112: 00           nop
2113: 00           nop
2114: 00           nop
2115: 00           nop
2116: 00           nop
2117: 00           nop
2118: 00           nop
2119: 00           nop
211a: 00           nop
211b: 00           nop
211c: 00           nop
211d: 00           nop
211e: 00           nop
211f: 00           nop
2120: 00           nop
2121: 00           nop
2122: 00           nop
2123: 00           nop
2124: 00           nop
2125: 00           nop
2126: 00           nop
2127: 00           nop
2128: 00           nop
2129: 00           nop
212a: 00           nop
212b: 00           nop
212c: 00           nop
212d: 00           nop
212e: 00           nop
212f: 00           nop
2130: 00           nop
2131: 00           nop
2132: 00           nop
2133: 00           nop
2134: 00           nop
2135: 00           nop
2136: 00           nop
2137: 00           nop
2138: 00           nop
2139: 00           nop
213a: 00           nop
213b: 00           nop
213c: 00           nop
213d: 00           nop
213e: 00           nop
213f: 00           nop
2140: 00           nop
2141: 00           nop
2142: 00           nop
2143: 00           nop
2144: 00           nop
2145: 00           nop
2146: 00           nop
2147: 00           nop
2148: 00           nop
2149: 00           nop
214a: 00           nop
214b: 00           nop
214c: 00           nop
214d: 00           nop
214e: 00           nop
214f: 00           nop
2150: 00           nop
2151: 00           nop
2152: 00           nop
2153: 00           nop
2154: 00           nop
2155: 00           nop
2156: 00           nop
2157: 00           nop
2158: 00           nop
2159: 00           nop
215a: 00           nop
215b: 00           nop
215c: 00           nop
215d: 00           nop
215e: 00           nop
215f: 00           nop
2160: 00           nop
2161: 00           nop
2162: 00           nop
2163: 00           nop
2164: 00           nop
2165: 00           nop
2166: 00           nop
2167: 00           nop
2168: 00           nop
2169: 00           nop
216a: 00           nop
216b: 00           nop
216c: 00           nop
216d: 00           nop
216e: 00           nop
216f: 00           nop
2170: 00           nop
2171: 00           nop
2172: 00           nop
2173: 00           nop
2174: 00           nop
2175: 00           nop
2176: 00           nop
2177: 00           nop
2178: 00           nop
2179: 00           nop
217a: 00           nop
217b: 00           nop
217c: 00           nop
217d: 00           nop
217e: 00           nop
217f: 00           nop
2180: 00           nop
2181: 00           nop
2182: 00           nop
2183: 00           nop
2184: 00           nop
2185: 00           nop
2186: 00           nop
2187: 00           nop
2188: 00           nop
2189: 00           nop
218a: 00           nop
218b: 00           nop
218c: 00           nop
218d: 00           nop
218e: 00           nop
218f: 00           nop
2190: 00           nop
2191: 00           nop
2192: 00           nop
2193: 00           nop
2194: 00           nop
2195: 00           nop
2196: 00           nop
2197: 00           nop
2198: 00           nop
2199: 00           nop
219a: 00           nop
219b: 00           nop
219c: 00           nop
219d: 00           nop
219e: 00           nop
219f: 00           nop
21a0: 00           nop
21a1: 00           nop
21a2: 00           nop
21a3: 00           nop
21a4: 00           nop
21a5: 00           nop
21a6: 00           nop
21a7: 00           nop
21a8: 00           nop
21a9: 00           nop
21aa: 00           nop
21ab: 00           nop
21ac: 00           nop
21ad: 00           nop
21ae: 00           nop
21af: 00           nop
21b0: 00           nop
21b1: 00           nop
21b2: 00           nop
21b3: 00           nop
21b4: 00           nop
21b5: 00           nop
21b6: 00           nop
21b7: 00           nop
21b8: 00           nop
21b9: 00           nop
21ba: 00           nop
21bb: 00           nop
21bc: 00           nop
21bd: 00           nop
21be: 00           nop
21bf: 00           nop
21c0: 00           nop
21c1: 00           nop
21c2: 00           nop
21c3: 00           nop
21c4: 00           nop
21c5: 00           nop
21c6: 00           nop
21c7: 00           nop
21c8: 00           nop
21c9: 00           nop
21ca: 00           nop
21cb: 00           nop
21cc: 00           nop
21cd: 00           nop
21ce: 00           nop
21cf: 00           nop
21d0: 00           nop
21d1: 00           nop
21d2: 00           nop
21d3: 00           nop
21d4: 00           nop
21d5: 00           nop
21d6: 00           nop
21d7: 00           nop
21d8: 00           nop
21d9: 00           nop
21da: 00           nop
21db: 00           nop
21dc: 00           nop
21dd: 00           nop
21de: 00           nop
21df: 00           nop
21e0: 00           nop
21e1: 00           nop
21e2: 00           nop
21e3: 00           nop
21e4: 00           nop
21e5: 00           nop
21e6: 00           nop
21e7: 00           nop
21e8: 00           nop
21e9: 00           nop
21ea: 00           nop
21eb: 00           nop
21ec: 00           nop
21ed: 00           nop
21ee: 00           nop
21ef: 00           nop
21f0: 00           nop
21f1: 00           nop
21f2: 00           nop
21f3: 00           nop
21f4: 00           nop
21f5: 00           nop
21f6: 00           nop
21f7: 00           nop
21f8: 00           nop
21f9: 00           nop
21fa: 00           nop
21fb: 00           nop
21fc: 00           nop
21fd: 00           nop
21fe: 00           nop
21ff: 00           nop
2200: 00           nop
2201: 00           nop
2202: 00           nop
2203: 00           nop
2204: 00           nop
2205: 00           nop
2206: 00           nop
2207: 00           nop
2208: 00           nop
2209: 00           nop
220a: 00           nop
220b: 00           nop
220c: 00           nop
220d: 00           nop
220e: 00           nop
220f: 00           nop
2210: 00           nop
2211: 00           nop
2212: 00           nop
2213: 00           nop
2214: 00           nop
2215: 00           nop
2216: 00           nop
2217: 00           nop
2218: 00           nop
2219: 00           nop
221a: 00           nop
221b: 00           nop
221c: 00           nop
221d: 00           nop
221e: 00           nop
221f: 00           nop
2220: 00           nop
2221: 00           nop
2222: 00           nop
2223: 00           nop
2224: 00           nop
2225: 00           nop
2226: 00           nop
2227: 00           nop
2228: 00           nop
2229: 00           nop
222a: 00           nop
222b: 00           nop
222c: 00           nop
222d: 00           nop
222e: 00           nop
222f: 00           nop
2230: 00           nop
2231: 00           nop
2232: 00           nop
2233: 00           nop
2234: 00           nop
2235: 00           nop
2236: 00           nop
2237: 00           nop
2238: 00           nop
2239: 00           nop
223a: 00           nop
223b: 00           nop
223c: 00           nop
223d: 00           nop
223e: 00           nop
223f: 00           nop
2240: 00           nop
2241: 00           nop
2242: 00           nop
2243: 00           nop
2244: 00           nop
2245: 00           nop
2246: 00           nop
2247: 00           nop
2248: 00           nop
2249: 00           nop
224a: 00           nop
224b: 00           nop
224c: 00           nop
224d: 00           nop
224e: 00           nop
224f: 00           nop
2250: 00           nop
2251: 00           nop
2252: 00           nop
2253: 00           nop
2254: 00           nop
2255: 00           nop
2256: 00           nop
2257: 00           nop
2258: 00           nop
2259: 00           nop
225a: 00           nop
225b: 00           nop
225c: 00           nop
225d: 00           nop
225e: 00           nop
225f: 00           nop
2260: 00           nop
2261: 00           nop
2262: 00           nop
2263: 00           nop
2264: 00           nop
2265: 00           nop
2266: 00           nop
2267: 00           nop
2268: 00           nop
2269: 00           nop
226a: 00           nop
226b: 00           nop
226c: 00           nop
226d: 00           nop
226e: 00           nop
226f: 00           nop
2270: 00           nop
2271: 00           nop
2272: 00           nop
2273: 00           nop
2274: 00           nop
2275: 00           nop
2276: 00           nop
2277: 00           nop
2278: 00           nop
2279: 00           nop
227a: 00           nop
227b: 00           nop
227c: 00           nop
227d: 00           nop
227e: 00           nop
227f: 00           nop
2280: 00           nop
2281: 00           nop
2282: 00           nop
2283: 00           nop
2284: 00           nop
2285: 00           nop
2286: 00           nop
2287: 00           nop
2288: 00           nop
2289: 00           nop
228a: 00           nop
228b: 00           nop
228c: 00           nop
228d: 00           nop
228e: 00           nop
228f: 00           nop
2290: 00           nop
2291: 00           nop
2292: 00           nop
2293: 00           nop
2294: 00           nop
2295: 00           nop
2296: 00           nop
2297: 00           nop
2298: 00           nop
2299: 00           nop
229a: 00           nop
229b: 00           nop
229c: 00           nop
229d: 00           nop
229e: 00           nop
229f: 00           nop
22a0: 00           nop
22a1: 00           nop
22a2: 00           nop
22a3: 00           nop
22a4: 00           nop
22a5: 00           nop
22a6: 00           nop
22a7: 00           nop
22a8: 00           nop
22a9: 00           nop
22aa: 00           nop
22ab: 00           nop
22ac: 00           nop
22ad: 00           nop
22ae: 00           nop
22af: 00           nop
22b0: 00           nop
22b1: 00           nop
22b2: 00           nop
22b3: 00           nop
22b4: 00           nop
22b5: 00           nop
22b6: 00           nop
22b7: 00           nop
22b8: 00           nop
22b9: 00           nop
22ba: 00           nop
22bb: 00           nop
22bc: 00           nop
22bd: 00           nop
22be: 00           nop
22bf: 00           nop
22c0: 00           nop
22c1: 00           nop
22c2: 00           nop
22c3: 00           nop
22c4: 00           nop
22c5: 00           nop
22c6: 00           nop
22c7: 00           nop
22c8: 00           nop
22c9: 00           nop
22ca: 00           nop
22cb: 00           nop
22cc: 00           nop
22cd: 00           nop
22ce: 00           nop
22cf: 00           nop
22d0: 00           nop
22d1: 00           nop
22d2: 00           nop
22d3: 00           nop
22d4: 00           nop
22d5: 00           nop
22d6: 00           nop
22d7: 00           nop
22d8: 00           nop
22d9: 00           nop
22da: 00           nop
22db: 00           nop
22dc: 00           nop
22dd: 00           nop
22de: 00           nop
22df: 00           nop
22e0: 00           nop
22e1: 00           nop
22e2: 00           nop
22e3: 00           nop
22e4: 00           nop
22e5: 00           nop
22e6: 00           nop
22e7: 00           nop
22e8: 00           nop
22e9: 00           nop
22ea: 00           nop
22eb: 00           nop
22ec: 00           nop
22ed: 00           nop
22ee: 00           nop
22ef: 00           nop
22f0: 00           nop
22f1: 00           nop
22f2: 00           nop
22f3: 00           nop
22f4: 00           nop
22f5: 00           nop
22f6: 00           nop
22f7: 00           nop
22f8: 00           nop
22f9: 00           nop
22fa: 00           nop
22fb: 00           nop
22fc: 00           nop
22fd: 00           nop
22fe: 00           nop
22ff: 00           nop
2300: 00           nop
2301: 00           nop
2302: 00           nop
2303: 00           nop
2304: 00           nop
2305: 00           nop
2306: 00           nop
2307: 00           nop
2308: 00           nop
2309: 00           nop
230a: 00           nop
230b: 00           nop
230c: 00           nop
230d: 00           nop
230e: 00           nop
230f: 00           nop
2310: 00           nop
2311: 00           nop
2312: 00           nop
2313: 00           nop
2314: 00           nop
2315: 00           nop
2316: 00           nop
2317: 00           nop
2318: 00           nop
2319: 00           nop
231a: 00           nop
231b: 00           nop
231c: 00           nop
231d: 00           nop
231e: 00           nop
231f: 00           nop
2320: 00           nop
2321: 00           nop
2322: 00           nop
2323: 00           nop
2324: 00           nop
2325: 00           nop
2326: 00           nop
2327: 00           nop
2328: 00           nop
2329: 00           nop
232a: 00           nop
232b: 00           nop
232c: 00           nop
232d: 00           nop
232e: 00           nop
232f: 00           nop
2330: 00           nop
2331: 00           nop
2332: 00           nop
2333: 00           nop
2334: 00           nop
2335: 00           nop
2336: 00           nop
2337: 00           nop
2338: 00           nop
2339: 00           nop
233a: 00           nop
233b: 00           nop
233c: 00           nop
233d: 00           nop
233e: 00           nop
233f: 00           nop
2340: 00           nop
2341: 00           nop
2342: 00           nop
2343: 00           nop
2344: 00           nop
2345: 00           nop
2346: 00           nop
2347: 00           nop
2348: 00           nop
2349: 00           nop
234a: 00           nop
234b: 00           nop
234c: 00           nop
234d: 00           nop
234e: 00           nop
234f: 00           nop
2350: 00           nop
2351: 00           nop
2352: 00           nop
2353: 00           nop
2354: 00           nop
2355: 00           nop
2356: 00           nop
2357: 00           nop
2358: 00           nop
2359: 00           nop
235a: 00           nop
235b: 00           nop
235c: 00           nop
235d: 00           nop
235e: 00           nop
235f: 00           nop
2360: 00           nop
2361: 00           nop
2362: 00           nop
2363: 00           nop
2364: 00           nop
2365: 00           nop
2366: 00           nop
2367: 00           nop
2368: 00           nop
2369: 00           nop
236a: 00           nop
236b: 00           nop
236c: 00           nop
236d: 00           nop
236e: 00           nop
236f: 00           nop
2370: 00           nop
2371: 00           nop
2372: 00           nop
2373: 00           nop
2374: 00           nop
2375: 00           nop
2376: 00           nop
2377: 00           nop
2378: 00           nop
2379: 00           nop
237a: 00           nop
237b: 00           nop
237c: 00           nop
237d: 00           nop
237e: 00           nop
237f: 00           nop
2380: 00           nop
2381: 00           nop
2382: 00           nop
2383: 00           nop
2384: 00           nop
2385: 00           nop
2386: 00           nop
2387: 00           nop
2388: 00           nop
2389: 00           nop
238a: 00           nop
238b: 00           nop
238c: 00           nop
238d: 00           nop
238e: 00           nop
238f: 00           nop
2390: 00           nop
2391: 00           nop
2392: 00           nop
2393: 00           nop
2394: 00           nop
2395: 00           nop
2396: 00           nop
2397: 00           nop
2398: 00           nop
2399: 00           nop
239a: 00           nop
239b: 00           nop
239c: 00           nop
239d: 00           nop
239e: 00           nop
239f: 00           nop
23a0: 00           nop
23a1: 00           nop
23a2: 00           nop
23a3: 00           nop
23a4: 00           nop
23a5: 00           nop
23a6: 00           nop
23a7: 00           nop
23a8: 00           nop
23a9: 00           nop
23aa: 00           nop
23ab: 00           nop
23ac: 00           nop
23ad: 00           nop
23ae: 00           nop
23af: 00           nop
23b0: 00           nop
23b1: 00           nop
23b2: 00           nop
23b3: 00           nop
23b4: 00           nop
23b5: 00           nop
23b6: 00           nop
23b7: 00           nop
23b8: 00           nop
23b9: 00           nop
23ba: 00           nop
23bb: 00           nop
23bc: 00           nop
23bd: 00           nop
23be: 00           nop
23bf: 00           nop
23c0: 00           nop
23c1: 00           nop
23c2: 00           nop
23c3: 00           nop
23c4: 00           nop
23c5: 00           nop
23c6: 00           nop
23c7: 00           nop
23c8: 00           nop
23c9: 00           nop
23ca: 00           nop
23cb: 00           nop
23cc: 00           nop
23cd: 00           nop
23ce: 00           nop
23cf: 00           nop
23d0: 00           nop
23d1: 00           nop
23d2: 00           nop
23d3: 00           nop
23d4: 00           nop
23d5: 00           nop
23d6: 00           nop
23d7: 00           nop
23d8: 00           nop
23d9: 00           nop
23da: 00           nop
23db: 00           nop
23dc: 00           nop
23dd: 00           nop
23de: 00           nop
23df: 00           nop
23e0: 00           nop
23e1: 00           nop
23e2: 00           nop
23e3: 00           nop
23e4: 00           nop
23e5: 00           nop
23e6: 00           nop
23e7: 00           nop
23e8: 00           nop
23e9: 00           nop
23ea: 00           nop
23eb: 00           nop
23ec: 00           nop
23ed: 00           nop
23ee: 00           nop
23ef: 00           nop
23f0: 00           nop
23f1: 00           nop
23f2: 00           nop
23f3: 00           nop
23f4: 00           nop
23f5: 00           nop
23f6: 00           nop
23f7: 00           nop
23f8: 00           nop
23f9: 00           nop
23fa: 00           nop
23fb: 00           nop
23fc: 00           nop
23fd: 00           nop
23fe: 00           nop
23ff: 00           nop
2400: 00           nop
2401: 00           nop
2402: 00           nop
2403: 00           nop
2404: 00           nop
2405: 00           nop
2406: 00           nop
2407: 00           nop
2408: 00           nop
2409: 00           nop
240a: 00           nop
240b: 00           nop
240c: 00           nop
240d: 00           nop
240e: 00           nop
240f: 00           nop
2410: 00           nop
2411: 00           nop
2412: 00           nop
2413: 00           nop
2414: 00           nop
2415: 00           nop
2416: 00           nop
2417: 00           nop
2418: 00           nop
2419: 00           nop
241a: 00           nop
241b: 00           nop
241c: 00           nop
241d: 00           nop
241e: 00           nop
241f: 00           nop
2420: 00           nop
2421: 00           nop
2422: 00           nop
2423: 00           nop
2424: 00           nop
2425: 00           nop
2426: 00           nop
2427: 00           nop
2428: 00           nop
2429: 00           nop
242a: 00           nop
242b: 00           nop
242c: 00           nop
242d: 00           nop
242e: 00           nop
242f: 00           nop
2430: 00           nop
2431: 00           nop
2432: 00           nop
2433: 00           nop
2434: 00           nop
2435: 00           nop
2436: 00           nop
2437: 00           nop
2438: 00           nop
2439: 00           nop
243a: 00           nop
243b: 00           nop
243c: 00           nop
243d: 00           nop
243e: 00           nop
243f: 00           nop
2440: 00           nop
2441: 00           nop
2442: 00           nop
2443: 00           nop
2444: 00           nop
2445: 00           nop
2446: 00           nop
2447: 00           nop
2448: 00           nop
2449: 00           nop
244a: 00           nop
244b: 00           nop
244c: 00           nop
244d: 00           nop
244e: 00           nop
244f: 00           nop
2450: 00           nop
2451: 00           nop
2452: 00           nop
2453: 00           nop
2454: 00           nop
2455: 00           nop
2456: 00           nop
2457: 00           nop
2458: 00           nop
2459: 00           nop
245a: 00           nop
245b: 00           nop
245c: 00           nop
245d: 00           nop
245e: 00           nop
245f: 00           nop
2460: 00           nop
2461: 00           nop
2462: 00           nop
2463: 00           nop
2464: 00           nop
2465: 00           nop
2466: 00           nop
2467: 00           nop
2468: 00           nop
2469: 00           nop
246a: 00           nop
246b: 00           nop
246c: 00           nop
246d: 00           nop
246e: 00           nop
246f: 00           nop
2470: 00           nop
2471: 00           nop
2472: 00           nop
2473: 00           nop
2474: 00           nop
2475: 00           nop
2476: 00           nop
2477: 00           nop
2478: 00           nop
2479: 00           nop
247a: 00           nop
247b: 00           nop
247c: 00           nop
247d: 00           nop
247e: 00           nop
247f: 00           nop
2480: 00           nop
2481: 00           nop
2482: 00           nop
2483: 00           nop
2484: 00           nop
2485: 00           nop
2486: 00           nop
2487: 00           nop
2488: 00           nop
2489: 00           nop
248a: 00           nop
248b: 00           nop
248c: 00           nop
248d: 00           nop
248e: 00           nop
248f: 00           nop
2490: 00           nop
2491: 00           nop
2492: 00           nop
2493: 00           nop
2494: 00           nop
2495: 00           nop
2496: 00           nop
2497: 00           nop
2498: 00           nop
2499: 00           nop
249a: 00           nop
249b: 00           nop
249c: 00           nop
249d: 00           nop
249e: 00           nop
249f: 00           nop
24a0: 00           nop
24a1: 00           nop
24a2: 00           nop
24a3: 00           nop
24a4: 00           nop
24a5: 00           nop
24a6: 00           nop
24a7: 00           nop
24a8: 00           nop
24a9: 00           nop
24aa: 00           nop
24ab: 00           nop
24ac: 00           nop
24ad: 00           nop
24ae: 00           nop
24af: 00           nop
24b0: 00           nop
24b1: 00           nop
24b2: 00           nop
24b3: 00           nop
24b4: 00           nop
24b5: 00           nop
24b6: 00           nop
24b7: 00           nop
24b8: 00           nop
24b9: 00           nop
24ba: 00           nop
24bb: 00           nop
24bc: 00           nop
24bd: 00           nop
24be: 00           nop
24bf: 00           nop
24c0: 00           nop
24c1: 00           nop
24c2: 00           nop
24c3: 00           nop
24c4: 00           nop
24c5: 00           nop
24c6: 00           nop
24c7: 00           nop
24c8: 00           nop
24c9: 00           nop
24ca: 00           nop
24cb: 00           nop
24cc: 00           nop
24cd: 00           nop
24ce: 00           nop
24cf: 00           nop
24d0: 00           nop
24d1: 00           nop
24d2: 00           nop
24d3: 00           nop
24d4: 00           nop
24d5: 00           nop
24d6: 00           nop
24d7: 00           nop
24d8: 00           nop
24d9: 00           nop
24da: 00           nop
24db: 00           nop
24dc: 00           nop
24dd: 00           nop
24de: 00           nop
24df: 00           nop
24e0: 00           nop
24e1: 00           nop
24e2: 00           nop
24e3: 00           nop
24e4: 00           nop
24e5: 00           nop
24e6: 00           nop
24e7: 00           nop
24e8: 00           nop
24e9: 00           nop
24ea: 00           nop
24eb: 00           nop
24ec: 00           nop
24ed: 00           nop
24ee: 00           nop
24ef: 00           nop
24f0: 00           nop
24f1: 00           nop
24f2: 00           nop
24f3: 00           nop
24f4: 00           nop
24f5: 00           nop
24f6: 00           nop
24f7: 00           nop
24f8: 00           nop
24f9: 00           nop
24fa: 00           nop
24fb: 00           nop
24fc: 00           nop
24fd: 00           nop
24fe: 00           nop
24ff: 00           nop
2500: 00           nop
2501: 00           nop
2502: 00           nop
2503: 00           nop
2504: 00           nop
2505: 00           nop
2506: 00           nop
2507: 00           nop
2508: 00           nop
2509: 00           nop
250a: 00           nop
250b: 00           nop
250c: 00           nop
250d: 00           nop
250e: 00           nop
250f: 00           nop
2510: 00           nop
2511: 00           nop
2512: 00           nop
2513: 00           nop
2514: 00           nop
2515: 00           nop
2516: 00           nop
2517: 00           nop
2518: 00           nop
2519: 00           nop
251a: 00           nop
251b: 00           nop
251c: 00           nop
251d: 00           nop
251e: 00           nop
251f: 00           nop
2520: 00           nop
2521: 00           nop
2522: 00           nop
2523: 00           nop
2524: 00           nop
2525: 00           nop
2526: 00           nop
2527: 00           nop
2528: 00           nop
2529: 00           nop
252a: 00           nop
252b: 00           nop
252c: 00           nop
252d: 00           nop
252e: 00           nop
252f: 00           nop
2530: 00           nop
2531: 00           nop
2532: 00           nop
2533: 00           nop
2534: 00           nop
2535: 00           nop
2536: 00           nop
2537: 00           nop
2538: 00           nop
2539: 00           nop
253a: 00           nop
253b: 00           nop
253c: 00           nop
253d: 00           nop
253e: 00           nop
253f: 00           nop
2540: 00           nop
2541: 00           nop
2542: 00           nop
2543: 00           nop
2544: 00           nop
2545: 00           nop
2546: 00           nop
2547: 00           nop
2548: 00           nop
2549: 00           nop
254a: 00           nop
254b: 00           nop
254c: 00           nop
254d: 00           nop
254e: 00           nop
254f: 00           nop
2550: 00           nop
2551: 00           nop
2552: 00           nop
2553: 00           nop
2554: 00           nop
2555: 00           nop
2556: 00           nop
2557: 00           nop
2558: 00           nop
2559: 00           nop
255a: 00           nop
255b: 00           nop
255c: 00           nop
255d: 00           nop
255e: 00           nop
255f: 00           nop
2560: 00           nop
2561: 00           nop
2562: 00           nop
2563: 00           nop
2564: 00           nop
2565: 00           nop
2566: 00           nop
2567: 00           nop
2568: 00           nop
2569: 00           nop
256a: 00           nop
256b: 00           nop
256c: 00           nop
256d: 00           nop
256e: 00           nop
256f: 00           nop
2570: 00           nop
2571: 00           nop
2572: 00           nop
2573: 00           nop
2574: 00           nop
2575: 00           nop
2576: 00           nop
2577: 00           nop
2578: 00           nop
2579: 00           nop
257a: 00           nop
257b: 00           nop
257c: 00           nop
257d: 00           nop
257e: 00           nop
257f: 00           nop
2580: 00           nop
2581: 00           nop
2582: 00           nop
2583: 00           nop
2584: 00           nop
2585: 00           nop
2586: 00           nop
2587: 00           nop
2588: 00           nop
2589: 00           nop
258a: 00           nop
258b: 00           nop
258c: 00           nop
258d: 00           nop
258e: 00           nop
258f: 00           nop
2590: 00           nop
2591: 00           nop
2592: 00           nop
2593: e3           ex   (sp),hl
2594: 26 00        ld   h,$00
2596: e3           ex   (sp),hl
2597: 26 00        ld   h,$00
2599: e3           ex   (sp),hl
259a: 26 00        ld   h,$00
259c: e3           ex   (sp),hl
259d: 26 00        ld   h,$00
259f: c9           ret
25a0: 25           dec  h
25a1: 00           nop
25a2: e3           ex   (sp),hl
25a3: 26 00        ld   h,$00
25a5: e3           ex   (sp),hl
25a6: 26 00        ld   h,$00
25a8: e3           ex   (sp),hl
25a9: 26 00        ld   h,$00
25ab: e3           ex   (sp),hl
25ac: 26 00        ld   h,$00
25ae: e3           ex   (sp),hl
25af: 26 00        ld   h,$00
25b1: 10 11        djnz $25C4
25b3: 00           nop
25b4: e3           ex   (sp),hl
25b5: 26 00        ld   h,$00
25b7: e3           ex   (sp),hl
25b8: 26 00        ld   h,$00
25ba: f0           ret  p
25bb: 4a           ld   c,d
25bc: 00           nop
25bd: e3           ex   (sp),hl
25be: 26 00        ld   h,$00
25c0: e3           ex   (sp),hl
25c1: 26 00        ld   h,$00
25c3: 0f           rrca
25c4: 26 00        ld   h,$00
25c6: 46           ld   b,(hl)
25c7: 26 00        ld   h,$00
25c9: db 12        in   a,($12)
25cb: 32 b6 26     ld   ($26B6),a
25ce: cb 47        bit  0,a
25d0: 20 22        jr   nz,$25F4
25d2: db 13        in   a,($13)
25d4: 32 b8 26     ld   ($26B8),a
25d7: 3e 01        ld   a,$01
25d9: d3 13        out  ($13),a
25db: db 13        in   a,($13)
25dd: 32 b9 26     ld   ($26B9),a
25e0: 3a b8 26     ld   a,($26B8)
25e3: cb 47        bit  0,a
25e5: 20 12        jr   nz,$25F9
25e7: 3e 10        ld   a,$10
25e9: d3 13        out  ($13),a
25eb: d3 13        out  ($13),a
25ed: 3e 20        ld   a,$20
25ef: d3 08        out  ($08),a
25f1: d3 0c        out  ($0C),a
25f3: c9           ret
25f4: 21 ac f5     ld   hl,$F5AC
25f7: 18 03        jr   $25FC
25f9: 21 af f5     ld   hl,$F5AF
25fc: 5e           ld   e,(hl)
25fd: 23           inc  hl
25fe: 56           ld   d,(hl)
25ff: 23           inc  hl
2600: 7e           ld   a,(hl)
2601: eb           ex   de,hl
2602: b7           or   a
2603: 20 05        jr   nz,$260A
2605: 11 c9 25     ld   de,$25C9
2608: d5           push de
2609: e9           jp   (hl)
260a: cd b5 f2     call $F2B5
260d: 18 ba        jr   $25C9
260f: db 10        in   a,($10)
2611: 4f           ld   c,a
2612: 3a 57 12     ld   a,($1257)
2615: b7           or   a
2616: ca 41 26     jp   z,$2641
2619: 79           ld   a,c
261a: a7           and  a
261b: 28 10        jr   z,$262D
261d: f5           push af
261e: 47           ld   b,a
261f: 3a 8d 19     ld   a,($198D)
2622: b7           or   a
2623: 28 04        jr   z,$2629
2625: 78           ld   a,b
2626: cd 81 16     call $1681
2629: f1           pop  af
262a: cd c2 16     call $16C2
262d: 3a b6 26     ld   a,($26B6)
2630: cb 57        bit  2,a
2632: 20 04        jr   nz,$2638
2634: 3e 28        ld   a,$28
2636: d3 12        out  ($12),a
2638: 3e 30        ld   a,$30
263a: d3 12        out  ($12),a
263c: 3e 38        ld   a,$38
263e: d3 12        out  ($12),a
2640: c9           ret
2641: cd 7c 17     call $177C
2644: 18 e7        jr   $262D
2646: 3a 3a 27     ld   a,($273A)
2649: b7           or   a
264a: 28 19        jr   z,$2665
264c: db 11        in   a,($11)
264e: cd 69 26     call $2669
2651: 3a b8 26     ld   a,($26B8)
2654: cb 57        bit  2,a
2656: 20 04        jr   nz,$265C
2658: 3e 28        ld   a,$28
265a: d3 13        out  ($13),a
265c: 3e 30        ld   a,$30
265e: d3 13        out  ($13),a
2660: 3e 38        ld   a,$38
2662: d3 13        out  ($13),a
2664: c9           ret
2665: e1           pop  hl
2666: c3 e7 25     jp   $25E7
2669: f5           push af
266a: 2a ba 26     ld   hl,($26BA)
266d: cb 44        bit  0,h
266f: 20 16        jr   nz,$2687
2671: 23           inc  hl
2672: 22 ba 26     ld   ($26BA),hl
2675: 21 fe a1     ld   hl,$A1FE
2678: 3a bc 26     ld   a,($26BC)
267b: 16 00        ld   d,$00
267d: 5f           ld   e,a
267e: 19           add  hl,de
267f: 3c           inc  a
2680: 32 bc 26     ld   ($26BC),a
2683: f1           pop  af
2684: 77           ld   (hl),a
2685: af           xor  a
2686: c9           ret
2687: f1           pop  af
2688: 3e ff        ld   a,$FF
268a: c9           ret
268b: 21 80 f0     ld   hl,$F080
268e: 3e 10        ld   a,$10
2690: b5           or   l
2691: d3 08        out  ($08),a
2693: 7c           ld   a,h
2694: d3 09        out  ($09),a
2696: 3e 80        ld   a,$80
2698: d3 09        out  ($09),a
269a: 21 c0 f0     ld   hl,$F0C0
269d: 3e 10        ld   a,$10
269f: b5           or   l
26a0: d3 0c        out  ($0C),a
26a2: 7c           ld   a,h
26a3: d3 0d        out  ($0D),a
26a5: 3e 07        ld   a,$07
26a7: d3 0d        out  ($0D),a
26a9: c9           ret
26aa: 3a e1 26     ld   a,($26E1)
26ad: d3 09        out  ($09),a
26af: c9           ret
26b0: 3a e2 26     ld   a,($26E2)
26b3: d3 0d        out  ($0D),a
26b5: c9           ret
26b6: 00           nop
26b7: 00           nop
26b8: 00           nop
26b9: 00           nop
26ba: 00           nop
26bb: 00           nop
26bc: 00           nop
26bd: 00           nop
26be: 00           nop
26bf: 00           nop
26c0: 00           nop
26c1: 00           nop
26c2: 00           nop
26c3: 00           nop
26c4: 00           nop
26c5: 00           nop
26c6: 00           nop
26c7: 00           nop
26c8: 00           nop
26c9: 00           nop
26ca: 00           nop
26cb: 00           nop
26cc: 00           nop
26cd: 00           nop
26ce: 00           nop
26cf: 00           nop
26d0: 00           nop
26d1: 00           nop
26d2: 00           nop
26d3: 00           nop
26d4: 00           nop
26d5: 00           nop
26d6: 00           nop
26d7: 00           nop
26d8: 00           nop
26d9: 00           nop
26da: 00           nop
26db: 00           nop
26dc: 00           nop
26dd: 00           nop
26de: 00           nop
26df: 00           nop
26e0: 00           nop
26e1: 6f           ld   l,a
26e2: fb           ei
26e3: 21 ea 26     ld   hl,$26EA
26e6: cd b1 14     call $14B1
26e9: 76           halt
26ea: 07           rlca
26eb: 0d           dec  c
26ec: 0a           ld   a,(bc)
26ed: 0a           ld   a,(bc)
26ee: 0a           ld   a,(bc)
26ef: 55           ld   d,l
26f0: 6e           ld   l,(hl)
26f1: 65           ld   h,l
26f2: 78           ld   a,b
26f3: 70           ld   (hl),b
26f4: 65           ld   h,l
26f5: 63           ld   h,e
26f6: 74           ld   (hl),h
26f7: 65           ld   h,l
26f8: 64           ld   h,h
26f9: 20 69        jr   nz,$2764
26fb: 6e           ld   l,(hl)
26fc: 74           ld   (hl),h
26fd: 65           ld   h,l
26fe: 72           ld   (hl),d
26ff: 72           ld   (hl),d
2700: 75           ld   (hl),l
2701: 70           ld   (hl),b
2702: 74           ld   (hl),h
2703: 20 21        jr   nz,$2726
2705: 21 21 0d     ld   hl,$0D21
2708: 0a           ld   a,(bc)
2709: 00           nop
270a: 43           ld   b,e
270b: 50           ld   d,b
270c: 2f           cpl
270d: 4d           ld   c,l
270e: 2d           dec  l
270f: 38 30        jr   c,$2741
2711: 20 2d        jr   nz,$2740
2713: 20 45        jr   nz,$275A
2715: 50           ld   d,b
2716: 53           ld   d,e
2717: 4f           ld   c,a
2718: 4e           ld   c,(hl)
2719: 20 51        jr   nz,$276C
271b: 58           ld   e,b
271c: 2d           dec  l
271d: 31 30 42     ld   sp,$4230
2720: 32 32 37     ld   ($3732),a
2723: 01 01 01     ld   bc,$0101
2726: 01 01 01     ld   bc,$0101
2729: 01 a9 08     ld   bc,$08A9
272c: 00           nop
272d: 00           nop
272e: 00           nop
272f: 03           inc  bc
2730: 00           nop
2731: 00           nop
2732: 00           nop
2733: 00           nop
2734: 00           nop
2735: 01 03 00     ld   bc,$0003
2738: 00           nop
2739: 00           nop
273a: 00           nop
273b: 00           nop
273c: 00           nop
273d: 00           nop
273e: 01 00 01     ld   bc,$0100
2741: 00           nop
2742: 00           nop
2743: 00           nop
2744: 00           nop
2745: 00           nop
2746: 00           nop
2747: 00           nop
2748: 00           nop
2749: 00           nop
274a: 01 02 00     ld   bc,$0002
274d: 00           nop
274e: 00           nop
274f: 00           nop
2750: 00           nop
2751: 00           nop
2752: 00           nop
2753: 00           nop
2754: 00           nop
2755: 00           nop
2756: 03           inc  bc
2757: 00           nop
2758: 00           nop
2759: 00           nop
275a: 00           nop
275b: 00           nop
275c: 00           nop
275d: 00           nop
275e: 00           nop
275f: 00           nop
2760: 00           nop
2761: 00           nop
2762: 00           nop
2763: 00           nop
2764: 00           nop
2765: 00           nop
2766: 00           nop
2767: 00           nop
2768: 00           nop
2769: 00           nop
276a: 00           nop
276b: 00           nop
276c: 00           nop
276d: 00           nop
276e: 00           nop
276f: 00           nop
2770: 00           nop
2771: 00           nop
2772: 00           nop
2773: 00           nop
2774: 00           nop
2775: 00           nop
2776: 00           nop
2777: 00           nop
2778: 00           nop
2779: 00           nop
277a: 00           nop
277b: 00           nop
277c: 00           nop
277d: 00           nop
277e: 00           nop
277f: 00           nop
2780: 00           nop
2781: 00           nop
2782: 00           nop
2783: 00           nop
2784: 00           nop
2785: 00           nop
2786: 00           nop
2787: 00           nop
2788: 00           nop
2789: 5a           ld   e,d
278a: 00           nop
278b: 00           nop
278c: 00           nop
278d: 00           nop
278e: 00           nop
278f: 00           nop
2790: 00           nop
2791: 00           nop
2792: 00           nop
2793: 00           nop
2794: 00           nop
2795: 00           nop
2796: 00           nop
2797: 00           nop
2798: 00           nop
2799: 00           nop
279a: 00           nop
279b: 00           nop
279c: 00           nop
279d: 00           nop
279e: 00           nop
279f: 00           nop
27a0: 00           nop
27a1: 00           nop
27a2: 00           nop
27a3: 00           nop
27a4: 00           nop
27a5: 00           nop
27a6: 00           nop
27a7: 00           nop
27a8: 00           nop
27a9: 00           nop
27aa: 00           nop
27ab: 00           nop
27ac: 00           nop
27ad: 00           nop
27ae: 00           nop
27af: 00           nop
27b0: 00           nop
27b1: 00           nop
27b2: 00           nop
27b3: 00           nop
27b4: 00           nop
27b5: 00           nop
27b6: 00           nop
27b7: 00           nop
27b8: 00           nop
27b9: 00           nop
27ba: 00           nop
27bb: 00           nop
27bc: 00           nop
27bd: 00           nop
27be: 00           nop
27bf: 00           nop
27c0: 00           nop
27c1: 00           nop
27c2: 00           nop
27c3: 00           nop
27c4: 00           nop
27c5: 00           nop
27c6: 00           nop
27c7: 00           nop
27c8: 00           nop
27c9: 00           nop
27ca: 00           nop
27cb: 00           nop
27cc: 00           nop
27cd: 00           nop
27ce: 00           nop
27cf: 00           nop
27d0: 00           nop
27d1: 00           nop
27d2: 00           nop
27d3: 00           nop
27d4: 00           nop
27d5: 00           nop
27d6: 00           nop
27d7: 00           nop
27d8: 00           nop
27d9: 00           nop
27da: 00           nop
27db: 00           nop
27dc: 00           nop
27dd: 00           nop
27de: 00           nop
27df: 00           nop
27e0: 00           nop
27e1: 00           nop
27e2: 00           nop
27e3: 00           nop
27e4: 00           nop
27e5: 00           nop
27e6: 00           nop
27e7: 00           nop
27e8: 00           nop
27e9: 00           nop
27ea: 00           nop
27eb: 00           nop
27ec: 00           nop
27ed: 00           nop
27ee: 00           nop
27ef: 00           nop
27f0: 00           nop
27f1: 00           nop
27f2: 00           nop
27f3: 00           nop
27f4: 00           nop
27f5: 00           nop
27f6: 00           nop
27f7: 00           nop
27f8: 00           nop
27f9: 00           nop
27fa: 00           nop
27fb: 00           nop
27fc: 00           nop
27fd: 00           nop
27fe: 00           nop
27ff: 00           nop
2800: 00           nop
2801: 00           nop
2802: 00           nop
2803: 00           nop
2804: 53           ld   d,e
2805: 45           ld   b,l
2806: 52           ld   d,d
2807: 49           ld   c,c
2808: 41           ld   b,c
2809: 4c           ld   c,h
280a: 79           ld   a,c
280b: fe 1a        cp   $1A
280d: 28 26        jr   z,$2835
280f: fe 0d        cp   $0D
2811: 28 1f        jr   z,$2832
2813: 3a 18 f6     ld   a,($F618)
2816: fe ff        cp   $FF
2818: 20 1f        jr   nz,$2839
281a: 3a 1e f6     ld   a,($F61E)
281d: fe ff        cp   $FF
281f: 20 18        jr   nz,$2839
2821: 3a 1d f6     ld   a,($F61D)
2824: b7           or   a
2825: 28 15        jr   z,$283C
2827: fe 01        cp   $01
2829: 28 39        jr   z,$2864
282b: fe ff        cp   $FF
282d: 28 23        jr   z,$2852
282f: c3 b3 28     jp   $28B3
2832: 11 80 00     ld   de,$0080
2835: ed 53 19 f6  ld   ($F619),de
2839: c3 e3 f5     jp   $F5E3
283c: 11 4f 28     ld   de,$284F
283f: d5           push de
2840: af           xor  a
2841: 32 18 f6     ld   ($F618),a
2844: 32 1e f6     ld   ($F61E),a
2847: 11 f7 f5     ld   de,$F5F7
284a: 0e 10        ld   c,$10
284c: c3 b6 28     jp   $28B6
284f: c3 b3 28     jp   $28B3
2852: 11 5e 28     ld   de,$285E
2855: d5           push de
2856: 11 f7 f5     ld   de,$F5F7
2859: 0e 16        ld   c,$16
285b: c3 b6 28     jp   $28B6
285e: fe ff        cp   $FF
2860: 28 43        jr   z,$28A5
2862: 18 31        jr   $2895
2864: af           xor  a
2865: 32 1b f6     ld   ($F61B),a
2868: 3a 1c f6     ld   a,($F61C)
286b: b7           or   a
286c: 28 37        jr   z,$28A5
286e: af           xor  a
286f: 32 1c f6     ld   ($F61C),a
2872: 11 7e 28     ld   de,$287E
2875: d5           push de
2876: 11 fe a1     ld   de,$A1FE
2879: 0e 1a        ld   c,$1A
287b: c3 b6 28     jp   $28B6
287e: 11 89 28     ld   de,$2889
2881: d5           push de
2882: 11 f7 f5     ld   de,$F5F7
2885: 0e 15        ld   c,$15
2887: 18 2d        jr   $28B6
2889: 11 95 28     ld   de,$2895
288c: d5           push de
288d: ed 5b 19 f6  ld   de,($F619)
2891: 0e 1a        ld   c,$1A
2893: 18 21        jr   $28B6
2895: cd c1 28     call $28C1
2898: b7           or   a
2899: 20 fa        jr   nz,$2895
289b: 3e 06        ld   a,$06
289d: d3 11        out  ($11),a
289f: af           xor  a
28a0: 32 1e f6     ld   ($F61E),a
28a3: 18 0e        jr   $28B3
28a5: cd c1 28     call $28C1
28a8: b7           or   a
28a9: 20 fa        jr   nz,$28A5
28ab: 3e 15        ld   a,$15
28ad: d3 11        out  ($11),a
28af: af           xor  a
28b0: 32 1e f6     ld   ($F61E),a
28b3: c3 e3 f5     jp   $F5E3
28b6: 22 d4 28     ld   ($28D4),hl
28b9: 2a c1 f5     ld   hl,($F5C1)
28bc: e5           push hl
28bd: 2a d4 28     ld   hl,($28D4)
28c0: c9           ret
28c1: db 13        in   a,($13)
28c3: cb 6f        bit  5,a
28c5: 28 06        jr   z,$28CD
28c7: cb 57        bit  2,a
28c9: 28 02        jr   z,$28CD
28cb: af           xor  a
28cc: c9           ret
28cd: 3e 10        ld   a,$10
28cf: d3 13        out  ($13),a
28d1: 3e ff        ld   a,$FF
28d3: c9           ret
28d4: 00           nop
28d5: 00           nop
28d6: 32 13 2b     ld   ($2B13),a
28d9: 3a b9 26     ld   a,($26B9)
28dc: cb 6f        bit  5,a
28de: c2 3d 29     jp   nz,$293D
28e1: 3a 14 2b     ld   a,($2B14)
28e4: b7           or   a
28e5: 28 3b        jr   z,$2922
28e7: 3a 15 2b     ld   a,($2B15)
28ea: b7           or   a
28eb: 28 64        jr   z,$2951
28ed: 3a 1b f6     ld   a,($F61B)
28f0: fe ff        cp   $FF
28f2: 28 14        jr   z,$2908
28f4: 3a 13 2b     ld   a,($2B13)
28f7: fe 04        cp   $04
28f9: ca bc 29     jp   z,$29BC
28fc: fe 1c        cp   $1C
28fe: ca cd 29     jp   z,$29CD
2901: fe 05        cp   $05
2903: 28 1d        jr   z,$2922
2905: c3 32 2a     jp   $2A32
2908: 3a 13 2b     ld   a,($2B13)
290b: f5           push af
290c: b7           or   a
290d: 3a 17 2b     ld   a,($2B17)
2910: fe 82        cp   $82
2912: c2 f6 29     jp   nz,$29F6
2915: f1           pop  af
2916: fe 1e        cp   $1E
2918: ca 16 2a     jp   z,$2A16
291b: fe 05        cp   $05
291d: 28 03        jr   z,$2922
291f: c3 32 2a     jp   $2A32
2922: 3a 13 2b     ld   a,($2B13)
2925: fe 05        cp   $05
2927: c0           ret  nz
2928: 3e ff        ld   a,$FF
292a: 32 14 2b     ld   ($2B14),a
292d: af           xor  a
292e: 32 15 2b     ld   ($2B15),a
2931: 32 16 2b     ld   ($2B16),a
2934: 32 17 f6     ld   ($F617),a
2937: 32 18 f6     ld   ($F618),a
293a: c3 27 2a     jp   $2A27
293d: 3a 15 2b     ld   a,($2B15)
2940: b7           or   a
2941: 20 07        jr   nz,$294A
2943: 3e 30        ld   a,$30
2945: d3 13        out  ($13),a
2947: c3 32 2a     jp   $2A32
294a: 3e 30        ld   a,$30
294c: d3 13        out  ($13),a
294e: c3 68 29     jp   $2968
2951: 3a 16 2b     ld   a,($2B16)
2954: b7           or   a
2955: 28 4a        jr   z,$29A1
2957: 3a 13 2b     ld   a,($2B13)
295a: fe 04        cp   $04
295c: ca c8 29     jp   z,$29C8
295f: cd 3d 2a     call $2A3D
2962: b7           or   a
2963: c8           ret  z
2964: fe aa        cp   $AA
2966: 20 0f        jr   nz,$2977
2968: cd c1 28     call $28C1
296b: b7           or   a
296c: 20 fa        jr   nz,$2968
296e: 3e 17        ld   a,$17
2970: d3 11        out  ($11),a
2972: af           xor  a
2973: 32 16 2b     ld   ($2B16),a
2976: c9           ret
2977: 3a 44 27     ld   a,($2744)
297a: 32 f7 f5     ld   ($F5F7),a
297d: cd c8 2a     call $2AC8
2980: ed 5b 15 f6  ld   de,($F615)
2984: b7           or   a
2985: ed 52        sbc  hl,de
2987: da 32 2a     jp   c,$2A32
298a: 3a 66 f0     ld   a,($F066)
298d: cb ef        set  5,a
298f: 32 66 f0     ld   ($F066),a
2992: 3e ff        ld   a,$FF
2994: 32 18 f6     ld   ($F618),a
2997: 32 15 2b     ld   ($2B15),a
299a: 32 1d f6     ld   ($F61D),a
299d: 32 1e f6     ld   ($F61E),a
29a0: c9           ret
29a1: 3a 13 2b     ld   a,($2B13)
29a4: fe 05        cp   $05
29a6: ca 22 29     jp   z,$2922
29a9: fe 01        cp   $01
29ab: c0           ret  nz
29ac: 3e ff        ld   a,$FF
29ae: 32 16 2b     ld   ($2B16),a
29b1: af           xor  a
29b2: 32 18 2b     ld   ($2B18),a
29b5: 32 11 2b     ld   ($2B11),a
29b8: 32 12 2b     ld   ($2B12),a
29bb: c9           ret
29bc: cd c8 29     call $29C8
29bf: 32 1d f6     ld   ($F61D),a
29c2: 3e ff        ld   a,$FF
29c4: 32 1e f6     ld   ($F61E),a
29c7: c9           ret
29c8: af           xor  a
29c9: 32 14 2b     ld   ($2B14),a
29cc: c9           ret
29cd: af           xor  a
29ce: 32 17 2b     ld   ($2B17),a
29d1: 32 1a 2b     ld   ($2B1A),a
29d4: 32 18 2b     ld   ($2B18),a
29d7: 3e ff        ld   a,$FF
29d9: 32 1b f6     ld   ($F61B),a
29dc: c9           ret
29dd: 3a 17 2b     ld   a,($2B17)
29e0: 3c           inc  a
29e1: 32 17 2b     ld   ($2B17),a
29e4: f1           pop  af
29e5: 21 18 2b     ld   hl,$2B18
29e8: be           cp   (hl)
29e9: 20 06        jr   nz,$29F1
29eb: 3e ff        ld   a,$FF
29ed: 32 1c f6     ld   ($F61C),a
29f0: c9           ret
29f1: af           xor  a
29f2: 32 1c f6     ld   ($F61C),a
29f5: c9           ret
29f6: 3a 17 2b     ld   a,($2B17)
29f9: 3c           inc  a
29fa: 32 17 2b     ld   ($2B17),a
29fd: fe 81        cp   $81
29ff: ca dd 29     jp   z,$29DD
2a02: 21 fe a1     ld   hl,$A1FE
2a05: 3a 1a 2b     ld   a,($2B1A)
2a08: 16 00        ld   d,$00
2a0a: 5f           ld   e,a
2a0b: 19           add  hl,de
2a0c: 3c           inc  a
2a0d: 32 1a 2b     ld   ($2B1A),a
2a10: f1           pop  af
2a11: 77           ld   (hl),a
2a12: cd 21 2a     call $2A21
2a15: c9           ret
2a16: 3e 01        ld   a,$01
2a18: 32 1d f6     ld   ($F61D),a
2a1b: 3e ff        ld   a,$FF
2a1d: 32 1e f6     ld   ($F61E),a
2a20: c9           ret
2a21: 21 18 2b     ld   hl,$2B18
2a24: 86           add  a,(hl)
2a25: 77           ld   (hl),a
2a26: c9           ret
2a27: cd c1 28     call $28C1
2a2a: b7           or   a
2a2b: 20 fa        jr   nz,$2A27
2a2d: 3e 06        ld   a,$06
2a2f: d3 11        out  ($11),a
2a31: c9           ret
2a32: cd c1 28     call $28C1
2a35: b7           or   a
2a36: 20 fa        jr   nz,$2A32
2a38: 3e 15        ld   a,$15
2a3a: d3 11        out  ($11),a
2a3c: c9           ret
2a3d: f5           push af
2a3e: 3a 11 2b     ld   a,($2B11)
2a41: 3c           inc  a
2a42: 32 11 2b     ld   ($2B11),a
2a45: 21 f7 f5     ld   hl,$F5F7
2a48: 3a 12 2b     ld   a,($2B12)
2a4b: 16 00        ld   d,$00
2a4d: 5f           ld   e,a
2a4e: 19           add  hl,de
2a4f: 3c           inc  a
2a50: 32 12 2b     ld   ($2B12),a
2a53: 37           scf
2a54: 3f           ccf
2a55: 3a 11 2b     ld   a,($2B11)
2a58: fe 21        cp   $21
2a5a: 28 0a        jr   z,$2A66
2a5c: d2 66 2a     jp   nc,$2A66
2a5f: f1           pop  af
2a60: 77           ld   (hl),a
2a61: cd 21 2a     call $2A21
2a64: af           xor  a
2a65: c9           ret
2a66: 3a 11 2b     ld   a,($2B11)
2a69: fe 22        cp   $22
2a6b: 28 06        jr   z,$2A73
2a6d: f1           pop  af
2a6e: 32 19 2b     ld   ($2B19),a
2a71: af           xor  a
2a72: c9           ret
2a73: f1           pop  af
2a74: 3a 18 2b     ld   a,($2B18)
2a77: 21 19 2b     ld   hl,$2B19
2a7a: be           cp   (hl)
2a7b: 20 03        jr   nz,$2A80
2a7d: 3e ff        ld   a,$FF
2a7f: c9           ret
2a80: 3e aa        ld   a,$AA
2a82: c9           ret
2a83: c5           push bc
2a84: d5           push de
2a85: e5           push hl
2a86: dd e5        push ix
2a88: fd e5        push iy
2a8a: 3a 1c 2b     ld   a,($2B1C)
2a8d: b7           or   a
2a8e: 28 14        jr   z,$2AA4
2a90: 3a 52 12     ld   a,($1252)
2a93: 47           ld   b,a
2a94: 3a 1b 2b     ld   a,($2B1B)
2a97: b8           cp   b
2a98: 20 1e        jr   nz,$2AB8
2a9a: af           xor  a
2a9b: cd ef 12     call $12EF
2a9e: af           xor  a
2a9f: 32 1c 2b     ld   ($2B1C),a
2aa2: 18 14        jr   $2AB8
2aa4: 3e 01        ld   a,$01
2aa6: 32 1c 2b     ld   ($2B1C),a
2aa9: 21 1d 2b     ld   hl,$2B1D
2aac: cd ec 12     call $12EC
2aaf: 3a 52 12     ld   a,($1252)
2ab2: 3c           inc  a
2ab3: 3c           inc  a
2ab4: 3c           inc  a
2ab5: 32 1b 2b     ld   ($2B1B),a
2ab8: 3a 66 f0     ld   a,($F066)
2abb: cb af        res  5,a
2abd: 32 66 f0     ld   ($F066),a
2ac0: fd e1        pop  iy
2ac2: dd e1        pop  ix
2ac4: e1           pop  hl
2ac5: d1           pop  de
2ac6: c1           pop  bc
2ac7: c9           ret
2ac8: 3d           dec  a
2ac9: 26 00        ld   h,$00
2acb: 6f           ld   l,a
2acc: 29           add  hl,hl
2acd: ed 5b 1f f6  ld   de,($F61F)
2ad1: 19           add  hl,de
2ad2: 7e           ld   a,(hl)
2ad3: 23           inc  hl
2ad4: 66           ld   h,(hl)
2ad5: 6f           ld   l,a
2ad6: af           xor  a
2ad7: b5           or   l
2ad8: c8           ret  z
2ad9: 1e 17        ld   e,$17
2adb: 57           ld   d,a
2adc: 19           add  hl,de
2add: 1e 05        ld   e,$05
2adf: 19           add  hl,de
2ae0: 5e           ld   e,(hl)
2ae1: 23           inc  hl
2ae2: 56           ld   d,(hl)
2ae3: cb 3a        srl  d
2ae5: cb 1b        rr   e
2ae7: cb 3a        srl  d
2ae9: cb 1b        rr   e
2aeb: cb 3a        srl  d
2aed: cb 1b        rr   e
2aef: 13           inc  de
2af0: 0e 02        ld   c,$02
2af2: 47           ld   b,a
2af3: 09           add  hl,bc
2af4: 4f           ld   c,a
2af5: 47           ld   b,a
2af6: 7e           ld   a,(hl)
2af7: 2f           cpl
2af8: cb 27        sla  a
2afa: 28 05        jr   z,$2B01
2afc: 30 fa        jr   nc,$2AF8
2afe: 03           inc  bc
2aff: 18 f7        jr   $2AF8
2b01: 30 01        jr   nc,$2B04
2b03: 03           inc  bc
2b04: 23           inc  hl
2b05: 1b           dec  de
2b06: 7a           ld   a,d
2b07: b3           or   e
2b08: 20 ec        jr   nz,$2AF6
2b0a: cb 21        sla  c
2b0c: cb 10        rl   b
2b0e: 69           ld   l,c
2b0f: 60           ld   h,b
2b10: c9           ret
2b11: 00           nop
2b12: 00           nop
2b13: 00           nop
2b14: 00           nop
2b15: 00           nop
2b16: 00           nop
2b17: 00           nop
2b18: 00           nop
2b19: 00           nop
2b1a: 00           nop
2b1b: 00           nop
2b1c: 00           nop
2b1d: 07           rlca
2b1e: 20 20        jr   nz,$2B40
2b20: 20 20        jr   nz,$2B42
2b22: 20 20        jr   nz,$2B44
2b24: 52           ld   d,d
2b25: 45           ld   b,l
2b26: 43           ld   b,e
2b27: 45           ld   b,l
2b28: 49           ld   c,c
2b29: 56           ld   d,(hl)
2b2a: 49           ld   c,c
2b2b: 4e           ld   c,(hl)
2b2c: 47           ld   b,a
2b2d: 20 41        jr   nz,$2B70
2b2f: 20 4d        jr   nz,$2B7E
2b31: 45           ld   b,l
2b32: 53           ld   d,e
2b33: 53           ld   d,e
2b34: 41           ld   b,c
2b35: 47           ld   b,a
2b36: 45           ld   b,l
2b37: 20 00        jr   nz,$2B39
2b39: c3 32 2c     jp   $2C32
2b3c: c3 54 2b     jp   $2B54
2b3f: c3 97 2d     jp   $2D97
2b42: c3 86 2d     jp   $2D86
2b45: c3 3d 37     jp   $373D
2b48: c3 65 37     jp   $3765
2b4b: c3 b6 36     jp   $36B6
2b4e: c3 69 35     jp   $3569
2b51: c3 56 36     jp   $3656
2b54: 32 db 38     ld   ($38DB),a
2b57: 3e ff        ld   a,$FF
2b59: 32 54 12     ld   ($1254),a
2b5c: 3e 0c        ld   a,$0C
2b5e: cd f4 37     call $37F4
2b61: 78           ld   a,b
2b62: b7           or   a
2b63: cc af 2b     call z,$2BAF
2b66: cd bb 2b     call $2BBB
2b69: 2a c9 38     ld   hl,($38C9)
2b6c: cd ca 37     call $37CA
2b6f: 3a db 38     ld   a,($38DB)
2b72: b7           or   a
2b73: 3a d6 38     ld   a,($38D6)
2b76: 28 1d        jr   z,$2B95
2b78: 01 d0 07     ld   bc,$07D0
2b7b: 11 00 04     ld   de,$0400
2b7e: cd 46 34     call $3446
2b81: cd a6 33     call $33A6
2b84: 06 44        ld   b,$44
2b86: 21 d4 38     ld   hl,$38D4
2b89: 3a 27 27     ld   a,($2727)
2b8c: b7           or   a
2b8d: 20 02        jr   nz,$2B91
2b8f: 06 64        ld   b,$64
2b91: 70           ld   (hl),b
2b92: 3a d6 38     ld   a,($38D6)
2b95: 32 d6 38     ld   ($38D6),a
2b98: b7           or   a
2b99: c4 86 2d     call nz,$2D86
2b9c: cc 97 2d     call z,$2D97
2b9f: db 38        in   a,($38)
2ba1: e6 20        and  $20
2ba3: 28 fa        jr   z,$2B9F
2ba5: 3e 0d        ld   a,$0D
2ba7: cd f4 37     call $37F4
2baa: af           xor  a
2bab: 32 54 12     ld   ($1254),a
2bae: c9           ret
2baf: 3e 6f        ld   a,$6F
2bb1: cd f4 37     call $37F4
2bb4: 21 46 38     ld   hl,$3846
2bb7: cd da 37     call $37DA
2bba: c9           ret
2bbb: 21 51 38     ld   hl,$3851
2bbe: cd da 37     call $37DA
2bc1: 21 57 38     ld   hl,$3857
2bc4: cd da 37     call $37DA
2bc7: af           xor  a
2bc8: d3 3a        out  ($3A),a
2bca: 3a f5 54     ld   a,($54F5)
2bcd: 32 bc 38     ld   ($38BC),a
2bd0: 32 5d 38     ld   ($385D),a
2bd3: 32 9b 38     ld   ($389B),a
2bd6: 21 5b 38     ld   hl,$385B
2bd9: cd da 37     call $37DA
2bdc: 3a db 38     ld   a,($38DB)
2bdf: b7           or   a
2be0: ca 1e 2c     jp   z,$2C1E
2be3: 21 af ff     ld   hl,$FFAF
2be6: 22 cd 38     ld   ($38CD),hl
2be9: 3e 00        ld   a,$00
2beb: 21 14 38     ld   hl,$3814
2bee: f5           push af
2bef: e5           push hl
2bf0: ed 5b bc 38  ld   de,($38BC)
2bf4: 16 00        ld   d,$00
2bf6: cd e2 8a     call $8AE2
2bf9: eb           ex   de,hl
2bfa: e1           pop  hl
2bfb: f1           pop  af
2bfc: 73           ld   (hl),e
2bfd: 23           inc  hl
2bfe: 72           ld   (hl),d
2bff: 23           inc  hl
2c00: 3c           inc  a
2c01: fe 1a        cp   $1A
2c03: c2 ee 2b     jp   nz,$2BEE
2c06: 3a bc 38     ld   a,($38BC)
2c09: 5f           ld   e,a
2c0a: 16 00        ld   d,$00
2c0c: 3a bf 38     ld   a,($38BF)
2c0f: cd e2 8a     call $8AE2
2c12: 22 cb 38     ld   ($38CB),hl
2c15: 22 cf 38     ld   ($38CF),hl
2c18: 22 d1 38     ld   ($38D1),hl
2c1b: cd 10 2d     call $2D10
2c1e: cd 75 2d     call $2D75
2c21: 21 66 38     ld   hl,$3866
2c24: cd da 37     call $37DA
2c27: 3e 4c        ld   a,$4C
2c29: cd f4 37     call $37F4
2c2c: 3e 02        ld   a,$02
2c2e: cd fa 37     call $37FA
2c31: c9           ret
2c32: 3e ff        ld   a,$FF
2c34: 32 54 12     ld   ($1254),a
2c37: 3a c2 38     ld   a,($38C2)
2c3a: b7           or   a
2c3b: c2 b6 2d     jp   nz,$2DB6
2c3e: 3a c1 38     ld   a,($38C1)
2c41: b7           or   a
2c42: 28 04        jr   z,$2C48
2c44: 2a c3 38     ld   hl,($38C3)
2c47: e9           jp   (hl)
2c48: 79           ld   a,c
2c49: b7           or   a
2c4a: 28 11        jr   z,$2C5D
2c4c: fe 20        cp   $20
2c4e: da c8 2d     jp   c,$2DC8
2c51: 3a 31 27     ld   a,($2731)
2c54: b7           or   a
2c55: 28 02        jr   z,$2C59
2c57: cb b9        res  7,c
2c59: 79           ld   a,c
2c5a: cd 62 2c     call $2C62
2c5d: af           xor  a
2c5e: 32 54 12     ld   ($1254),a
2c61: c9           ret
2c62: 32 72 38     ld   ($3872),a
2c65: cd 6a 32     call $326A
2c68: 20 0f        jr   nz,$2C79
2c6a: 3a c0 38     ld   a,($38C0)
2c6d: 32 73 38     ld   ($3873),a
2c70: 21 70 38     ld   hl,$3870
2c73: cd da 37     call $37DA
2c76: c3 a6 2c     jp   $2CA6
2c79: cd 49 35     call $3549
2c7c: e6 33        and  $33
2c7e: 20 0d        jr   nz,$2C8D
2c80: cd 68 37     call $3768
2c83: 7a           ld   a,d
2c84: e6 c8        and  $C8
2c86: 57           ld   d,a
2c87: 3a c0 38     ld   a,($38C0)
2c8a: b2           or   d
2c8b: 18 e0        jr   $2C6D
2c8d: cd 0a 35     call $350A
2c90: 3a c0 38     ld   a,($38C0)
2c93: b2           or   d
2c94: 32 73 38     ld   ($3873),a
2c97: 21 70 38     ld   hl,$3870
2c9a: cd da 37     call $37DA
2c9d: cd a6 2c     call $2CA6
2ca0: cd 4b 31     call $314B
2ca3: c3 53 32     jp   $3253
2ca6: 21 bd 38     ld   hl,$38BD
2ca9: 34           inc  (hl)
2caa: 7e           ld   a,(hl)
2cab: 2b           dec  hl
2cac: be           cp   (hl)
2cad: c0           ret  nz
2cae: 23           inc  hl
2caf: 3a 26 27     ld   a,($2726)
2cb2: b7           or   a
2cb3: 20 04        jr   nz,$2CB9
2cb5: 35           dec  (hl)
2cb6: c3 68 37     jp   $3768
2cb9: af           xor  a
2cba: 77           ld   (hl),a
2cbb: 23           inc  hl
2cbc: 34           inc  (hl)
2cbd: 7e           ld   a,(hl)
2cbe: 23           inc  hl
2cbf: be           cp   (hl)
2cc0: 20 f4        jr   nz,$2CB6
2cc2: 2b           dec  hl
2cc3: 35           dec  (hl)
2cc4: 3a bc 38     ld   a,($38BC)
2cc7: 3d           dec  a
2cc8: 6f           ld   l,a
2cc9: 3a bf 38     ld   a,($38BF)
2ccc: 3d           dec  a
2ccd: 67           ld   h,a
2cce: e5           push hl
2ccf: cd 6b 37     call $376B
2cd2: cd 39 35     call $3539
2cd5: f6 04        or   $04
2cd7: 57           ld   d,a
2cd8: 1e 20        ld   e,$20
2cda: 21 bc 38     ld   hl,$38BC
2cdd: 06 00        ld   b,$00
2cdf: 4e           ld   c,(hl)
2ce0: e1           pop  hl
2ce1: 2c           inc  l
2ce2: cd 6b 37     call $376B
2ce5: cd 46 34     call $3446
2ce8: cd 48 2d     call $2D48
2ceb: cd 6a 32     call $326A
2cee: 28 11        jr   z,$2D01
2cf0: 2a bd 38     ld   hl,($38BD)
2cf3: e5           push hl
2cf4: 21 00 00     ld   hl,$0000
2cf7: 22 bd 38     ld   ($38BD),hl
2cfa: cd 4b 31     call $314B
2cfd: e1           pop  hl
2cfe: 22 bd 38     ld   ($38BD),hl
2d01: 3a c8 38     ld   a,($38C8)
2d04: 3c           inc  a
2d05: 32 c8 38     ld   ($38C8),a
2d08: fe 18        cp   $18
2d0a: cc 63 32     call z,$3263
2d0d: c3 68 37     jp   $3768
2d10: f5           push af
2d11: 2a c9 38     ld   hl,($38C9)
2d14: 22 aa 38     ld   ($38AA),hl
2d17: 11 af ff     ld   de,$FFAF
2d1a: ed 53 ae 38  ld   ($38AE),de
2d1e: ed 5b d1 38  ld   de,($38D1)
2d22: 19           add  hl,de
2d23: 22 cb 38     ld   ($38CB),hl
2d26: 22 cf 38     ld   ($38CF),hl
2d29: af           xor  a
2d2a: 32 b1 38     ld   ($38B1),a
2d2d: 32 b0 38     ld   ($38B0),a
2d30: 32 ac 38     ld   ($38AC),a
2d33: 32 b4 38     ld   ($38B4),a
2d36: 3e 18        ld   a,$18
2d38: 32 ad 38     ld   ($38AD),a
2d3b: 21 af ff     ld   hl,$FFAF
2d3e: 22 b2 38     ld   ($38B2),hl
2d41: 3e 01        ld   a,$01
2d43: 32 b5 38     ld   ($38B5),a
2d46: f1           pop  af
2d47: c9           ret
2d48: 21 bc 38     ld   hl,$38BC
2d4b: 5e           ld   e,(hl)
2d4c: 16 00        ld   d,$00
2d4e: 2a aa 38     ld   hl,($38AA)
2d51: 19           add  hl,de
2d52: 22 aa 38     ld   ($38AA),hl
2d55: ed 5b c9 38  ld   de,($38C9)
2d59: ed 53 ae 38  ld   ($38AE),de
2d5d: ed 52        sbc  hl,de
2d5f: 22 cf 38     ld   ($38CF),hl
2d62: 3a ad 38     ld   a,($38AD)
2d65: 3d           dec  a
2d66: cc 10 2d     call z,$2D10
2d69: 28 0a        jr   z,$2D75
2d6b: 32 ad 38     ld   ($38AD),a
2d6e: 3a b1 38     ld   a,($38B1)
2d71: 3c           inc  a
2d72: 32 b1 38     ld   ($38B1),a
2d75: db 38        in   a,($38)
2d77: e6 20        and  $20
2d79: 28 fa        jr   z,$2D75
2d7b: 21 a8 38     ld   hl,$38A8
2d7e: c3 da 37     jp   $37DA
2d81: 3e ff        ld   a,$FF
2d83: 32 d6 38     ld   ($38D6),a
2d86: f5           push af
2d87: 3e 4b        ld   a,$4B
2d89: cd f4 37     call $37F4
2d8c: 3e 0f        ld   a,$0F
2d8e: cd fa 37     call $37FA
2d91: f1           pop  af
2d92: c9           ret
2d93: af           xor  a
2d94: 32 d6 38     ld   ($38D6),a
2d97: f5           push af
2d98: 3a d6 38     ld   a,($38D6)
2d9b: b7           or   a
2d9c: 20 16        jr   nz,$2DB4
2d9e: 3e 4b        ld   a,$4B
2da0: cd f4 37     call $37F4
2da3: 3a d5 38     ld   a,($38D5)
2da6: cd fa 37     call $37FA
2da9: 3a d4 38     ld   a,($38D4)
2dac: cd fa 37     call $37FA
2daf: 3e 49        ld   a,$49
2db1: cd fa 37     call $37FA
2db4: f1           pop  af
2db5: c9           ret
2db6: af           xor  a
2db7: 32 c2 38     ld   ($38C2),a
2dba: 79           ld   a,c
2dbb: 21 5f 2e     ld   hl,$2E5F
2dbe: 06 1c        ld   b,$1C
2dc0: 18 0b        jr   $2DCD
2dc2: 3e ff        ld   a,$FF
2dc4: 32 c2 38     ld   ($38C2),a
2dc7: c9           ret
2dc8: 21 37 2e     ld   hl,$2E37
2dcb: 06 14        ld   b,$14
2dcd: be           cp   (hl)
2dce: 28 07        jr   z,$2DD7
2dd0: 23           inc  hl
2dd1: 23           inc  hl
2dd2: 10 f9        djnz $2DCD
2dd4: c3 5d 2c     jp   $2C5D
2dd7: 23           inc  hl
2dd8: 7e           ld   a,(hl)
2dd9: 16 00        ld   d,$00
2ddb: 87           add  a,a
2ddc: 21 ed 2d     ld   hl,$2DED
2ddf: 5f           ld   e,a
2de0: 19           add  hl,de
2de1: 5e           ld   e,(hl)
2de2: 23           inc  hl
2de3: 56           ld   d,(hl)
2de4: 21 5d 2c     ld   hl,$2C5D
2de7: e5           push hl
2de8: d5           push de
2de9: 2a bd 38     ld   hl,($38BD)
2dec: c9           ret
2ded: a6           and  (hl)
2dee: 33           inc  sp
2def: d7           rst  $10
2df0: 30 de        jr   nc,$2DD0
2df2: 30 f4        jr   nc,$2DE8
2df4: 33           inc  sp
2df5: f0           ret  p
2df6: 32 70 32     ld   ($3270),a
2df9: 76           halt
2dfa: 32 7c 32     ld   ($327C),a
2dfd: c3 32 16     jp   $1632
2e00: 30 a6        jr   nc,$2DA8
2e02: 18 7a        jr   $2E7E
2e04: 33           inc  sp
2e05: 64           ld   h,h
2e06: 33           inc  sp
2e07: 93           sub  e
2e08: 33           inc  sp
2e09: 57           ld   d,a
2e0a: 33           inc  sp
2e0b: 73           ld   (hl),e
2e0c: 33           inc  sp
2e0d: c2 2d 62     jp   nz,$622D
2e10: 37           scf
2e11: 5d           ld   e,l
2e12: 2c           inc  l
2e13: e5           push hl
2e14: 30 ec        jr   nc,$2E02
2e16: 30 c8        jr   nc,$2DE0
2e18: 30 bc        jr   nc,$2DD6
2e1a: 30 f3        jr   nc,$2E0F
2e1c: 30 fa        jr   nc,$2E18
2e1e: 30 f8        jr   nc,$2E18
2e20: 32 24 33     ld   ($3324),a
2e23: 9c           sbc  a,h
2e24: 18 a1        jr   $2DC7
2e26: 18 cd        jr   $2DF5
2e28: 33           inc  sp
2e29: ef           rst  $28
2e2a: 33           inc  sp
2e2b: eb           ex   de,hl
2e2c: 32 a1 33     ld   ($33A1),a
2e2f: 41           ld   b,c
2e30: 37           scf
2e31: 64           ld   h,h
2e32: 35           dec  (hl)
2e33: 97           sub  a
2e34: 2e 0d        ld   l,$0D
2e36: 30 07        jr   nc,$2E3F
2e38: 0a           ld   a,(bc)
2e39: 08           ex   af,af'
2e3a: 0b           dec  bc
2e3b: 09           add  hl,bc
2e3c: 19           add  hl,de
2e3d: 0a           ld   a,(bc)
2e3e: 0c           inc  c
2e3f: 0b           dec  bc
2e40: 0d           dec  c
2e41: 0c           inc  c
2e42: 0e 0d        ld   c,$0D
2e44: 0f           rrca
2e45: 1a           ld   a,(de)
2e46: 00           nop
2e47: 1b           dec  de
2e48: 10 1e        djnz $2E68
2e4a: 11 00 00     ld   de,$0000
2e4d: 00           nop
2e4e: 00           nop
2e4f: 00           nop
2e50: 00           nop
2e51: 00           nop
2e52: 00           nop
2e53: 00           nop
2e54: 00           nop
2e55: 00           nop
2e56: 00           nop
2e57: 00           nop
2e58: 00           nop
2e59: 00           nop
2e5a: 00           nop
2e5b: 00           nop
2e5c: 00           nop
2e5d: 00           nop
2e5e: 00           nop
2e5f: 2b           dec  hl
2e60: 20 6a        jr   nz,$2ECC
2e62: 01 6b 02     ld   bc,$026B
2e65: 59           ld   e,c
2e66: 03           inc  bc
2e67: 54           ld   d,h
2e68: 04           inc  b
2e69: 45           ld   b,l
2e6a: 05           dec  b
2e6b: 49           ld   c,c
2e6c: 1a           ld   a,(de)
2e6d: 52           ld   d,d
2e6e: 06 51        ld   b,$51
2e70: 07           rlca
2e71: 57           ld   d,a
2e72: 08           ex   af,af'
2e73: 3d           dec  a
2e74: 09           add  hl,bc
2e75: 5e           ld   e,(hl)
2e76: 13           inc  de
2e77: 71           ld   (hl),c
2e78: 14           inc  d
2e79: 29           add  hl,hl
2e7a: 15           dec  d
2e7b: 28 16        jr   z,$2E93
2e7d: 22 1c 23     ld   ($231C),hl
2e80: 1b           dec  de
2e81: 2a 1d 79     ld   hl,($791D)
2e84: 1e 74        ld   e,$74
2e86: 1f           rra
2e87: 5f           ld   e,a
2e88: 17           rla
2e89: 3f           ccf
2e8a: 21 6c 22     ld   hl,$226C
2e8d: 6d           ld   l,l
2e8e: 22 50 24     ld   ($2450),hl
2e91: 58           ld   e,b
2e92: 23           inc  hl
2e93: 00           nop
2e94: 00           nop
2e95: 00           nop
2e96: 00           nop
2e97: 3e ff        ld   a,$FF
2e99: 32 c1 38     ld   ($38C1),a
2e9c: 21 a3 2e     ld   hl,$2EA3
2e9f: 22 c3 38     ld   ($38C3),hl
2ea2: c9           ret
2ea3: af           xor  a
2ea4: 32 c1 38     ld   ($38C1),a
2ea7: 79           ld   a,c
2ea8: fe 36        cp   $36
2eaa: ca 7e 30     jp   z,$307E
2ead: fe 37        cp   $37
2eaf: ca 9d 30     jp   z,$309D
2eb2: fe 41        cp   $41
2eb4: ca c2 2f     jp   z,$2FC2
2eb7: fe 42        cp   $42
2eb9: ca cd 2f     jp   z,$2FCD
2ebc: fe 49        cp   $49
2ebe: ca db 2f     jp   z,$2FDB
2ec1: fe 4a        cp   $4A
2ec3: ca e6 2f     jp   z,$2FE6
2ec6: fe 4b        cp   $4B
2ec8: ca f4 2f     jp   z,$2FF4
2ecb: fe 4c        cp   $4C
2ecd: ca ff 2f     jp   z,$2FFF
2ed0: fe 2a        cp   $2A
2ed2: ca 03 2f     jp   z,$2F03
2ed5: f5           push af
2ed6: 3a f8 54     ld   a,($54F8)
2ed9: b7           or   a
2eda: 28 24        jr   z,$2F00
2edc: f1           pop  af
2edd: fe 4f        cp   $4F
2edf: ca 0c 2f     jp   z,$2F0C
2ee2: fe 51        cp   $51
2ee4: ca 15 2f     jp   z,$2F15
2ee7: fe 52        cp   $52
2ee9: ca 1e 2f     jp   z,$2F1E
2eec: fe 53        cp   $53
2eee: ca 27 2f     jp   z,$2F27
2ef1: 21 5d 2c     ld   hl,$2C5D
2ef4: e5           push hl
2ef5: fe 45        cp   $45
2ef7: ca 93 2d     jp   z,$2D93
2efa: fe 46        cp   $46
2efc: ca 81 2d     jp   z,$2D81
2eff: c9           ret
2f00: f1           pop  af
2f01: 18 ee        jr   $2EF1
2f03: 21 d9 88     ld   hl,$88D9
2f06: 22 be 2f     ld   ($2FBE),hl
2f09: c3 30 2f     jp   $2F30
2f0c: 21 f6 88     ld   hl,$88F6
2f0f: 22 be 2f     ld   ($2FBE),hl
2f12: c3 30 2f     jp   $2F30
2f15: 21 66 89     ld   hl,$8966
2f18: 22 be 2f     ld   ($2FBE),hl
2f1b: c3 30 2f     jp   $2F30
2f1e: 21 e5 89     ld   hl,$89E5
2f21: 22 be 2f     ld   ($2FBE),hl
2f24: c3 30 2f     jp   $2F30
2f27: 21 83 8a     ld   hl,$8A83
2f2a: 22 be 2f     ld   ($2FBE),hl
2f2d: c3 30 2f     jp   $2F30
2f30: 21 b9 88     ld   hl,$88B9
2f33: 22 c0 2f     ld   ($2FC0),hl
2f36: c3 39 2f     jp   $2F39
2f39: 3e ff        ld   a,$FF
2f3b: 32 c1 38     ld   ($38C1),a
2f3e: 21 45 2f     ld   hl,$2F45
2f41: 22 c3 38     ld   ($38C3),hl
2f44: c9           ret
2f45: 79           ld   a,c
2f46: 21 00 00     ld   hl,$0000
2f49: 22 bc 2f     ld   ($2FBC),hl
2f4c: fe 2f        cp   $2F
2f4e: c2 98 2f     jp   nz,$2F98
2f51: 21 5a 2f     ld   hl,$2F5A
2f54: 22 c3 38     ld   ($38C3),hl
2f57: c3 5d 2c     jp   $2C5D
2f5a: 79           ld   a,c
2f5b: fe 0d        cp   $0D
2f5d: ca 98 2f     jp   z,$2F98
2f60: fe 20        cp   $20
2f62: ca 83 2f     jp   z,$2F83
2f65: fe 2f        cp   $2F
2f67: ca 9f 2f     jp   z,$2F9F
2f6a: fe 24        cp   $24
2f6c: ca 8c 2f     jp   z,$2F8C
2f6f: d6 30        sub  $30
2f71: f5           push af
2f72: 3e 0a        ld   a,$0A
2f74: ed 5b bc 2f  ld   de,($2FBC)
2f78: cd e2 8a     call $8AE2
2f7b: f1           pop  af
2f7c: 5f           ld   e,a
2f7d: 16 00        ld   d,$00
2f7f: 19           add  hl,de
2f80: 22 bc 2f     ld   ($2FBC),hl
2f83: 21 5a 2f     ld   hl,$2F5A
2f86: 22 c3 38     ld   ($38C3),hl
2f89: c3 5d 2c     jp   $2C5D
2f8c: af           xor  a
2f8d: 32 c1 38     ld   ($38C1),a
2f90: 2a be 2f     ld   hl,($2FBE)
2f93: 11 5d 2c     ld   de,$2C5D
2f96: d5           push de
2f97: e9           jp   (hl)
2f98: af           xor  a
2f99: 32 c1 38     ld   ($38C1),a
2f9c: c3 5d 2c     jp   $2C5D
2f9f: 2a c0 2f     ld   hl,($2FC0)
2fa2: ed 5b bc 2f  ld   de,($2FBC)
2fa6: 73           ld   (hl),e
2fa7: 23           inc  hl
2fa8: 72           ld   (hl),d
2fa9: 23           inc  hl
2faa: 22 c0 2f     ld   ($2FC0),hl
2fad: 21 00 00     ld   hl,$0000
2fb0: 22 bc 2f     ld   ($2FBC),hl
2fb3: 21 5a 2f     ld   hl,$2F5A
2fb6: 22 c3 38     ld   ($38C3),hl
2fb9: c3 5d 2c     jp   $2C5D
2fbc: 00           nop
2fbd: 00           nop
2fbe: 00           nop
2fbf: 00           nop
2fc0: 00           nop
2fc1: 00           nop
2fc2: 3a c0 38     ld   a,($38C0)
2fc5: f6 08        or   $08
2fc7: 32 c0 38     ld   ($38C0),a
2fca: f2 5d 2c     jp   p,$2C5D
2fcd: 3a c0 38     ld   a,($38C0)
2fd0: 47           ld   b,a
2fd1: 3e 08        ld   a,$08
2fd3: 2f           cpl
2fd4: a0           and  b
2fd5: 32 c0 38     ld   ($38C0),a
2fd8: f2 5d 2c     jp   p,$2C5D
2fdb: 3a c0 38     ld   a,($38C0)
2fde: f6 80        or   $80
2fe0: 32 c0 38     ld   ($38C0),a
2fe3: c3 5d 2c     jp   $2C5D
2fe6: 3a c0 38     ld   a,($38C0)
2fe9: 47           ld   b,a
2fea: 3e 80        ld   a,$80
2fec: 2f           cpl
2fed: a0           and  b
2fee: 32 c0 38     ld   ($38C0),a
2ff1: c3 5d 2c     jp   $2C5D
2ff4: 3a c0 38     ld   a,($38C0)
2ff7: f6 40        or   $40
2ff9: 32 c0 38     ld   ($38C0),a
2ffc: c3 5d 2c     jp   $2C5D
2fff: 3a c0 38     ld   a,($38C0)
3002: 47           ld   b,a
3003: 3e 40        ld   a,$40
3005: 2f           cpl
3006: a0           and  b
3007: 32 c0 38     ld   ($38C0),a
300a: c3 5d 2c     jp   $2C5D
300d: 3a 66 f0     ld   a,($F066)
3010: f6 01        or   $01
3012: 32 66 f0     ld   ($F066),a
3015: c9           ret
3016: 3e ff        ld   a,$FF
3018: 32 c1 38     ld   ($38C1),a
301b: 21 22 30     ld   hl,$3022
301e: 22 c3 38     ld   ($38C3),hl
3021: c9           ret
3022: 79           ld   a,c
3023: d6 20        sub  $20
3025: fe 19        cp   $19
3027: 30 03        jr   nc,$302C
3029: 32 c5 38     ld   ($38C5),a
302c: 21 35 30     ld   hl,$3035
302f: 22 c3 38     ld   ($38C3),hl
3032: c3 5d 2c     jp   $2C5D
3035: 79           ld   a,c
3036: d6 20        sub  $20
3038: fe 50        cp   $50
303a: 30 03        jr   nc,$303F
303c: 32 bd 38     ld   ($38BD),a
303f: af           xor  a
3040: 32 c1 38     ld   ($38C1),a
3043: 3a c5 38     ld   a,($38C5)
3046: 32 be 38     ld   ($38BE),a
3049: cd 68 37     call $3768
304c: c3 5d 2c     jp   $2C5D
304f: 3e ff        ld   a,$FF
3051: 32 c1 38     ld   ($38C1),a
3054: 21 5b 30     ld   hl,$305B
3057: 22 c3 38     ld   ($38C3),hl
305a: c9           ret
305b: 79           ld   a,c
305c: fe 30        cp   $30
305e: 28 0f        jr   z,$306F
3060: 3e 8f        ld   a,$8F
3062: 32 d5 38     ld   ($38D5),a
3065: af           xor  a
3066: 32 c1 38     ld   ($38C1),a
3069: cd 93 2d     call $2D93
306c: c3 5d 2c     jp   $2C5D
306f: af           xor  a
3070: 32 c1 38     ld   ($38C1),a
3073: 3e 0f        ld   a,$0F
3075: 32 d5 38     ld   ($38D5),a
3078: cd 81 2d     call $2D81
307b: c3 5d 2c     jp   $2C5D
307e: 3e ff        ld   a,$FF
3080: 32 c1 38     ld   ($38C1),a
3083: 21 8c 30     ld   hl,$308C
3086: 22 c3 38     ld   ($38C3),hl
3089: c3 5d 2c     jp   $2C5D
308c: af           xor  a
308d: 32 c1 38     ld   ($38C1),a
3090: 79           ld   a,c
3091: e6 0f        and  $0F
3093: ca 5d 2c     jp   z,$2C5D
3096: 3d           dec  a
3097: cd 7b 19     call $197B
309a: c3 5d 2c     jp   $2C5D
309d: 3e ff        ld   a,$FF
309f: 32 c1 38     ld   ($38C1),a
30a2: 21 ab 30     ld   hl,$30AB
30a5: 22 c3 38     ld   ($38C3),hl
30a8: c3 5d 2c     jp   $2C5D
30ab: af           xor  a
30ac: 32 c1 38     ld   ($38C1),a
30af: 79           ld   a,c
30b0: e6 0f        and  $0F
30b2: ca 5d 2c     jp   z,$2C5D
30b5: 3d           dec  a
30b6: cd 84 19     call $1984
30b9: c3 5d 2c     jp   $2C5D
30bc: 3a c0 38     ld   a,($38C0)
30bf: f6 04        or   $04
30c1: 32 c0 38     ld   ($38C0),a
30c4: f2 5d 2c     jp   p,$2C5D
30c7: c9           ret
30c8: 3a c0 38     ld   a,($38C0)
30cb: 47           ld   b,a
30cc: 3e 04        ld   a,$04
30ce: 2f           cpl
30cf: a0           and  b
30d0: 32 c0 38     ld   ($38C0),a
30d3: f2 5d 2c     jp   p,$2C5D
30d6: c9           ret
30d7: cd 01 31     call $3101
30da: 01 30 00     ld   bc,$0030
30dd: ff           rst  $38
30de: cd 01 31     call $3101
30e1: 01 02 00     ld   bc,$0002
30e4: f7           rst  $30
30e5: cd 01 31     call $3101
30e8: 00           nop
30e9: 22 80 80     ld   ($8080),hl
30ec: cd 01 31     call $3101
30ef: 00           nop
30f0: 12           ld   (de),a
30f1: 00           nop
30f2: 00           nop
30f3: cd 01 31     call $3101
30f6: 00           nop
30f7: 20 40        jr   nz,$3139
30f9: 40           ld   b,b
30fa: cd 01 31     call $3101
30fd: 00           nop
30fe: 12           ld   (de),a
30ff: 00           nop
3100: 00           nop
3101: cd 68 37     call $3768
3104: cd 49 35     call $3549
3107: f5           push af
3108: e6 33        and  $33
310a: cc 59 32     call z,$3259
310d: cd 0a 35     call $350A
3110: c1           pop  bc
3111: e1           pop  hl
3112: 78           ld   a,b
3113: e6 33        and  $33
3115: fe 30        cp   $30
3117: 7e           ld   a,(hl)
3118: 23           inc  hl
3119: 20 07        jr   nz,$3122
311b: b7           or   a
311c: 20 04        jr   nz,$3122
311e: 7e           ld   a,(hl)
311f: b0           or   b
3120: 18 01        jr   $3123
3122: 7e           ld   a,(hl)
3123: 5f           ld   e,a
3124: 23           inc  hl
3125: 7a           ld   a,d
3126: b6           or   (hl)
3127: 23           inc  hl
3128: a6           and  (hl)
3129: 47           ld   b,a
312a: 3a c0 38     ld   a,($38C0)
312d: b0           or   b
312e: b3           or   e
312f: 67           ld   h,a
3130: 2e 20        ld   l,$20
3132: 22 72 38     ld   ($3872),hl
3135: 21 70 38     ld   hl,$3870
3138: cd da 37     call $37DA
313b: 3a 26 27     ld   a,($2726)
313e: f5           push af
313f: 3e 01        ld   a,$01
3141: 32 26 27     ld   ($2726),a
3144: cd a6 2c     call $2CA6
3147: f1           pop  af
3148: 32 26 27     ld   ($2726),a
314b: cd 68 37     call $3768
314e: cd 6a 32     call $326A
3151: c8           ret  z
3152: cd 0a 35     call $350A
3155: 7a           ld   a,d
3156: 47           ld   b,a
3157: ee c8        xor  $C8
3159: 4f           ld   c,a
315a: cd 68 37     call $3768
315d: cd 49 35     call $3549
3160: cd 68 37     call $3768
3163: 7a           ld   a,d
3164: a1           and  c
3165: 4f           ld   c,a
3166: 7a           ld   a,d
3167: 2f           cpl
3168: a0           and  b
3169: 47           ld   b,a
316a: b1           or   c
316b: 28 3d        jr   z,$31AA
316d: cd 86 2d     call $2D86
3170: 2a bd 38     ld   hl,($38BD)
3173: 7c           ld   a,h
3174: fe 18        cp   $18
3176: ca f1 31     jp   z,$31F1
3179: 2a 6d 38     ld   hl,($386D)
317c: 3a d3 38     ld   a,($38D3)
317f: b7           or   a
3180: eb           ex   de,hl
3181: 20 1c        jr   nz,$319F
3183: 2a cb 38     ld   hl,($38CB)
3186: ed 52        sbc  hl,de
3188: c8           ret  z
3189: cd ad 31     call $31AD
318c: 28 16        jr   z,$31A4
318e: 3a b1 38     ld   a,($38B1)
3191: b7           or   a
3192: 28 10        jr   z,$31A4
3194: ed 5b c9 38  ld   de,($38C9)
3198: ed 53 6d 38  ld   ($386D),de
319c: cd cd 37     call $37CD
319f: 2a cf 38     ld   hl,($38CF)
31a2: ed 52        sbc  hl,de
31a4: c4 ad 31     call nz,$31AD
31a7: cd 97 2d     call $2D97
31aa: c3 68 37     jp   $3768
31ad: 22 ba 38     ld   ($38BA),hl
31b0: e5           push hl
31b1: cd 49 35     call $3549
31b4: e1           pop  hl
31b5: a1           and  c
31b6: 20 06        jr   nz,$31BE
31b8: 7a           ld   a,d
31b9: a0           and  b
31ba: a8           xor  b
31bb: ca 02 32     jp   z,$3202
31be: 7a           ld   a,d
31bf: e6 33        and  $33
31c1: 20 0b        jr   nz,$31CE
31c3: 2b           dec  hl
31c4: 7d           ld   a,l
31c5: b4           or   h
31c6: 20 e8        jr   nz,$31B0
31c8: 11 00 00     ld   de,$0000
31cb: c3 02 32     jp   $3202
31ce: 5f           ld   e,a
31cf: 1f           rra
31d0: 1f           rra
31d1: b3           or   e
31d2: e6 07        and  $07
31d4: 11 fa 31     ld   de,$31FA
31d7: 83           add  a,e
31d8: 5f           ld   e,a
31d9: 7a           ld   a,d
31da: ce 00        adc  a,$00
31dc: 57           ld   d,a
31dd: 1a           ld   a,(de)
31de: 57           ld   d,a
31df: 78           ld   a,b
31e0: b1           or   c
31e1: a2           and  d
31e2: 28 df        jr   z,$31C3
31e4: 7a           ld   a,d
31e5: e6 20        and  $20
31e7: 28 01        jr   z,$31EA
31e9: 2b           dec  hl
31ea: cd 02 32     call $3202
31ed: c8           ret  z
31ee: c3 ad 31     jp   $31AD
31f1: 3e 50        ld   a,$50
31f3: 95           sub  l
31f4: 26 00        ld   h,$00
31f6: 6f           ld   l,a
31f7: c3 a4 31     jp   $31A4
31fa: 00           nop
31fb: 40           ld   b,b
31fc: 08           ex   af,af'
31fd: 80           add  a,b
31fe: 00           nop
31ff: 28 c8        jr   z,$31C9
3201: 88           adc  a,b
3202: 7a           ld   a,d
3203: e6 c8        and  $C8
3205: 2f           cpl
3206: 57           ld   d,a
3207: d5           push de
3208: eb           ex   de,hl
3209: 2a ba 38     ld   hl,($38BA)
320c: ed 52        sbc  hl,de
320e: 2b           dec  hl
320f: 22 78 38     ld   ($3878),hl
3212: d1           pop  de
3213: 28 0e        jr   z,$3223
3215: 1e 3b        ld   e,$3B
3217: 78           ld   a,b
3218: b7           or   a
3219: c4 43 32     call nz,$3243
321c: 1e 3a        ld   e,$3A
321e: 79           ld   a,c
321f: b7           or   a
3220: c4 43 32     call nz,$3243
3223: 78           ld   a,b
3224: a2           and  d
3225: 47           ld   b,a
3226: 79           ld   a,c
3227: a2           and  d
3228: 4f           ld   c,a
3229: b0           or   b
322a: c8           ret  z
322b: ed 5b 78 38  ld   de,($3878)
322f: 00           nop
3230: 13           inc  de
3231: 2a 6d 38     ld   hl,($386D)
3234: 19           add  hl,de
3235: 22 6d 38     ld   ($386D),hl
3238: cd cd 37     call $37CD
323b: 2a ba 38     ld   hl,($38BA)
323e: ed 52        sbc  hl,de
3240: af           xor  a
3241: 3c           inc  a
3242: c9           ret
3243: 32 7c 38     ld   ($387C),a
3246: 7b           ld   a,e
3247: 32 7b 38     ld   ($387B),a
324a: cd cd 37     call $37CD
324d: 21 75 38     ld   hl,$3875
3250: c3 da 37     jp   $37DA
3253: 2a c6 38     ld   hl,($38C6)
3256: 2b           dec  hl
3257: 18 0d        jr   $3266
3259: af           xor  a
325a: 32 c8 38     ld   ($38C8),a
325d: 2a c6 38     ld   hl,($38C6)
3260: 23           inc  hl
3261: 18 03        jr   $3266
3263: 21 00 00     ld   hl,$0000
3266: 22 c6 38     ld   ($38C6),hl
3269: c9           ret
326a: 2a c6 38     ld   hl,($38C6)
326d: 7d           ld   a,l
326e: b4           or   h
326f: c9           ret
3270: 3a be 38     ld   a,($38BE)
3273: c3 93 34     jp   $3493
3276: 3a be 38     ld   a,($38BE)
3279: c3 58 34     jp   $3458
327c: cd aa 32     call $32AA
327f: 28 02        jr   z,$3283
3281: ed b8        lddr
3283: 23           inc  hl
3284: 36 20        ld   (hl),$20
3286: 23           inc  hl
3287: 36 04        ld   (hl),$04
3289: cd cd 37     call $37CD
328c: cd ea 34     call $34EA
328f: 2a bd 38     ld   hl,($38BD)
3292: e5           push hl
3293: 24           inc  h
3294: 2e 00        ld   l,$00
3296: 3a bf 38     ld   a,($38BF)
3299: bc           cp   h
329a: ca a3 32     jp   z,$32A3
329d: 22 bd 38     ld   ($38BD),hl
32a0: cd 4b 31     call $314B
32a3: e1           pop  hl
32a4: 22 bd 38     ld   ($38BD),hl
32a7: c3 4b 31     jp   $314B
32aa: 3a be 38     ld   a,($38BE)
32ad: 47           ld   b,a
32ae: cd be 34     call $34BE
32b1: 21 bc 38     ld   hl,$38BC
32b4: 7e           ld   a,(hl)
32b5: 23           inc  hl
32b6: 96           sub  (hl)
32b7: 3d           dec  a
32b8: 17           rla
32b9: 4f           ld   c,a
32ba: 06 00        ld   b,$00
32bc: 21 1d b2     ld   hl,$B21D
32bf: 11 1f b2     ld   de,$B21F
32c2: c9           ret
32c3: cd aa 32     call $32AA
32c6: 28 0b        jr   z,$32D3
32c8: ed 42        sbc  hl,bc
32ca: eb           ex   de,hl
32cb: ed 42        sbc  hl,bc
32cd: 13           inc  de
32ce: 23           inc  hl
32cf: ed b0        ldir
32d1: eb           ex   de,hl
32d2: 2b           dec  hl
32d3: 7e           ld   a,(hl)
32d4: 57           ld   d,a
32d5: cd 3c 35     call $353C
32d8: 23           inc  hl
32d9: 36 20        ld   (hl),$20
32db: 23           inc  hl
32dc: f6 04        or   $04
32de: 77           ld   (hl),a
32df: cd cd 37     call $37CD
32e2: cd ea 34     call $34EA
32e5: cd 68 37     call $3768
32e8: c3 4b 31     jp   $314B
32eb: 3e ff        ld   a,$FF
32ed: 32 da 38     ld   ($38DA),a
32f0: cd 0c 34     call $340C
32f3: af           xor  a
32f4: 32 da 38     ld   ($38DA),a
32f7: c9           ret
32f8: 3a bd 38     ld   a,($38BD)
32fb: cb 3f        srl  a
32fd: cb 3f        srl  a
32ff: cb 3f        srl  a
3301: 5f           ld   e,a
3302: 16 00        ld   d,$00
3304: 21 1a 33     ld   hl,$331A
3307: 19           add  hl,de
3308: 7e           ld   a,(hl)
3309: 32 bd 38     ld   ($38BD),a
330c: fe ff        cp   $FF
330e: 20 06        jr   nz,$3316
3310: cd 73 33     call $3373
3313: cd 64 33     call $3364
3316: cd 68 37     call $3768
3319: c9           ret
331a: 08           ex   af,af'
331b: 10 18        djnz $3335
331d: 20 28        jr   nz,$3347
331f: 30 38        jr   nc,$3359
3321: 40           ld   b,b
3322: 48           ld   c,b
3323: ff           rst  $38
3324: 3a bd 38     ld   a,($38BD)
3327: b7           or   a
3328: 28 08        jr   z,$3332
332a: d6 01        sub  $01
332c: cb 3f        srl  a
332e: cb 3f        srl  a
3330: cb 3f        srl  a
3332: 5f           ld   e,a
3333: 16 00        ld   d,$00
3335: 21 4d 33     ld   hl,$334D
3338: 19           add  hl,de
3339: 7e           ld   a,(hl)
333a: 32 bd 38     ld   ($38BD),a
333d: fe ff        cp   $FF
333f: 20 08        jr   nz,$3349
3341: 3e 4f        ld   a,$4F
3343: 32 bd 38     ld   ($38BD),a
3346: cd 93 33     call $3393
3349: cd 68 37     call $3768
334c: c9           ret
334d: ff           rst  $38
334e: 08           ex   af,af'
334f: 10 18        djnz $3369
3351: 20 28        jr   nz,$337B
3353: 30 36        jr   nc,$338B
3355: 40           ld   b,b
3356: 48           ld   c,b
3357: 21 bd 38     ld   hl,$38BD
335a: 34           inc  (hl)
335b: 7e           ld   a,(hl)
335c: 2b           dec  hl
335d: be           cp   (hl)
335e: da 68 37     jp   c,$3768
3361: cd 73 33     call $3373
3364: 21 be 38     ld   hl,$38BE
3367: 34           inc  (hl)
3368: 7e           ld   a,(hl)
3369: 23           inc  hl
336a: be           cp   (hl)
336b: c2 68 37     jp   nz,$3768
336e: 2b           dec  hl
336f: 35           dec  (hl)
3370: c3 c4 2c     jp   $2CC4
3373: af           xor  a
3374: 32 bd 38     ld   ($38BD),a
3377: c3 68 37     jp   $3768
337a: 21 bd 38     ld   hl,$38BD
337d: 35           dec  (hl)
337e: f2 68 37     jp   p,$3768
3381: 2b           dec  hl
3382: 7e           ld   a,(hl)
3383: 23           inc  hl
3384: 3d           dec  a
3385: 77           ld   (hl),a
3386: 23           inc  hl
3387: 35           dec  (hl)
3388: f2 68 37     jp   p,$3768
338b: 23           inc  hl
338c: 7e           ld   a,(hl)
338d: 3d           dec  a
338e: 2b           dec  hl
338f: 77           ld   (hl),a
3390: c3 68 37     jp   $3768
3393: 21 be 38     ld   hl,$38BE
3396: 35           dec  (hl)
3397: f2 68 37     jp   p,$3768
339a: 23           inc  hl
339b: 7e           ld   a,(hl)
339c: 3d           dec  a
339d: 2b           dec  hl
339e: 77           ld   (hl),a
339f: 18 ef        jr   $3390
33a1: 3e 04        ld   a,$04
33a3: 32 c0 38     ld   ($38C0),a
33a6: cd 10 2d     call $2D10
33a9: cd 75 2d     call $2D75
33ac: 2a c9 38     ld   hl,($38C9)
33af: ed 4b d1 38  ld   bc,($38D1)
33b3: 11 20 04     ld   de,$0420
33b6: cd 38 34     call $3438
33b9: 3a f8 54     ld   a,($54F8)
33bc: b7           or   a
33bd: c2 d4 33     jp   nz,$33D4
33c0: cd 62 37     call $3762
33c3: af           xor  a
33c4: 32 da 38     ld   ($38DA),a
33c7: 32 59 89     ld   ($8959),a
33ca: c3 63 32     jp   $3263
33cd: 3e ff        ld   a,$FF
33cf: 32 da 38     ld   ($38DA),a
33d2: 18 d2        jr   $33A6
33d4: 21 00 00     ld   hl,$0000
33d7: 06 04        ld   b,$04
33d9: c5           push bc
33da: e5           push hl
33db: 01 ff 3f     ld   bc,$3FFF
33de: 11 00 00     ld   de,$0000
33e1: cd 38 34     call $3438
33e4: e1           pop  hl
33e5: 11 00 40     ld   de,$4000
33e8: 19           add  hl,de
33e9: c1           pop  bc
33ea: 10 ed        djnz $33D9
33ec: c3 c0 33     jp   $33C0
33ef: 3e ff        ld   a,$FF
33f1: 32 da 38     ld   ($38DA),a
33f4: 21 bf 38     ld   hl,$38BF
33f7: 7e           ld   a,(hl)
33f8: 2b           dec  hl
33f9: 96           sub  (hl)
33fa: 3d           dec  a
33fb: 28 0f        jr   z,$340C
33fd: 47           ld   b,a
33fe: 4e           ld   c,(hl)
33ff: 0c           inc  c
3400: c5           push bc
3401: 3a c0 38     ld   a,($38C0)
3404: 57           ld   d,a
3405: 79           ld   a,c
3406: cd 26 34     call $3426
3409: c1           pop  bc
340a: 10 f3        djnz $33FF
340c: 21 bc 38     ld   hl,$38BC
340f: 7e           ld   a,(hl)
3410: 23           inc  hl
3411: 96           sub  (hl)
3412: 4f           ld   c,a
3413: 06 00        ld   b,$00
3415: 1e 20        ld   e,$20
3417: 3a c0 38     ld   a,($38C0)
341a: 57           ld   d,a
341b: cd 68 37     call $3768
341e: cd 46 34     call $3446
3421: c3 4b 31     jp   $314B
3424: 16 04        ld   d,$04
3426: 67           ld   h,a
3427: 2e 00        ld   l,$00
3429: cd 6b 37     call $376B
342c: ed 4b bc 38  ld   bc,($38BC)
3430: 06 00        ld   b,$00
3432: 2a 6d 38     ld   hl,($386D)
3435: c3 38 34     jp   $3438
3438: 1e 20        ld   e,$20
343a: 3a da 38     ld   a,($38DA)
343d: fe ff        cp   $FF
343f: 20 02        jr   nz,$3443
3441: 1e 00        ld   e,$00
3443: cd ca 37     call $37CA
3446: 0b           dec  bc
3447: ed 43 91 38  ld   ($3891),bc
344b: ed 53 95 38  ld   ($3895),de
344f: 21 8e 38     ld   hl,$388E
3452: cd da 37     call $37DA
3455: c3 68 37     jp   $3768
3458: b7           or   a
3459: ca c4 2c     jp   z,$2CC4
345c: f5           push af
345d: cd 86 2d     call $2D86
3460: f1           pop  af
3461: 47           ld   b,a
3462: 3e 17        ld   a,$17
3464: 90           sub  b
3465: 28 0f        jr   z,$3476
3467: 4f           ld   c,a
3468: 04           inc  b
3469: cd be 34     call $34BE
346c: 25           dec  h
346d: cd 6b 37     call $376B
3470: cd ea 34     call $34EA
3473: 0d           dec  c
3474: 20 f2        jr   nz,$3468
3476: 3e 17        ld   a,$17
3478: cd 24 34     call $3424
347b: 2a bd 38     ld   hl,($38BD)
347e: 2e 00        ld   l,$00
3480: e5           push hl
3481: 26 17        ld   h,$17
3483: 22 bd 38     ld   ($38BD),hl
3486: cd 4b 31     call $314B
3489: e1           pop  hl
348a: 22 bd 38     ld   ($38BD),hl
348d: cd 97 2d     call $2D97
3490: c3 4b 31     jp   $314B
3493: f5           push af
3494: cd 86 2d     call $2D86
3497: f1           pop  af
3498: f5           push af
3499: 47           ld   b,a
349a: 3e 17        ld   a,$17
349c: 90           sub  b
349d: 28 11        jr   z,$34B0
349f: 4f           ld   c,a
34a0: 06 16        ld   b,$16
34a2: cd be 34     call $34BE
34a5: 24           inc  h
34a6: cd 6b 37     call $376B
34a9: cd ea 34     call $34EA
34ac: 05           dec  b
34ad: 0d           dec  c
34ae: 20 f2        jr   nz,$34A2
34b0: f1           pop  af
34b1: cd 24 34     call $3424
34b4: af           xor  a
34b5: 32 bd 38     ld   ($38BD),a
34b8: cd 97 2d     call $2D97
34bb: c3 4b 31     jp   $314B
34be: 60           ld   h,b
34bf: 2e 00        ld   l,$00
34c1: e5           push hl
34c2: cd 6b 37     call $376B
34c5: cd ca 34     call $34CA
34c8: e1           pop  hl
34c9: c9           ret
34ca: e5           push hl
34cb: c5           push bc
34cc: 21 98 38     ld   hl,$3898
34cf: cd da 37     call $37DA
34d2: 3a bc 38     ld   a,($38BC)
34d5: 6f           ld   l,a
34d6: 26 00        ld   h,$00
34d8: 29           add  hl,hl
34d9: eb           ex   de,hl
34da: 2a d8 38     ld   hl,($38D8)
34dd: cd 0a 38     call $380A
34e0: 77           ld   (hl),a
34e1: 23           inc  hl
34e2: 1b           dec  de
34e3: 7a           ld   a,d
34e4: b3           or   e
34e5: 20 f6        jr   nz,$34DD
34e7: c1           pop  bc
34e8: e1           pop  hl
34e9: c9           ret
34ea: e5           push hl
34eb: c5           push bc
34ec: 21 a0 38     ld   hl,$38A0
34ef: cd da 37     call $37DA
34f2: 3a bc 38     ld   a,($38BC)
34f5: 6f           ld   l,a
34f6: 26 00        ld   h,$00
34f8: 29           add  hl,hl
34f9: eb           ex   de,hl
34fa: 2a d8 38     ld   hl,($38D8)
34fd: 7e           ld   a,(hl)
34fe: cd fa 37     call $37FA
3501: 23           inc  hl
3502: 1b           dec  de
3503: 7a           ld   a,d
3504: b3           or   e
3505: 20 f6        jr   nz,$34FD
3507: c1           pop  bc
3508: e1           pop  hl
3509: c9           ret
350a: cd 68 37     call $3768
350d: 2a 6d 38     ld   hl,($386D)
3510: e5           push hl
3511: e5           push hl
3512: ed 5b aa 38  ld   de,($38AA)
3516: af           xor  a
3517: ed 52        sbc  hl,de
3519: e1           pop  hl
351a: 28 18        jr   z,$3534
351c: e5           push hl
351d: ed 5b c9 38  ld   de,($38C9)
3521: b7           or   a
3522: ed 52        sbc  hl,de
3524: e1           pop  hl
3525: c2 2b 35     jp   nz,$352B
3528: 2a cb 38     ld   hl,($38CB)
352b: 2b           dec  hl
352c: cd ca 37     call $37CA
352f: cd 39 35     call $3539
3532: e6 c8        and  $C8
3534: 57           ld   d,a
3535: e1           pop  hl
3536: c3 ca 37     jp   $37CA
3539: cd 49 35     call $3549
353c: e6 30        and  $30
353e: ee 30        xor  $30
3540: 7a           ld   a,d
3541: 20 02        jr   nz,$3545
3543: f6 08        or   $08
3545: e6 c8        and  $C8
3547: 57           ld   d,a
3548: c9           ret
3549: 21 01 00     ld   hl,$0001
354c: 22 81 38     ld   ($3881),hl
354f: 21 7e 38     ld   hl,$387E
3552: cd da 37     call $37DA
3555: cd 0a 38     call $380A
3558: 57           ld   d,a
3559: c9           ret
355a: 3e 0d        ld   a,$0D
355c: c3 f4 37     jp   $37F4
355f: 3e 0c        ld   a,$0C
3561: c3 f4 37     jp   $37F4
3564: 3e 20        ld   a,$20
3566: c3 62 2c     jp   $2C62
3569: 32 45 36     ld   ($3645),a
356c: ed 43 43 36  ld   ($3643),bc
3570: f5           push af
3571: 3e ff        ld   a,$FF
3573: 32 55 12     ld   ($1255),a
3576: 3a c0 38     ld   a,($38C0)
3579: 32 48 36     ld   ($3648),a
357c: f1           pop  af
357d: 22 46 36     ld   ($3646),hl
3580: cb 6f        bit  5,a
3582: c2 23 36     jp   nz,$3623
3585: cb 47        bit  0,a
3587: 3e ff        ld   a,$FF
3589: 20 01        jr   nz,$358C
358b: af           xor  a
358c: 32 d7 38     ld   ($38D7),a
358f: 3a 3d 36     ld   a,($363D)
3592: b7           or   a
3593: 20 17        jr   nz,$35AC
3595: 3e ff        ld   a,$FF
3597: 32 3d 36     ld   ($363D),a
359a: 2a bd 38     ld   hl,($38BD)
359d: 22 3e 36     ld   ($363E),hl
35a0: 3a d7 38     ld   a,($38D7)
35a3: b7           or   a
35a4: 21 80 b1     ld   hl,$B180
35a7: c4 49 36     call nz,$3649
35aa: 18 15        jr   $35C1
35ac: 3e ff        ld   a,$FF
35ae: 32 40 36     ld   ($3640),a
35b1: 2a bd 38     ld   hl,($38BD)
35b4: 22 41 36     ld   ($3641),hl
35b7: 3a d7 38     ld   a,($38D7)
35ba: b7           or   a
35bb: 21 20 b2     ld   hl,$B220
35be: c4 49 36     call nz,$3649
35c1: 3a 45 36     ld   a,($3645)
35c4: cb 67        bit  4,a
35c6: 20 05        jr   nz,$35CD
35c8: 3e 18        ld   a,$18
35ca: cd 24 34     call $3424
35cd: 21 00 18     ld   hl,$1800
35d0: cd 65 37     call $3765
35d3: 3a 45 36     ld   a,($3645)
35d6: cb 4f        bit  1,a
35d8: 28 0c        jr   z,$35E6
35da: cd d7 30     call $30D7
35dd: ed 4b 43 36  ld   bc,($3643)
35e1: 0c           inc  c
35e2: ed 43 43 36  ld   ($3643),bc
35e6: 3a 45 36     ld   a,($3645)
35e9: cb 5f        bit  3,a
35eb: c4 a6 18     call nz,$18A6
35ee: 21 00 18     ld   hl,$1800
35f1: ed 4b 43 36  ld   bc,($3643)
35f5: 06 00        ld   b,$00
35f7: 09           add  hl,bc
35f8: cd 65 37     call $3765
35fb: 3a 45 36     ld   a,($3645)
35fe: cb 57        bit  2,a
3600: 28 03        jr   z,$3605
3602: cd c8 30     call $30C8
3605: 2a 46 36     ld   hl,($3646)
3608: e5           push hl
3609: e1           pop  hl
360a: 7e           ld   a,(hl)
360b: b7           or   a
360c: 28 08        jr   z,$3616
360e: 23           inc  hl
360f: e5           push hl
3610: 4f           ld   c,a
3611: cd 62 2c     call $2C62
3614: 18 f3        jr   $3609
3616: 21 80 b1     ld   hl,$B180
3619: 22 d8 38     ld   ($38D8),hl
361c: cd 86 2d     call $2D86
361f: cd bc 30     call $30BC
3622: c9           ret
3623: ed 5b bd 38  ld   de,($38BD)
3627: d5           push de
3628: cd c1 35     call $35C1
362b: e1           pop  hl
362c: cd 65 37     call $3765
362f: cd 97 2d     call $2D97
3632: 3a 48 36     ld   a,($3648)
3635: 32 c0 38     ld   ($38C0),a
3638: af           xor  a
3639: 32 55 12     ld   ($1255),a
363c: c9           ret
363d: 00           nop
363e: 00           nop
363f: 00           nop
3640: 00           nop
3641: 00           nop
3642: 00           nop
3643: 00           nop
3644: 00           nop
3645: 00           nop
3646: 00           nop
3647: 00           nop
3648: 04           inc  b
3649: 22 d8 38     ld   ($38D8),hl
364c: 21 00 18     ld   hl,$1800
364f: cd 6b 37     call $376B
3652: cd ca 34     call $34CA
3655: c9           ret
3656: 21 d7 38     ld   hl,$38D7
3659: a6           and  (hl)
365a: 20 08        jr   nz,$3664
365c: 3e 18        ld   a,$18
365e: cd 24 34     call $3424
3661: c3 89 36     jp   $3689
3664: 3a 40 36     ld   a,($3640)
3667: b7           or   a
3668: 28 0f        jr   z,$3679
366a: af           xor  a
366b: 32 40 36     ld   ($3640),a
366e: 21 20 b2     ld   hl,$B220
3671: cd a8 36     call $36A8
3674: 2a 41 36     ld   hl,($3641)
3677: 18 1c        jr   $3695
3679: af           xor  a
367a: 32 3d 36     ld   ($363D),a
367d: 32 d7 38     ld   ($38D7),a
3680: 32 40 36     ld   ($3640),a
3683: 21 80 b1     ld   hl,$B180
3686: cd a8 36     call $36A8
3689: af           xor  a
368a: 32 55 12     ld   ($1255),a
368d: 3e ff        ld   a,$FF
368f: 32 59 12     ld   ($1259),a
3692: 2a 3e 36     ld   hl,($363E)
3695: cd 65 37     call $3765
3698: 21 80 b1     ld   hl,$B180
369b: 22 d8 38     ld   ($38D8),hl
369e: cd 97 2d     call $2D97
36a1: 3a 48 36     ld   a,($3648)
36a4: 32 c0 38     ld   ($38C0),a
36a7: c9           ret
36a8: 22 d8 38     ld   ($38D8),hl
36ab: 26 18        ld   h,$18
36ad: 2e 00        ld   l,$00
36af: cd 6b 37     call $376B
36b2: cd ea 34     call $34EA
36b5: c9           ret
36b6: 3e ff        ld   a,$FF
36b8: 32 54 12     ld   ($1254),a
36bb: e5           push hl
36bc: 2a bd 38     ld   hl,($38BD)
36bf: 22 22 37     ld   ($3722),hl
36c2: e1           pop  hl
36c3: cd 6b 37     call $376B
36c6: 21 86 38     ld   hl,$3886
36c9: cd da 37     call $37DA
36cc: cd 0a 38     call $380A
36cf: 32 20 37     ld   ($3720),a
36d2: b7           or   a
36d3: 28 02        jr   z,$36D7
36d5: d6 20        sub  $20
36d7: 57           ld   d,a
36d8: d5           push de
36d9: cd 0a 38     call $380A
36dc: d1           pop  de
36dd: 5f           ld   e,a
36de: 32 21 37     ld   ($3721),a
36e1: d5           push de
36e2: 21 1f 37     ld   hl,$371F
36e5: 72           ld   (hl),d
36e6: af           xor  a
36e7: ed 6f        rld  (hl)
36e9: 57           ld   d,a
36ea: 5e           ld   e,(hl)
36eb: e1           pop  hl
36ec: 7d           ld   a,l
36ed: f5           push af
36ee: 21 11 55     ld   hl,$5511
36f1: 19           add  hl,de
36f2: 01 08 00     ld   bc,$0008
36f5: 11 2c 37     ld   de,$372C
36f8: ed b0        ldir
36fa: 01 08 00     ld   bc,$0008
36fd: 11 24 37     ld   de,$3724
3700: ed b0        ldir
3702: f1           pop  af
3703: e6 08        and  $08
3705: 21 24 37     ld   hl,$3724
3708: c4 34 37     call nz,$3734
370b: af           xor  a
370c: 32 54 12     ld   ($1254),a
370f: 2a 22 37     ld   hl,($3722)
3712: 22 bd 38     ld   ($38BD),hl
3715: 21 20 37     ld   hl,$3720
3718: 46           ld   b,(hl)
3719: 23           inc  hl
371a: 4e           ld   c,(hl)
371b: 21 24 37     ld   hl,$3724
371e: c9           ret
371f: 00           nop
3720: 00           nop
3721: 00           nop
3722: 00           nop
3723: 00           nop
3724: 00           nop
3725: 00           nop
3726: 00           nop
3727: 00           nop
3728: 00           nop
3729: 00           nop
372a: 00           nop
372b: 00           nop
372c: 00           nop
372d: 00           nop
372e: 00           nop
372f: 00           nop
3730: 00           nop
3731: 00           nop
3732: 00           nop
3733: 00           nop
3734: 06 10        ld   b,$10
3736: 7e           ld   a,(hl)
3737: 2f           cpl
3738: 77           ld   (hl),a
3739: 23           inc  hl
373a: 10 fa        djnz $3736
373c: c9           ret
373d: 2a bd 38     ld   hl,($38BD)
3740: c9           ret
3741: 3a be 38     ld   a,($38BE)
3744: c6 20        add  a,$20
3746: 47           ld   b,a
3747: 3a bd 38     ld   a,($38BD)
374a: c6 20        add  a,$20
374c: 4f           ld   c,a
374d: c5           push bc
374e: cd 6a 16     call $166A
3751: c1           pop  bc
3752: 78           ld   a,b
3753: c5           push bc
3754: cd 81 16     call $1681
3757: c1           pop  bc
3758: 79           ld   a,c
3759: cd 81 16     call $1681
375c: 3e 0d        ld   a,$0D
375e: cd 81 16     call $1681
3761: c9           ret
3762: 21 00 00     ld   hl,$0000
3765: 22 bd 38     ld   ($38BD),hl
3768: 2a bd 38     ld   hl,($38BD)
376b: d5           push de
376c: af           xor  a
376d: 32 d3 38     ld   ($38D3),a
3770: 7c           ld   a,h
3771: fe 18        cp   $18
3773: 20 20        jr   nz,$3795
3775: 3a 59 89     ld   a,($8959)
3778: b7           or   a
3779: 28 11        jr   z,$378C
377b: e5           push hl
377c: 2a d1 38     ld   hl,($38D1)
377f: ed 5b 62 89  ld   de,($8962)
3783: 19           add  hl,de
3784: 22 62 89     ld   ($8962),hl
3787: e1           pop  hl
3788: 26 00        ld   h,$00
378a: 18 09        jr   $3795
378c: 26 00        ld   h,$00
378e: ed 5b cd 38  ld   de,($38CD)
3792: 19           add  hl,de
3793: 18 29        jr   $37BE
3795: 11 14 38     ld   de,$3814
3798: 7d           ld   a,l
3799: 6c           ld   l,h
379a: 26 00        ld   h,$00
379c: 29           add  hl,hl
379d: 19           add  hl,de
379e: 86           add  a,(hl)
379f: 5f           ld   e,a
37a0: 23           inc  hl
37a1: 7e           ld   a,(hl)
37a2: ce 00        adc  a,$00
37a4: 57           ld   d,a
37a5: 2a aa 38     ld   hl,($38AA)
37a8: 19           add  hl,de
37a9: e5           push hl
37aa: ed 5b cb 38  ld   de,($38CB)
37ae: af           xor  a
37af: ed 52        sbc  hl,de
37b1: eb           ex   de,hl
37b2: e1           pop  hl
37b3: 38 09        jr   c,$37BE
37b5: 2a c9 38     ld   hl,($38C9)
37b8: 19           add  hl,de
37b9: 3e 01        ld   a,$01
37bb: 32 d3 38     ld   ($38D3),a
37be: d1           pop  de
37bf: 3a 59 89     ld   a,($8959)
37c2: b7           or   a
37c3: 28 05        jr   z,$37CA
37c5: ed 5b 62 89  ld   de,($8962)
37c9: 19           add  hl,de
37ca: 22 6d 38     ld   ($386D),hl
37cd: 21 6b 38     ld   hl,$386B
37d0: c3 da 37     jp   $37DA
37d3: ed 5b 62 89  ld   de,($8962)
37d7: 19           add  hl,de
37d8: 18 e4        jr   $37BE
37da: c5           push bc
37db: 46           ld   b,(hl)
37dc: 23           inc  hl
37dd: 78           ld   a,b
37de: b7           or   a
37df: 28 11        jr   z,$37F2
37e1: 7e           ld   a,(hl)
37e2: 23           inc  hl
37e3: cd f4 37     call $37F4
37e6: 05           dec  b
37e7: 28 f2        jr   z,$37DB
37e9: 7e           ld   a,(hl)
37ea: 23           inc  hl
37eb: cd fa 37     call $37FA
37ee: 10 f9        djnz $37E9
37f0: 18 e9        jr   $37DB
37f2: c1           pop  bc
37f3: c9           ret
37f4: cd 00 38     call $3800
37f7: d3 39        out  ($39),a
37f9: c9           ret
37fa: cd 00 38     call $3800
37fd: d3 38        out  ($38),a
37ff: c9           ret
3800: f5           push af
3801: db 38        in   a,($38)
3803: e6 02        and  $02
3805: c2 01 38     jp   nz,$3801
3808: f1           pop  af
3809: c9           ret
380a: db 38        in   a,($38)
380c: e6 01        and  $01
380e: ca 0a 38     jp   z,$380A
3811: db 39        in   a,($39)
3813: c9           ret
3814: 00           nop
3815: 00           nop
3816: 50           ld   d,b
3817: 00           nop
3818: a0           and  b
3819: 00           nop
381a: f0           ret  p
381b: 00           nop
381c: 40           ld   b,b
381d: 01 90 01     ld   bc,$0190
3820: e0           ret  po
3821: 01 30 02     ld   bc,$0230
3824: 80           add  a,b
3825: 02           ld   (bc),a
3826: d0           ret  nc
3827: 02           ld   (bc),a
3828: 20 03        jr   nz,$382D
382a: 70           ld   (hl),b
382b: 03           inc  bc
382c: c0           ret  nz
382d: 03           inc  bc
382e: 10 04        djnz $3834
3830: 60           ld   h,b
3831: 04           inc  b
3832: b0           or   b
3833: 04           inc  b
3834: 00           nop
3835: 05           dec  b
3836: 50           ld   d,b
3837: 05           dec  b
3838: a0           and  b
3839: 05           dec  b
383a: f0           ret  p
383b: 05           dec  b
383c: 40           ld   b,b
383d: 06 90        ld   b,$90
383f: 06 e0        ld   b,$E0
3841: 06 30        ld   b,$30
3843: 07           rlca
3844: 80           add  a,b
3845: 07           rlca
3846: 09           add  hl,bc
3847: 0e 14        ld   c,$14
3849: 4e           ld   c,(hl)
384a: 43           ld   b,e
384b: 0d           dec  c
384c: 11 01 90     ld   de,$9001
384f: 29           add  hl,hl
3850: 00           nop
3851: 04           inc  b
3852: 4b           ld   c,e
3853: 0f           rrca
3854: 6d           ld   l,l
3855: 70           ld   (hl),b
3856: 00           nop
3857: 02           ld   (bc),a
3858: 46           ld   b,(hl)
3859: 00           nop
385a: 00           nop
385b: 02           ld   (bc),a
385c: 47           ld   b,a
385d: 50           ld   d,b
385e: 00           nop
385f: 05           dec  b
3860: 70           ld   (hl),b
3861: 00           nop
3862: 00           nop
3863: 00           nop
3864: 19           add  hl,de
3865: 00           nop
3866: 03           inc  bc
3867: 4a           ld   c,d
3868: ff           rst  $38
3869: ff           rst  $38
386a: 00           nop
386b: 03           inc  bc
386c: 49           ld   c,c
386d: 00           nop
386e: 00           nop
386f: 00           nop
3870: 03           inc  bc
3871: 20 00        jr   nz,$3873
3873: 00           nop
3874: 00           nop
3875: 04           inc  b
3876: 4c           ld   c,h
3877: 02           ld   (bc),a
3878: 00           nop
3879: 00           nop
387a: 02           ld   (bc),a
387b: 00           nop
387c: 00           nop
387d: 00           nop
387e: 04           inc  b
387f: 4c           ld   c,h
3880: 02           ld   (bc),a
3881: 00           nop
3882: 00           nop
3883: 01 b8 00     ld   bc,$00B8
3886: 04           inc  b
3887: 4c           ld   c,h
3888: 02           ld   (bc),a
3889: 01 00 01     ld   bc,$0100
388c: a0           and  b
388d: 00           nop
388e: 04           inc  b
388f: 4c           ld   c,h
3890: 02           ld   (bc),a
3891: 00           nop
3892: 00           nop
3893: 03           inc  bc
3894: 20 00        jr   nz,$3896
3896: 00           nop
3897: 00           nop
3898: 04           inc  b
3899: 4c           ld   c,h
389a: 02           ld   (bc),a
389b: 50           ld   d,b
389c: 00           nop
389d: 01 a0 00     ld   bc,$00A0
38a0: 04           inc  b
38a1: 4c           ld   c,h
38a2: 02           ld   (bc),a
38a3: 00           nop
38a4: 00           nop
38a5: 01 20 00     ld   bc,$0020
38a8: 0d           dec  c
38a9: 70           ld   (hl),b
38aa: 00           nop
38ab: 00           nop
38ac: 00           nop
38ad: 00           nop
38ae: 00           nop
38af: 00           nop
38b0: 00           nop
38b1: 00           nop
38b2: af           xor  a
38b3: ff           rst  $38
38b4: 00           nop
38b5: 01 02 4c     ld   bc,$4C02
38b8: 02           ld   (bc),a
38b9: 00           nop
38ba: 00           nop
38bb: 00           nop
38bc: 50           ld   d,b
38bd: 00           nop
38be: 00           nop
38bf: 18 04        jr   $38C5
38c1: 00           nop
38c2: 00           nop
38c3: 00           nop
38c4: 00           nop
38c5: 00           nop
38c6: 00           nop
38c7: 00           nop
38c8: 00           nop
38c9: 00           nop
38ca: 00           nop
38cb: 80           add  a,b
38cc: 07           rlca
38cd: af           xor  a
38ce: ff           rst  $38
38cf: 80           add  a,b
38d0: 07           rlca
38d1: 80           add  a,b
38d2: 07           rlca
38d3: 00           nop
38d4: 44           ld   b,h
38d5: 8f           adc  a,a
38d6: 00           nop
38d7: 00           nop
38d8: 80           add  a,b
38d9: b1           or   c
38da: 00           nop
38db: 00           nop
38dc: 54           ld   d,h
38dd: 56           ld   d,(hl)
38de: 2d           dec  l
38df: 39           add  hl,sp
38e0: 32 30 00     ld   ($0030),a
38e3: 00           nop
38e4: 34           inc  (hl)
38e5: 00           nop
38e6: 00           nop
38e7: 00           nop
38e8: 00           nop
38e9: 00           nop
38ea: 00           nop
38eb: 00           nop
38ec: 00           nop
38ed: 00           nop
38ee: 00           nop
38ef: 00           nop
38f0: 00           nop
38f1: 00           nop
38f2: 00           nop
38f3: 00           nop
38f4: 00           nop
38f5: 00           nop
38f6: 00           nop
38f7: 00           nop
38f8: 00           nop
38f9: 00           nop
38fa: 00           nop
38fb: 00           nop
38fc: 00           nop
38fd: 00           nop
38fe: 00           nop
38ff: 00           nop
3900: 00           nop
3901: 00           nop
3902: 00           nop
3903: 00           nop
3904: 00           nop
3905: 00           nop
3906: 00           nop
3907: 00           nop
3908: 00           nop
3909: 00           nop
390a: 00           nop
390b: 00           nop
390c: 00           nop
390d: 00           nop
390e: 00           nop
390f: 00           nop
3910: 00           nop
3911: 00           nop
3912: 00           nop
3913: 00           nop
3914: 00           nop
3915: 00           nop
3916: 00           nop
3917: 00           nop
3918: 00           nop
3919: 00           nop
391a: 00           nop
391b: 00           nop
391c: 00           nop
391d: 00           nop
391e: 00           nop
391f: 00           nop
3920: 00           nop
3921: 00           nop
3922: 00           nop
3923: 00           nop
3924: 00           nop
3925: 00           nop
3926: 00           nop
3927: 00           nop
3928: 00           nop
3929: 00           nop
392a: 00           nop
392b: 00           nop
392c: 00           nop
392d: 00           nop
392e: 00           nop
392f: 00           nop
3930: 00           nop
3931: 00           nop
3932: 00           nop
3933: 00           nop
3934: 00           nop
3935: 00           nop
3936: 00           nop
3937: 00           nop
3938: 00           nop
3939: 00           nop
393a: 00           nop
393b: 00           nop
393c: 00           nop
393d: 00           nop
393e: 00           nop
393f: 00           nop
3940: 00           nop
3941: 00           nop
3942: 00           nop
3943: 00           nop
3944: 00           nop
3945: 00           nop
3946: 00           nop
3947: 00           nop
3948: 00           nop
3949: 00           nop
394a: 00           nop
394b: 00           nop
394c: 00           nop
394d: 00           nop
394e: 00           nop
394f: 00           nop
3950: 00           nop
3951: 00           nop
3952: 00           nop
3953: 00           nop
3954: 00           nop
3955: 00           nop
3956: 00           nop
3957: 00           nop
3958: 00           nop
3959: 00           nop
395a: 00           nop
395b: 00           nop
395c: 00           nop
395d: 00           nop
395e: 00           nop
395f: 00           nop
3960: 00           nop
3961: 00           nop
3962: 00           nop
3963: 00           nop
3964: 00           nop
3965: 00           nop
3966: 00           nop
3967: 00           nop
3968: 00           nop
3969: 00           nop
396a: 00           nop
396b: 00           nop
396c: 00           nop
396d: 00           nop
396e: 00           nop
396f: 00           nop
3970: 00           nop
3971: 00           nop
3972: 00           nop
3973: 00           nop
3974: 00           nop
3975: 00           nop
3976: 00           nop
3977: 00           nop
3978: 00           nop
3979: 00           nop
397a: 00           nop
397b: 00           nop
397c: 00           nop
397d: 00           nop
397e: 00           nop
397f: 00           nop
3980: 00           nop
3981: 00           nop
3982: 00           nop
3983: 00           nop
3984: 00           nop
3985: 00           nop
3986: 00           nop
3987: 00           nop
3988: 00           nop
3989: 00           nop
398a: 00           nop
398b: 00           nop
398c: 00           nop
398d: 00           nop
398e: 00           nop
398f: 00           nop
3990: 00           nop
3991: 00           nop
3992: 00           nop
3993: 00           nop
3994: 00           nop
3995: 00           nop
3996: 00           nop
3997: 00           nop
3998: 00           nop
3999: 00           nop
399a: 00           nop
399b: 00           nop
399c: 00           nop
399d: 00           nop
399e: 00           nop
399f: 00           nop
39a0: 00           nop
39a1: 00           nop
39a2: 00           nop
39a3: 00           nop
39a4: 00           nop
39a5: 00           nop
39a6: 00           nop
39a7: 00           nop
39a8: 00           nop
39a9: 00           nop
39aa: 00           nop
39ab: 00           nop
39ac: 00           nop
39ad: 00           nop
39ae: 00           nop
39af: 00           nop
39b0: 00           nop
39b1: 00           nop
39b2: 00           nop
39b3: 00           nop
39b4: 00           nop
39b5: 00           nop
39b6: 00           nop
39b7: 00           nop
39b8: 00           nop
39b9: 00           nop
39ba: 00           nop
39bb: 00           nop
39bc: 00           nop
39bd: 00           nop
39be: 00           nop
39bf: 00           nop
39c0: 00           nop
39c1: 00           nop
39c2: 00           nop
39c3: 00           nop
39c4: 00           nop
39c5: 00           nop
39c6: 00           nop
39c7: 00           nop
39c8: 00           nop
39c9: 00           nop
39ca: 00           nop
39cb: 00           nop
39cc: 00           nop
39cd: 00           nop
39ce: 00           nop
39cf: 00           nop
39d0: 00           nop
39d1: 00           nop
39d2: 00           nop
39d3: 00           nop
39d4: 00           nop
39d5: 00           nop
39d6: 00           nop
39d7: 00           nop
39d8: 00           nop
39d9: 00           nop
39da: 00           nop
39db: 00           nop
39dc: 00           nop
39dd: 00           nop
39de: 00           nop
39df: 00           nop
39e0: 00           nop
39e1: 00           nop
39e2: 00           nop
39e3: 00           nop
39e4: 00           nop
39e5: 00           nop
39e6: 00           nop
39e7: 00           nop
39e8: 00           nop
39e9: 00           nop
39ea: c3 10 3a     jp   $3A10
39ed: c3 4d 49     jp   $494D
39f0: c3 e0 3c     jp   $3CE0
39f3: c3 d5 3c     jp   $3CD5
39f6: c3 7a 4d     jp   $4D7A
39f9: c3 9f 4d     jp   $4D9F
39fc: c3 a4 4c     jp   $4CA4
39ff: c3 44 4b     jp   $4B44
3a02: c3 1a 4c     jp   $4C1A
3a05: 50           ld   d,b
3a06: 80           add  a,b
3a07: 02           ld   (bc),a
3a08: 80           add  a,b
3a09: 3e 00        ld   a,$00
3a0b: 00           nop
3a0c: 00           nop
3a0d: 00           nop
3a0e: 00           nop
3a0f: 00           nop
3a10: 21 c6 4f     ld   hl,$4FC6
3a13: 71           ld   (hl),c
3a14: 3e ff        ld   a,$FF
3a16: 32 54 12     ld   ($1254),a
3a19: cd 30 4b     call $4B30
3a1c: 3a a3 4f     ld   a,($4FA3)
3a1f: b7           or   a
3a20: c2 e6 3c     jp   nz,$3CE6
3a23: 3a a2 4f     ld   a,($4FA2)
3a26: b7           or   a
3a27: 28 04        jr   z,$3A2D
3a29: 2a a4 4f     ld   hl,($4FA4)
3a2c: e9           jp   (hl)
3a2d: 3a c6 4f     ld   a,($4FC6)
3a30: b7           or   a
3a31: 28 13        jr   z,$3A46
3a33: fe 20        cp   $20
3a35: da fa 3c     jp   c,$3CFA
3a38: 3a 31 27     ld   a,($2731)
3a3b: b7           or   a
3a3c: 28 02        jr   z,$3A40
3a3e: cb b9        res  7,c
3a40: 3a c6 4f     ld   a,($4FC6)
3a43: cd 4b 3a     call $3A4B
3a46: af           xor  a
3a47: 32 54 12     ld   ($1254),a
3a4a: c9           ret
3a4b: 32 8f 4f     ld   ($4F8F),a
3a4e: 21 9b 4f     ld   hl,$4F9B
3a51: 3a 9c 4f     ld   a,($4F9C)
3a54: b6           or   (hl)
3a55: cc 61 3a     call z,$3A61
3a58: ca 92 3a     jp   z,$3A92
3a5b: c4 0f 3b     call nz,$3B0F
3a5e: c3 92 3a     jp   $3A92
3a61: 3a 8f 4f     ld   a,($4F8F)
3a64: f5           push af
3a65: 21 90 4f     ld   hl,$4F90
3a68: 96           sub  (hl)
3a69: 32 8f 4f     ld   ($4F8F),a
3a6c: 21 8f 4f     ld   hl,$4F8F
3a6f: af           xor  a
3a70: ed 6f        rld  (hl)
3a72: 57           ld   d,a
3a73: 5e           ld   e,(hl)
3a74: f1           pop  af
3a75: e6 80        and  $80
3a77: 21 11 55     ld   hl,$5511
3a7a: 20 03        jr   nz,$3A7F
3a7c: 2a 91 4f     ld   hl,($4F91)
3a7f: 19           add  hl,de
3a80: 01 08 00     ld   bc,$0008
3a83: 11 08 4f     ld   de,$4F08
3a86: ed b0        ldir
3a88: 01 08 00     ld   bc,$0008
3a8b: 11 19 4f     ld   de,$4F19
3a8e: ed b0        ldir
3a90: af           xor  a
3a91: c9           ret
3a92: cd 26 44     call $4426
3a95: 28 2d        jr   z,$3AC4
3a97: 2a 94 4f     ld   hl,($4F94)
3a9a: cd 2a 49     call $492A
3a9d: 32 89 4f     ld   ($4F89),a
3aa0: e6 0f        and  $0F
3aa2: c4 ec 3a     call nz,$3AEC
3aa5: 3a 89 4f     ld   a,($4F89)
3aa8: e6 40        and  $40
3aaa: 28 05        jr   z,$3AB1
3aac: 3e ff        ld   a,$FF
3aae: 32 0e 4f     ld   ($4F0E),a
3ab1: 3a 89 4f     ld   a,($4F89)
3ab4: e6 80        and  $80
3ab6: 28 2b        jr   z,$3AE3
3ab8: 21 08 4f     ld   hl,$4F08
3abb: cd 04 3b     call $3B04
3abe: 21 19 4f     ld   hl,$4F19
3ac1: cd 04 3b     call $3B04
3ac4: 3a c1 4f     ld   a,($4FC1)
3ac7: fe ff        cp   $FF
3ac9: 20 05        jr   nz,$3AD0
3acb: 3e ff        ld   a,$FF
3acd: 32 0e 4f     ld   ($4F0E),a
3ad0: 3a c2 4f     ld   a,($4FC2)
3ad3: fe ff        cp   $FF
3ad5: 20 0c        jr   nz,$3AE3
3ad7: 21 08 4f     ld   hl,$4F08
3ada: cd 04 3b     call $3B04
3add: 21 19 4f     ld   hl,$4F19
3ae0: cd 04 3b     call $3B04
3ae3: 21 05 4f     ld   hl,$4F05
3ae6: cd 3f 4e     call $4E3F
3ae9: c3 50 3b     jp   $3B50
3aec: e5           push hl
3aed: 2a 94 4f     ld   hl,($4F94)
3af0: cd 15 49     call $4915
3af3: e1           pop  hl
3af4: 77           ld   (hl),a
3af5: 32 89 4f     ld   ($4F89),a
3af8: f5           push af
3af9: 2a 94 4f     ld   hl,($4F94)
3afc: cd e1 42     call $42E1
3aff: f1           pop  af
3b00: cd a3 41     call $41A3
3b03: c9           ret
3b04: f5           push af
3b05: 06 08        ld   b,$08
3b07: 7e           ld   a,(hl)
3b08: 2f           cpl
3b09: 77           ld   (hl),a
3b0a: 23           inc  hl
3b0b: 10 fa        djnz $3B07
3b0d: f1           pop  af
3b0e: c9           ret
3b0f: 3a 8f 4f     ld   a,($4F8F)
3b12: d6 20        sub  $20
3b14: 32 8f 4f     ld   ($4F8F),a
3b17: cd 4d 47     call $474D
3b1a: 21 00 bf     ld   hl,$BF00
3b1d: 19           add  hl,de
3b1e: e5           push hl
3b1f: 3a 9b 4f     ld   a,($4F9B)
3b22: b7           or   a
3b23: ca 3b 3b     jp   z,$3B3B
3b26: e1           pop  hl
3b27: 11 08 4f     ld   de,$4F08
3b2a: 01 08 00     ld   bc,$0008
3b2d: ed b0        ldir
3b2f: 21 63 4f     ld   hl,$4F63
3b32: 11 19 4f     ld   de,$4F19
3b35: 01 08 00     ld   bc,$0008
3b38: ed b0        ldir
3b3a: c9           ret
3b3b: e1           pop  hl
3b3c: 11 19 4f     ld   de,$4F19
3b3f: 01 08 00     ld   bc,$0008
3b42: ed b0        ldir
3b44: 21 63 4f     ld   hl,$4F63
3b47: 11 08 4f     ld   de,$4F08
3b4a: 01 08 00     ld   bc,$0008
3b4d: ed b0        ldir
3b4f: c9           ret
3b50: 21 94 4f     ld   hl,$4F94
3b53: 34           inc  (hl)
3b54: 7e           ld   a,(hl)
3b55: 2b           dec  hl
3b56: be           cp   (hl)
3b57: 20 19        jr   nz,$3B72
3b59: 23           inc  hl
3b5a: 3a 26 27     ld   a,($2726)
3b5d: b7           or   a
3b5e: 20 04        jr   nz,$3B64
3b60: 35           dec  (hl)
3b61: c3 bb 4d     jp   $4DBB
3b64: af           xor  a
3b65: 77           ld   (hl),a
3b66: 23           inc  hl
3b67: 34           inc  (hl)
3b68: 7e           ld   a,(hl)
3b69: 23           inc  hl
3b6a: be           cp   (hl)
3b6b: 20 f4        jr   nz,$3B61
3b6d: 2b           dec  hl
3b6e: 35           dec  (hl)
3b6f: c3 8f 3b     jp   $3B8F
3b72: cb 3f        srl  a
3b74: 38 12        jr   c,$3B88
3b76: 3e 00        ld   a,$00
3b78: 32 ca 4e     ld   ($4ECA),a
3b7b: 2a c8 4e     ld   hl,($4EC8)
3b7e: 23           inc  hl
3b7f: 22 c8 4e     ld   ($4EC8),hl
3b82: 21 c5 4e     ld   hl,$4EC5
3b85: c3 3f 4e     jp   $4E3F
3b88: 3e 80        ld   a,$80
3b8a: 32 ca 4e     ld   ($4ECA),a
3b8d: 18 f3        jr   $3B82
3b8f: 3a bd 4f     ld   a,($4FBD)
3b92: f5           push af
3b93: cd d5 3c     call $3CD5
3b96: 3e 00        ld   a,$00
3b98: cd 5a 47     call $475A
3b9b: cd 71 3c     call $3C71
3b9e: 3e 17        ld   a,$17
3ba0: cd 5a 47     call $475A
3ba3: cd 26 44     call $4426
3ba6: 28 37        jr   z,$3BDF
3ba8: 06 17        ld   b,$17
3baa: 26 01        ld   h,$01
3bac: 2e 00        ld   l,$00
3bae: c5           push bc
3baf: e5           push hl
3bb0: cd 72 45     call $4572
3bb3: e1           pop  hl
3bb4: 24           inc  h
3bb5: 2c           inc  l
3bb6: c1           pop  bc
3bb7: 10 f5        djnz $3BAE
3bb9: 26 17        ld   h,$17
3bbb: 2e 00        ld   l,$00
3bbd: cd 2a 49     call $492A
3bc0: 3a 05 3a     ld   a,($3A05)
3bc3: 47           ld   b,a
3bc4: af           xor  a
3bc5: 77           ld   (hl),a
3bc6: 23           inc  hl
3bc7: 10 fc        djnz $3BC5
3bc9: 21 00 00     ld   hl,$0000
3bcc: 3e 00        ld   a,$00
3bce: cd a3 41     call $41A3
3bd1: 26 16        ld   h,$16
3bd3: 2e 4f        ld   l,$4F
3bd5: cd 2a 49     call $492A
3bd8: 26 17        ld   h,$17
3bda: 2e 00        ld   l,$00
3bdc: cd a3 41     call $41A3
3bdf: 3a a9 4f     ld   a,($4FA9)
3be2: 3c           inc  a
3be3: 32 a9 4f     ld   ($4FA9),a
3be6: fe 18        cp   $18
3be8: cc 00 44     call z,$4400
3beb: f1           pop  af
3bec: b7           or   a
3bed: 28 03        jr   z,$3BF2
3bef: cd e0 3c     call $3CE0
3bf2: c3 bb 4d     jp   $4DBB
3bf5: f5           push af
3bf6: 3a c4 4f     ld   a,($4FC4)
3bf9: b7           or   a
3bfa: 20 3b        jr   nz,$3C37
3bfc: 2a aa 4f     ld   hl,($4FAA)
3bff: 22 7e 4f     ld   ($4F7E),hl
3c02: ed 5b 08 3a  ld   de,($3A08)
3c06: ed 53 ae 4f  ld   ($4FAE),de
3c0a: 19           add  hl,de
3c0b: 22 ac 4f     ld   ($4FAC),hl
3c0e: 22 82 4f     ld   ($4F82),hl
3c11: af           xor  a
3c12: 32 80 4f     ld   ($4F80),a
3c15: 32 84 4f     ld   ($4F84),a
3c18: 3e 40        ld   a,$40
3c1a: 32 85 4f     ld   ($4F85),a
3c1d: 3e 19        ld   a,$19
3c1f: f6 40        or   $40
3c21: 32 81 4f     ld   ($4F81),a
3c24: 3e 02        ld   a,$02
3c26: 32 88 4f     ld   ($4F88),a
3c29: db 38        in   a,($38)
3c2b: e6 20        and  $20
3c2d: 28 fa        jr   z,$3C29
3c2f: 21 7b 4f     ld   hl,$4F7B
3c32: cd 3f 4e     call $4E3F
3c35: f1           pop  af
3c36: c9           ret
3c37: 2a aa 4f     ld   hl,($4FAA)
3c3a: 22 7e 4f     ld   ($4F7E),hl
3c3d: ed 5b 08 3a  ld   de,($3A08)
3c41: ed 53 ae 4f  ld   ($4FAE),de
3c45: 19           add  hl,de
3c46: 22 ac 4f     ld   ($4FAC),hl
3c49: 22 82 4f     ld   ($4F82),hl
3c4c: 3a 99 4f     ld   a,($4F99)
3c4f: 32 80 4f     ld   ($4F80),a
3c52: 32 84 4f     ld   ($4F84),a
3c55: af           xor  a
3c56: 32 85 4f     ld   ($4F85),a
3c59: 3e 19        ld   a,$19
3c5b: 32 81 4f     ld   ($4F81),a
3c5e: 3e 02        ld   a,$02
3c60: 32 88 4f     ld   ($4F88),a
3c63: db 38        in   a,($38)
3c65: e6 20        and  $20
3c67: 28 fa        jr   z,$3C63
3c69: 21 7b 4f     ld   hl,$4F7B
3c6c: cd 3f 4e     call $4E3F
3c6f: 18 c4        jr   $3C35
3c71: 3a f6 54     ld   a,($54F6)
3c74: e6 02        and  $02
3c76: c0           ret  nz
3c77: 2a 7e 4f     ld   hl,($4F7E)
3c7a: ed 5b 06 3a  ld   de,($3A06)
3c7e: 19           add  hl,de
3c7f: 22 7e 4f     ld   ($4F7E),hl
3c82: af           xor  a
3c83: 2a ae 4f     ld   hl,($4FAE)
3c86: ed 52        sbc  hl,de
3c88: 22 ae 4f     ld   ($4FAE),hl
3c8b: ed 5b aa 4f  ld   de,($4FAA)
3c8f: ed 53 82 4f  ld   ($4F82),de
3c93: ed 52        sbc  hl,de
3c95: 22 b0 4f     ld   ($4FB0),hl
3c98: 3a 81 4f     ld   a,($4F81)
3c9b: e6 3f        and  $3F
3c9d: 3d           dec  a
3c9e: cc f5 3b     call z,$3BF5
3ca1: 28 20        jr   z,$3CC3
3ca3: f5           push af
3ca4: 3a c4 4f     ld   a,($4FC4)
3ca7: b7           or   a
3ca8: 20 25        jr   nz,$3CCF
3caa: f1           pop  af
3cab: f6 40        or   $40
3cad: 32 81 4f     ld   ($4F81),a
3cb0: 3a 85 4f     ld   a,($4F85)
3cb3: e6 3f        and  $3F
3cb5: 3c           inc  a
3cb6: f5           push af
3cb7: 3a c4 4f     ld   a,($4FC4)
3cba: b7           or   a
3cbb: 20 15        jr   nz,$3CD2
3cbd: f1           pop  af
3cbe: f6 40        or   $40
3cc0: 32 85 4f     ld   ($4F85),a
3cc3: db 38        in   a,($38)
3cc5: e6 20        and  $20
3cc7: 28 fa        jr   z,$3CC3
3cc9: 21 7b 4f     ld   hl,$4F7B
3ccc: c3 3f 4e     jp   $4E3F
3ccf: f1           pop  af
3cd0: 18 db        jr   $3CAD
3cd2: f1           pop  af
3cd3: 18 eb        jr   $3CC0
3cd5: af           xor  a
3cd6: 32 bd 4f     ld   ($4FBD),a
3cd9: c9           ret
3cda: cd e0 3c     call $3CE0
3cdd: c3 46 3a     jp   $3A46
3ce0: 3e ff        ld   a,$FF
3ce2: 32 bd 4f     ld   ($4FBD),a
3ce5: c9           ret
3ce6: af           xor  a
3ce7: 32 a3 4f     ld   ($4FA3),a
3cea: 3a c6 4f     ld   a,($4FC6)
3ced: 21 95 3d     ld   hl,$3D95
3cf0: 06 1d        ld   b,$1D
3cf2: 18 0b        jr   $3CFF
3cf4: 3e ff        ld   a,$FF
3cf6: 32 a3 4f     ld   ($4FA3),a
3cf9: c9           ret
3cfa: 21 6d 3d     ld   hl,$3D6D
3cfd: 06 14        ld   b,$14
3cff: be           cp   (hl)
3d00: 28 07        jr   z,$3D09
3d02: 23           inc  hl
3d03: 23           inc  hl
3d04: 10 f9        djnz $3CFF
3d06: c3 46 3a     jp   $3A46
3d09: 23           inc  hl
3d0a: 7e           ld   a,(hl)
3d0b: 16 00        ld   d,$00
3d0d: 87           add  a,a
3d0e: 21 1f 3d     ld   hl,$3D1F
3d11: 5f           ld   e,a
3d12: 19           add  hl,de
3d13: 5e           ld   e,(hl)
3d14: 23           inc  hl
3d15: 56           ld   d,(hl)
3d16: 21 46 3a     ld   hl,$3A46
3d19: e5           push hl
3d1a: d5           push de
3d1b: 2a 94 4f     ld   hl,($4F94)
3d1e: c9           ret
3d1f: 44           ld   b,h
3d20: 46           ld   b,(hl)
3d21: 97           sub  a
3d22: 3f           ccf
3d23: bf           cp   a
3d24: 3f           ccf
3d25: da 46 92     jp   c,$9246
3d28: 45           ld   b,l
3d29: 2d           dec  l
3d2a: 44           ld   b,h
3d2b: 33           inc  sp
3d2c: 44           ld   b,h
3d2d: 39           add  hl,sp
3d2e: 44           ld   b,h
3d2f: 71           ld   (hl),c
3d30: 44           ld   b,h
3d31: 11 3f a6     ld   de,$A63F
3d34: 18 1d        jr   $3D53
3d36: 46           ld   b,(hl)
3d37: 03           inc  bc
3d38: 46           ld   b,(hl)
3d39: 36 46        ld   (hl),$46
3d3b: f6 45        or   $45
3d3d: 16 46        ld   d,$46
3d3f: f4 3c b5     call p,$B53C
3d42: 4d           ld   c,l
3d43: 46           ld   b,(hl)
3d44: 3a 29 40     ld   a,($4029)
3d47: 2f           cpl
3d48: 40           ld   b,b
3d49: 86           add  a,(hl)
3d4a: 3f           ccf
3d4b: 75           ld   (hl),l
3d4c: 3f           ccf
3d4d: 35           dec  (hl)
3d4e: 40           ld   b,b
3d4f: 3b           dec  sp
3d50: 40           ld   b,b
3d51: 9a           sbc  a,d
3d52: 45           ld   b,l
3d53: c6 45        add  a,$45
3d55: 9c           sbc  a,h
3d56: 18 a1        jr   $3CF9
3d58: 18 99        jr   $3CF3
3d5a: 46           ld   b,(hl)
3d5b: d5           push de
3d5c: 46           ld   b,(hl)
3d5d: 8d           adc  a,l
3d5e: 45           ld   b,l
3d5f: 44           ld   b,h
3d60: 46           ld   b,(hl)
3d61: 4e           ld   c,(hl)
3d62: 3f           ccf
3d63: 7e           ld   a,(hl)
3d64: 4d           ld   c,l
3d65: e0           ret  po
3d66: 3f           ccf
3d67: 08           ex   af,af'
3d68: 40           ld   b,b
3d69: cf           rst  $08
3d6a: 3d           dec  a
3d6b: 08           ex   af,af'
3d6c: 3f           ccf
3d6d: 07           rlca
3d6e: 0a           ld   a,(bc)
3d6f: 08           ex   af,af'
3d70: 0b           dec  bc
3d71: 09           add  hl,bc
3d72: 19           add  hl,de
3d73: 0a           ld   a,(bc)
3d74: 0c           inc  c
3d75: 0b           dec  bc
3d76: 0d           dec  c
3d77: 0c           inc  c
3d78: 0e 0d        ld   c,$0D
3d7a: 0f           rrca
3d7b: 1a           ld   a,(de)
3d7c: 00           nop
3d7d: 1b           dec  de
3d7e: 10 1e        djnz $3D9E
3d80: 11 00 00     ld   de,$0000
3d83: 00           nop
3d84: 00           nop
3d85: 00           nop
3d86: 00           nop
3d87: 00           nop
3d88: 00           nop
3d89: 00           nop
3d8a: 00           nop
3d8b: 00           nop
3d8c: 00           nop
3d8d: 00           nop
3d8e: 00           nop
3d8f: 00           nop
3d90: 00           nop
3d91: 00           nop
3d92: 00           nop
3d93: 00           nop
3d94: 00           nop
3d95: 2b           dec  hl
3d96: 20 6a        jr   nz,$3E02
3d98: 01 6b 02     ld   bc,$026B
3d9b: 59           ld   e,c
3d9c: 03           inc  bc
3d9d: 54           ld   d,h
3d9e: 04           inc  b
3d9f: 45           ld   b,l
3da0: 05           dec  b
3da1: 49           ld   c,c
3da2: 1a           ld   a,(de)
3da3: 52           ld   d,d
3da4: 06 51        ld   b,$51
3da6: 07           rlca
3da7: 57           ld   d,a
3da8: 08           ex   af,af'
3da9: 3d           dec  a
3daa: 09           add  hl,bc
3dab: 5e           ld   e,(hl)
3dac: 13           inc  de
3dad: 71           ld   (hl),c
3dae: 14           inc  d
3daf: 29           add  hl,hl
3db0: 15           dec  d
3db1: 28 16        jr   z,$3DC9
3db3: 22 1c 23     ld   ($231C),hl
3db6: 1b           dec  de
3db7: 2a 1d 79     ld   hl,($791D)
3dba: 1e 74        ld   e,$74
3dbc: 1f           rra
3dbd: 5f           ld   e,a
3dbe: 17           rla
3dbf: 2e 21        ld   l,$21
3dc1: 3f           ccf
3dc2: 22 6c 23     ld   ($236C),hl
3dc5: 6d           ld   l,l
3dc6: 24           inc  h
3dc7: 58           ld   e,b
3dc8: 25           dec  h
3dc9: 50           ld   d,b
3dca: 26 00        ld   h,$00
3dcc: 00           nop
3dcd: 00           nop
3dce: 00           nop
3dcf: 3e ff        ld   a,$FF
3dd1: 32 a2 4f     ld   ($4FA2),a
3dd4: 21 db 3d     ld   hl,$3DDB
3dd7: 22 a4 4f     ld   ($4FA4),hl
3dda: c9           ret
3ddb: af           xor  a
3ddc: 32 a2 4f     ld   ($4FA2),a
3ddf: 3a c6 4f     ld   a,($4FC6)
3de2: fe 31        cp   $31
3de4: ca 41 40     jp   z,$4041
3de7: fe 32        cp   $32
3de9: ca b2 40     jp   z,$40B2
3dec: fe 33        cp   $33
3dee: ca 35 41     jp   z,$4135
3df1: fe 34        cp   $34
3df3: ca 41 41     jp   z,$4141
3df6: fe 35        cp   $35
3df8: ca 4d 41     jp   z,$414D
3dfb: fe 36        cp   $36
3dfd: ca 55 41     jp   z,$4155
3e00: fe 37        cp   $37
3e02: ca 70 41     jp   z,$4170
3e05: fe 38        cp   $38
3e07: ca 8b 41     jp   z,$418B
3e0a: fe 39        cp   $39
3e0c: ca 8c 41     jp   z,$418C
3e0f: fe 41        cp   $41
3e11: ca 8d 41     jp   z,$418D
3e14: fe 42        cp   $42
3e16: ca 93 41     jp   z,$4193
3e19: fe 43        cp   $43
3e1b: ca 98 41     jp   z,$4198
3e1e: fe 44        cp   $44
3e20: ca 9e 41     jp   z,$419E
3e23: fe 45        cp   $45
3e25: ca da 3c     jp   z,$3CDA
3e28: fe 46        cp   $46
3e2a: ca d5 3c     jp   z,$3CD5
3e2d: fe 2a        cp   $2A
3e2f: ca 63 3e     jp   z,$3E63
3e32: fe 53        cp   $53
3e34: ca 5d 3e     jp   z,$3E5D
3e37: f5           push af
3e38: 3a f8 54     ld   a,($54F8)
3e3b: b7           or   a
3e3c: 28 11        jr   z,$3E4F
3e3e: f1           pop  af
3e3f: fe 51        cp   $51
3e41: ca 51 3e     jp   z,$3E51
3e44: fe 52        cp   $52
3e46: ca 57 3e     jp   z,$3E57
3e49: fe 4f        cp   $4F
3e4b: ca 69 3e     jp   z,$3E69
3e4e: c9           ret
3e4f: f1           pop  af
3e50: c9           ret
3e51: 21 66 89     ld   hl,$8966
3e54: c3 6f 3e     jp   $3E6F
3e57: 21 e5 89     ld   hl,$89E5
3e5a: c3 6f 3e     jp   $3E6F
3e5d: 21 83 8a     ld   hl,$8A83
3e60: c3 6f 3e     jp   $3E6F
3e63: 21 d9 88     ld   hl,$88D9
3e66: c3 6f 3e     jp   $3E6F
3e69: 21 f6 88     ld   hl,$88F6
3e6c: c3 6f 3e     jp   $3E6F
3e6f: 22 04 3f     ld   ($3F04),hl
3e72: 21 b9 88     ld   hl,$88B9
3e75: 22 06 3f     ld   ($3F06),hl
3e78: c3 7b 3e     jp   $3E7B
3e7b: 3e ff        ld   a,$FF
3e7d: 32 a2 4f     ld   ($4FA2),a
3e80: 21 87 3e     ld   hl,$3E87
3e83: 22 a4 4f     ld   ($4FA4),hl
3e86: c9           ret
3e87: 3a c6 4f     ld   a,($4FC6)
3e8a: 21 00 00     ld   hl,$0000
3e8d: 22 02 3f     ld   ($3F02),hl
3e90: fe 2f        cp   $2F
3e92: c2 de 3e     jp   nz,$3EDE
3e95: 21 9e 3e     ld   hl,$3E9E
3e98: 22 a4 4f     ld   ($4FA4),hl
3e9b: c3 46 3a     jp   $3A46
3e9e: 3a c6 4f     ld   a,($4FC6)
3ea1: fe 0d        cp   $0D
3ea3: ca de 3e     jp   z,$3EDE
3ea6: fe 20        cp   $20
3ea8: ca c9 3e     jp   z,$3EC9
3eab: fe 2f        cp   $2F
3ead: ca e5 3e     jp   z,$3EE5
3eb0: fe 24        cp   $24
3eb2: ca d2 3e     jp   z,$3ED2
3eb5: d6 30        sub  $30
3eb7: f5           push af
3eb8: 3e 0a        ld   a,$0A
3eba: ed 5b 02 3f  ld   de,($3F02)
3ebe: cd e2 8a     call $8AE2
3ec1: f1           pop  af
3ec2: 5f           ld   e,a
3ec3: 16 00        ld   d,$00
3ec5: 19           add  hl,de
3ec6: 22 02 3f     ld   ($3F02),hl
3ec9: 21 9e 3e     ld   hl,$3E9E
3ecc: 22 a4 4f     ld   ($4FA4),hl
3ecf: c3 46 3a     jp   $3A46
3ed2: af           xor  a
3ed3: 32 a2 4f     ld   ($4FA2),a
3ed6: 2a 04 3f     ld   hl,($3F04)
3ed9: 11 46 3a     ld   de,$3A46
3edc: d5           push de
3edd: e9           jp   (hl)
3ede: af           xor  a
3edf: 32 a2 4f     ld   ($4FA2),a
3ee2: c3 46 3a     jp   $3A46
3ee5: 2a 06 3f     ld   hl,($3F06)
3ee8: ed 5b 02 3f  ld   de,($3F02)
3eec: 73           ld   (hl),e
3eed: 23           inc  hl
3eee: 72           ld   (hl),d
3eef: 23           inc  hl
3ef0: 22 06 3f     ld   ($3F06),hl
3ef3: 21 00 00     ld   hl,$0000
3ef6: 22 02 3f     ld   ($3F02),hl
3ef9: 21 9e 3e     ld   hl,$3E9E
3efc: 22 a4 4f     ld   ($4FA4),hl
3eff: c3 46 3a     jp   $3A46
3f02: 00           nop
3f03: 00           nop
3f04: 00           nop
3f05: 00           nop
3f06: 00           nop
3f07: 00           nop
3f08: 3a 66 f0     ld   a,($F066)
3f0b: f6 01        or   $01
3f0d: 32 66 f0     ld   ($F066),a
3f10: c9           ret
3f11: 3e ff        ld   a,$FF
3f13: 32 a2 4f     ld   ($4FA2),a
3f16: 21 1d 3f     ld   hl,$3F1D
3f19: 22 a4 4f     ld   ($4FA4),hl
3f1c: c9           ret
3f1d: 3a c6 4f     ld   a,($4FC6)
3f20: d6 20        sub  $20
3f22: fe 19        cp   $19
3f24: 30 03        jr   nc,$3F29
3f26: 32 a6 4f     ld   ($4FA6),a
3f29: 21 32 3f     ld   hl,$3F32
3f2c: 22 a4 4f     ld   ($4FA4),hl
3f2f: c3 46 3a     jp   $3A46
3f32: 3a c6 4f     ld   a,($4FC6)
3f35: d6 20        sub  $20
3f37: fe 50        cp   $50
3f39: 30 03        jr   nc,$3F3E
3f3b: 32 94 4f     ld   ($4F94),a
3f3e: af           xor  a
3f3f: 32 a2 4f     ld   ($4FA2),a
3f42: 3a a6 4f     ld   a,($4FA6)
3f45: 32 95 4f     ld   ($4F95),a
3f48: cd bb 4d     call $4DBB
3f4b: c3 46 3a     jp   $3A46
3f4e: 3e ff        ld   a,$FF
3f50: 32 a2 4f     ld   ($4FA2),a
3f53: 21 5a 3f     ld   hl,$3F5A
3f56: 22 a4 4f     ld   ($4FA4),hl
3f59: c9           ret
3f5a: 3a c6 4f     ld   a,($4FC6)
3f5d: d6 30        sub  $30
3f5f: c2 71 3f     jp   nz,$3F71
3f62: 3e 0f        ld   a,$0F
3f64: 32 ba 4f     ld   ($4FBA),a
3f67: af           xor  a
3f68: 32 a2 4f     ld   ($4FA2),a
3f6b: cd e0 3c     call $3CE0
3f6e: c3 46 3a     jp   $3A46
3f71: 3e 8f        ld   a,$8F
3f73: 18 ef        jr   $3F64
3f75: 3e ff        ld   a,$FF
3f77: 32 bf 4f     ld   ($4FBF),a
3f7a: 3a 9a 4f     ld   a,($4F9A)
3f7d: f6 01        or   $01
3f7f: 32 9a 4f     ld   ($4F9A),a
3f82: cd 59 40     call $4059
3f85: c9           ret
3f86: 3e 00        ld   a,$00
3f88: 32 bf 4f     ld   ($4FBF),a
3f8b: 3a 9a 4f     ld   a,($4F9A)
3f8e: e6 fe        and  $FE
3f90: 32 9a 4f     ld   ($4F9A),a
3f93: cd 59 40     call $4059
3f96: c9           ret
3f97: 3e ff        ld   a,$FF
3f99: 32 c0 4f     ld   ($4FC0),a
3f9c: 2a 94 4f     ld   hl,($4F94)
3f9f: cd 2a 49     call $492A
3fa2: f5           push af
3fa3: f6 01        or   $01
3fa5: 77           ld   (hl),a
3fa6: f1           pop  af
3fa7: f6 80        or   $80
3fa9: f5           push af
3faa: 2a 94 4f     ld   hl,($4F94)
3fad: cd e1 42     call $42E1
3fb0: e5           push hl
3fb1: cd bb 4d     call $4DBB
3fb4: cd b8 44     call $44B8
3fb7: cd 50 3b     call $3B50
3fba: e1           pop  hl
3fbb: f1           pop  af
3fbc: c3 a3 41     jp   $41A3
3fbf: 2a 94 4f     ld   hl,($4F94)
3fc2: cd 2a 49     call $492A
3fc5: e6 7f        and  $7F
3fc7: f5           push af
3fc8: f6 04        or   $04
3fca: 77           ld   (hl),a
3fcb: 2a 94 4f     ld   hl,($4F94)
3fce: cd e1 42     call $42E1
3fd1: e5           push hl
3fd2: cd bb 4d     call $4DBB
3fd5: cd b8 44     call $44B8
3fd8: cd 50 3b     call $3B50
3fdb: e1           pop  hl
3fdc: f1           pop  af
3fdd: c3 a3 41     jp   $41A3
3fe0: 3e ff        ld   a,$FF
3fe2: 32 c0 4f     ld   ($4FC0),a
3fe5: 2a 94 4f     ld   hl,($4F94)
3fe8: cd 2a 49     call $492A
3feb: f5           push af
3fec: f6 02        or   $02
3fee: 77           ld   (hl),a
3fef: f1           pop  af
3ff0: f6 40        or   $40
3ff2: f5           push af
3ff3: 2a 94 4f     ld   hl,($4F94)
3ff6: cd e1 42     call $42E1
3ff9: e5           push hl
3ffa: cd bb 4d     call $4DBB
3ffd: cd b8 44     call $44B8
4000: cd 50 3b     call $3B50
4003: e1           pop  hl
4004: f1           pop  af
4005: c3 a3 41     jp   $41A3
4008: 2a 94 4f     ld   hl,($4F94)
400b: cd 2a 49     call $492A
400e: e6 bf        and  $BF
4010: f5           push af
4011: f6 08        or   $08
4013: 77           ld   (hl),a
4014: 2a 94 4f     ld   hl,($4F94)
4017: cd e1 42     call $42E1
401a: e5           push hl
401b: cd bb 4d     call $4DBB
401e: cd b8 44     call $44B8
4021: cd 50 3b     call $3B50
4024: e1           pop  hl
4025: f1           pop  af
4026: c3 a3 41     jp   $41A3
4029: cd b8 44     call $44B8
402c: c3 50 3b     jp   $3B50
402f: cd b8 44     call $44B8
4032: c3 50 3b     jp   $3B50
4035: cd b8 44     call $44B8
4038: c3 50 3b     jp   $3B50
403b: cd b8 44     call $44B8
403e: c3 50 3b     jp   $3B50
4041: 3e ff        ld   a,$FF
4043: 32 a2 4f     ld   ($4FA2),a
4046: 21 4d 40     ld   hl,$404D
4049: 22 a4 4f     ld   ($4FA4),hl
404c: c9           ret
404d: af           xor  a
404e: 32 a2 4f     ld   ($4FA2),a
4051: 3a c6 4f     ld   a,($4FC6)
4054: d6 30        sub  $30
4056: 32 9a 4f     ld   ($4F9A),a
4059: 3a 3f 27     ld   a,($273F)
405c: b7           or   a
405d: 28 17        jr   z,$4076
405f: 3a 9a 4f     ld   a,($4F9A)
4062: fe 04        cp   $04
4064: d0           ret  nc
4065: 67           ld   h,a
4066: cb 24        sla  h
4068: 2e 00        ld   l,$00
406a: 11 00 d2     ld   de,$D200
406d: 19           add  hl,de
406e: 11 11 5b     ld   de,$5B11
4071: 01 00 02     ld   bc,$0200
4074: ed b0        ldir
4076: 3a 9a 4f     ld   a,($4F9A)
4079: fe 00        cp   $00
407b: 28 15        jr   z,$4092
407d: fe 02        cp   $02
407f: 28 16        jr   z,$4097
4081: fe 04        cp   $04
4083: 28 17        jr   z,$409C
4085: fe 01        cp   $01
4087: 28 18        jr   z,$40A1
4089: fe 03        cp   $03
408b: 28 19        jr   z,$40A6
408d: fe 05        cp   $05
408f: 28 1a        jr   z,$40AB
4091: c9           ret
4092: 21 11 55     ld   hl,$5511
4095: 18 17        jr   $40AE
4097: 21 00 c6     ld   hl,$C600
409a: 18 12        jr   $40AE
409c: 21 00 d2     ld   hl,$D200
409f: 18 0d        jr   $40AE
40a1: 21 11 63     ld   hl,$6311
40a4: 18 08        jr   $40AE
40a6: 21 00 cc     ld   hl,$CC00
40a9: 18 03        jr   $40AE
40ab: 21 00 d8     ld   hl,$D800
40ae: 22 91 4f     ld   ($4F91),hl
40b1: c9           ret
40b2: 3e ff        ld   a,$FF
40b4: 32 a2 4f     ld   ($4FA2),a
40b7: 21 be 40     ld   hl,$40BE
40ba: 22 a4 4f     ld   ($4FA4),hl
40bd: c9           ret
40be: 3a c6 4f     ld   a,($4FC6)
40c1: 21 f7 4f     ld   hl,$4FF7
40c4: 77           ld   (hl),a
40c5: 22 08 50     ld   ($5008),hl
40c8: 06 10        ld   b,$10
40ca: 0e 00        ld   c,$00
40cc: ed 43 8c 4f  ld   ($4F8C),bc
40d0: 3e ff        ld   a,$FF
40d2: 32 a2 4f     ld   ($4FA2),a
40d5: 21 dc 40     ld   hl,$40DC
40d8: 22 a4 4f     ld   ($4FA4),hl
40db: c9           ret
40dc: 2a 08 50     ld   hl,($5008)
40df: 23           inc  hl
40e0: 22 08 50     ld   ($5008),hl
40e3: 3a c6 4f     ld   a,($4FC6)
40e6: 77           ld   (hl),a
40e7: ed 4b 8c 4f  ld   bc,($4F8C)
40eb: 10 df        djnz $40CC
40ed: af           xor  a
40ee: 32 a2 4f     ld   ($4FA2),a
40f1: 21 f7 4f     ld   hl,$4FF7
40f4: 7e           ld   a,(hl)
40f5: 32 8f 4f     ld   ($4F8F),a
40f8: 23           inc  hl
40f9: 11 e7 4f     ld   de,$4FE7
40fc: 01 10 00     ld   bc,$0010
40ff: ed b0        ldir
4101: 3a 8f 4f     ld   a,($4F8F)
4104: 21 90 4f     ld   hl,$4F90
4107: 96           sub  (hl)
4108: 32 8f 4f     ld   ($4F8F),a
410b: 21 8f 4f     ld   hl,$4F8F
410e: af           xor  a
410f: ed 6f        rld  (hl)
4111: 57           ld   d,a
4112: 5e           ld   e,(hl)
4113: 21 00 d2     ld   hl,$D200
4116: 19           add  hl,de
4117: 22 ce 4f     ld   ($4FCE),hl
411a: 21 ee 4f     ld   hl,$4FEE
411d: ed 5b ce 4f  ld   de,($4FCE)
4121: 06 08        ld   b,$08
4123: 7e           ld   a,(hl)
4124: 12           ld   (de),a
4125: 13           inc  de
4126: 2b           dec  hl
4127: 10 fa        djnz $4123
4129: 21 f6 4f     ld   hl,$4FF6
412c: 06 08        ld   b,$08
412e: 7e           ld   a,(hl)
412f: 12           ld   (de),a
4130: 13           inc  de
4131: 2b           dec  hl
4132: 10 fa        djnz $412E
4134: c9           ret
4135: f5           push af
4136: 3e ff        ld   a,$FF
4138: 32 9b 4f     ld   ($4F9B),a
413b: af           xor  a
413c: 32 9c 4f     ld   ($4F9C),a
413f: f1           pop  af
4140: c9           ret
4141: f5           push af
4142: 3e ff        ld   a,$FF
4144: 32 9c 4f     ld   ($4F9C),a
4147: af           xor  a
4148: 32 9b 4f     ld   ($4F9B),a
414b: f1           pop  af
414c: c9           ret
414d: af           xor  a
414e: 32 9b 4f     ld   ($4F9B),a
4151: 32 9c 4f     ld   ($4F9C),a
4154: c9           ret
4155: 3e ff        ld   a,$FF
4157: 32 a2 4f     ld   ($4FA2),a
415a: 21 61 41     ld   hl,$4161
415d: 22 a4 4f     ld   ($4FA4),hl
4160: c9           ret
4161: af           xor  a
4162: 32 a2 4f     ld   ($4FA2),a
4165: 3a c6 4f     ld   a,($4FC6)
4168: e6 0f        and  $0F
416a: c8           ret  z
416b: 3d           dec  a
416c: cd 7b 19     call $197B
416f: c9           ret
4170: 3e ff        ld   a,$FF
4172: 32 a2 4f     ld   ($4FA2),a
4175: 21 7c 41     ld   hl,$417C
4178: 22 a4 4f     ld   ($4FA4),hl
417b: c9           ret
417c: af           xor  a
417d: 32 a2 4f     ld   ($4FA2),a
4180: 3a c6 4f     ld   a,($4FC6)
4183: e6 0f        and  $0F
4185: c8           ret  z
4186: 3d           dec  a
4187: cd 84 19     call $1984
418a: c9           ret
418b: c9           ret
418c: c9           ret
418d: 3e ff        ld   a,$FF
418f: 32 c2 4f     ld   ($4FC2),a
4192: c9           ret
4193: af           xor  a
4194: 32 c2 4f     ld   ($4FC2),a
4197: c9           ret
4198: 3e ff        ld   a,$FF
419a: 32 c1 4f     ld   ($4FC1),a
419d: c9           ret
419e: af           xor  a
419f: 32 c1 4f     ld   ($4FC1),a
41a2: c9           ret
41a3: 32 c9 4f     ld   ($4FC9),a
41a6: af           xor  a
41a7: 32 d0 4f     ld   ($4FD0),a
41aa: 32 d1 4f     ld   ($4FD1),a
41ad: 22 e0 4f     ld   ($4FE0),hl
41b0: 22 d4 4f     ld   ($4FD4),hl
41b3: 22 d6 4f     ld   ($4FD6),hl
41b6: cd 2a 49     call $492A
41b9: 22 ca 4f     ld   ($4FCA),hl
41bc: 3a c9 4f     ld   a,($4FC9)
41bf: e6 40        and  $40
41c1: 32 d2 4f     ld   ($4FD2),a
41c4: 3a c9 4f     ld   a,($4FC9)
41c7: e6 80        and  $80
41c9: 32 d3 4f     ld   ($4FD3),a
41cc: 3a d0 4f     ld   a,($4FD0)
41cf: fe 00        cp   $00
41d1: cc 5c 42     call z,$425C
41d4: 3a d1 4f     ld   a,($4FD1)
41d7: fe 00        cp   $00
41d9: cc 9f 42     call z,$429F
41dc: 21 d0 4f     ld   hl,$4FD0
41df: 3a d1 4f     ld   a,($4FD1)
41e2: a6           and  (hl)
41e3: 20 19        jr   nz,$41FE
41e5: 2a ca 4f     ld   hl,($4FCA)
41e8: 23           inc  hl
41e9: 3e ff        ld   a,$FF
41eb: be           cp   (hl)
41ec: 20 07        jr   nz,$41F5
41ee: 23           inc  hl
41ef: be           cp   (hl)
41f0: 20 03        jr   nz,$41F5
41f2: c3 fe 41     jp   $41FE
41f5: 2a ca 4f     ld   hl,($4FCA)
41f8: 23           inc  hl
41f9: 22 ca 4f     ld   ($4FCA),hl
41fc: 18 ce        jr   $41CC
41fe: 2a e0 4f     ld   hl,($4FE0)
4201: ed 5b d4 4f  ld   de,($4FD4)
4205: cd 39 42     call $4239
4208: 28 13        jr   z,$421D
420a: 2a e0 4f     ld   hl,($4FE0)
420d: cd be 4d     call $4DBE
4210: 2a e0 4f     ld   hl,($4FE0)
4213: ed 5b d4 4f  ld   de,($4FD4)
4217: cd 44 42     call $4244
421a: cd f8 42     call $42F8
421d: 2a e0 4f     ld   hl,($4FE0)
4220: cd be 4d     call $4DBE
4223: 2a e0 4f     ld   hl,($4FE0)
4226: ed 5b d6 4f  ld   de,($4FD6)
422a: cd 39 42     call $4239
422d: 28 06        jr   z,$4235
422f: cd 44 42     call $4244
4232: cd 71 43     call $4371
4235: cd bb 4d     call $4DBB
4238: c9           ret
4239: d5           push de
423a: e5           push hl
423b: 7c           ld   a,h
423c: aa           xor  d
423d: 20 02        jr   nz,$4241
423f: 7d           ld   a,l
4240: ab           xor  e
4241: e1           pop  hl
4242: d1           pop  de
4243: c9           ret
4244: 7a           ld   a,d
4245: bc           cp   h
4246: 20 08        jr   nz,$4250
4248: 7b           ld   a,e
4249: 95           sub  l
424a: f5           push af
424b: 21 00 00     ld   hl,$0000
424e: 18 0a        jr   $425A
4250: 3a 05 3a     ld   a,($3A05)
4253: 95           sub  l
4254: f5           push af
4255: 7a           ld   a,d
4256: 94           sub  h
4257: 3d           dec  a
4258: 67           ld   h,a
4259: 6b           ld   l,e
425a: f1           pop  af
425b: c9           ret
425c: 3e 02        ld   a,$02
425e: 2a ca 4f     ld   hl,($4FCA)
4261: a6           and  (hl)
4262: c4 99 42     call nz,$4299
4265: 20 22        jr   nz,$4289
4267: 3a d2 4f     ld   a,($4FD2)
426a: e6 40        and  $40
426c: 28 08        jr   z,$4276
426e: 3e 08        ld   a,$08
4270: 2a ca 4f     ld   hl,($4FCA)
4273: a6           and  (hl)
4274: 20 23        jr   nz,$4299
4276: 3a d2 4f     ld   a,($4FD2)
4279: 4f           ld   c,a
427a: 7e           ld   a,(hl)
427b: e6 40        and  $40
427d: a9           xor  c
427e: 28 19        jr   z,$4299
4280: 2a d4 4f     ld   hl,($4FD4)
4283: cd e1 42     call $42E1
4286: 22 d4 4f     ld   ($4FD4),hl
4289: 2a ca 4f     ld   hl,($4FCA)
428c: 3e 40        ld   a,$40
428e: 2f           cpl
428f: a6           and  (hl)
4290: 21 d2 4f     ld   hl,$4FD2
4293: b6           or   (hl)
4294: 2a ca 4f     ld   hl,($4FCA)
4297: 77           ld   (hl),a
4298: c9           ret
4299: 3e ff        ld   a,$FF
429b: 32 d0 4f     ld   ($4FD0),a
429e: c9           ret
429f: 2a ca 4f     ld   hl,($4FCA)
42a2: 3e 01        ld   a,$01
42a4: a6           and  (hl)
42a5: c4 db 42     call nz,$42DB
42a8: 20 22        jr   nz,$42CC
42aa: 3a d3 4f     ld   a,($4FD3)
42ad: e6 80        and  $80
42af: 28 08        jr   z,$42B9
42b1: 3e 04        ld   a,$04
42b3: 2a ca 4f     ld   hl,($4FCA)
42b6: a6           and  (hl)
42b7: 20 22        jr   nz,$42DB
42b9: 3a d3 4f     ld   a,($4FD3)
42bc: 4f           ld   c,a
42bd: 7e           ld   a,(hl)
42be: e6 80        and  $80
42c0: a9           xor  c
42c1: 28 18        jr   z,$42DB
42c3: 2a d6 4f     ld   hl,($4FD6)
42c6: cd e1 42     call $42E1
42c9: 22 d6 4f     ld   ($4FD6),hl
42cc: 2a ca 4f     ld   hl,($4FCA)
42cf: 3e 7f        ld   a,$7F
42d1: a6           and  (hl)
42d2: 21 d3 4f     ld   hl,$4FD3
42d5: b6           or   (hl)
42d6: 2a ca 4f     ld   hl,($4FCA)
42d9: 77           ld   (hl),a
42da: c9           ret
42db: 3e ff        ld   a,$FF
42dd: 32 d1 4f     ld   ($4FD1),a
42e0: c9           ret
42e1: 2c           inc  l
42e2: 7d           ld   a,l
42e3: c5           push bc
42e4: f5           push af
42e5: 3a 05 3a     ld   a,($3A05)
42e8: 47           ld   b,a
42e9: f1           pop  af
42ea: b8           cp   b
42eb: c1           pop  bc
42ec: c0           ret  nz
42ed: 7c           ld   a,h
42ee: fe 18        cp   $18
42f0: 28 04        jr   z,$42F6
42f2: 24           inc  h
42f3: 2e 00        ld   l,$00
42f5: c9           ret
42f6: 2d           dec  l
42f7: c9           ret
42f8: e5           push hl
42f9: cd 4d 47     call $474D
42fc: ed 53 ff 4e  ld   ($4EFF),de
4300: ed 53 01 4f  ld   ($4F01),de
4304: 2a e0 4f     ld   hl,($4FE0)
4307: 7c           ld   a,h
4308: 32 d8 4f     ld   ($4FD8),a
430b: 3e 01        ld   a,$01
430d: f6 20        or   $20
430f: cd 66 4e     call $4E66
4312: 21 ef 4e     ld   hl,$4EEF
4315: cd 3f 4e     call $4E3F
4318: e1           pop  hl
4319: e5           push hl
431a: 7c           ld   a,h
431b: 47           ld   b,a
431c: fe 00        cp   $00
431e: 28 14        jr   z,$4334
4320: c5           push bc
4321: 3a d8 4f     ld   a,($4FD8)
4324: 3c           inc  a
4325: 32 d8 4f     ld   ($4FD8),a
4328: 67           ld   h,a
4329: 2e 00        ld   l,$00
432b: cd be 4d     call $4DBE
432e: cd 5e 43     call $435E
4331: c1           pop  bc
4332: 10 ec        djnz $4320
4334: e1           pop  hl
4335: 7d           ld   a,l
4336: fe 00        cp   $00
4338: 28 1e        jr   z,$4358
433a: e5           push hl
433b: 3a d8 4f     ld   a,($4FD8)
433e: 3c           inc  a
433f: 67           ld   h,a
4340: 2e 00        ld   l,$00
4342: cd be 4d     call $4DBE
4345: e1           pop  hl
4346: 7d           ld   a,l
4347: cd 4d 47     call $474D
434a: ed 53 ff 4e  ld   ($4EFF),de
434e: ed 53 01 4f  ld   ($4F01),de
4352: 21 ef 4e     ld   hl,$4EEF
4355: cd 3f 4e     call $4E3F
4358: 3e 20        ld   a,$20
435a: cd 66 4e     call $4E66
435d: c9           ret
435e: ed 5b 0a 3a  ld   de,($3A0A)
4362: ed 53 ff 4e  ld   ($4EFF),de
4366: ed 53 01 4f  ld   ($4F01),de
436a: 21 ef 4e     ld   hl,$4EEF
436d: cd 3f 4e     call $4E3F
4370: c9           ret
4371: e5           push hl
4372: f5           push af
4373: 2a e0 4f     ld   hl,($4FE0)
4376: 7c           ld   a,h
4377: 32 d8 4f     ld   ($4FD8),a
437a: cd dc 43     call $43DC
437d: f1           pop  af
437e: cd 4d 47     call $474D
4381: ed 53 e9 4e  ld   ($4EE9),de
4385: ed 53 eb 4e  ld   ($4EEB),de
4389: 3e 01        ld   a,$01
438b: f6 20        or   $20
438d: cd 66 4e     call $4E66
4390: 21 d9 4e     ld   hl,$4ED9
4393: cd 3f 4e     call $4E3F
4396: e1           pop  hl
4397: e5           push hl
4398: 7c           ld   a,h
4399: 47           ld   b,a
439a: fe 00        cp   $00
439c: 28 14        jr   z,$43B2
439e: c5           push bc
439f: 3a d8 4f     ld   a,($4FD8)
43a2: 3c           inc  a
43a3: 32 d8 4f     ld   ($4FD8),a
43a6: 67           ld   h,a
43a7: 2e 00        ld   l,$00
43a9: cd be 4d     call $4DBE
43ac: cd e8 43     call $43E8
43af: c1           pop  bc
43b0: 10 ec        djnz $439E
43b2: e1           pop  hl
43b3: 7d           ld   a,l
43b4: fe 00        cp   $00
43b6: 28 1e        jr   z,$43D6
43b8: e5           push hl
43b9: 3a d8 4f     ld   a,($4FD8)
43bc: 3c           inc  a
43bd: 67           ld   h,a
43be: 2e 00        ld   l,$00
43c0: cd be 4d     call $4DBE
43c3: e1           pop  hl
43c4: 7d           ld   a,l
43c5: cd 4d 47     call $474D
43c8: ed 53 e9 4e  ld   ($4EE9),de
43cc: ed 53 eb 4e  ld   ($4EEB),de
43d0: 21 d9 4e     ld   hl,$4ED9
43d3: cd 3f 4e     call $4E3F
43d6: 3e 20        ld   a,$20
43d8: cd 66 4e     call $4E66
43db: c9           ret
43dc: 06 08        ld   b,$08
43de: 3e ff        ld   a,$FF
43e0: 21 dc 4e     ld   hl,$4EDC
43e3: 77           ld   (hl),a
43e4: 23           inc  hl
43e5: 10 fc        djnz $43E3
43e7: c9           ret
43e8: ed 5b 0a 3a  ld   de,($3A0A)
43ec: ed 53 e9 4e  ld   ($4EE9),de
43f0: ed 53 eb 4e  ld   ($4EEB),de
43f4: cd dc 43     call $43DC
43f7: 21 d9 4e     ld   hl,$4ED9
43fa: cd 3f 4e     call $4E3F
43fd: c9           ret
43fe: c9           ret
43ff: c9           ret
4400: af           xor  a
4401: 32 c0 4f     ld   ($4FC0),a
4404: ed 4b 0e 3a  ld   bc,($3A0E)
4408: 21 7e a2     ld   hl,$A27E
440b: af           xor  a
440c: 77           ld   (hl),a
440d: 23           inc  hl
440e: 0b           dec  bc
440f: 79           ld   a,c
4410: b0           or   b
4411: 20 f8        jr   nz,$440B
4413: 21 05 3a     ld   hl,$3A05
4416: 4e           ld   c,(hl)
4417: 06 00        ld   b,$00
4419: 21 0a 50     ld   hl,$500A
441c: af           xor  a
441d: 77           ld   (hl),a
441e: 23           inc  hl
441f: 0b           dec  bc
4420: 79           ld   a,c
4421: b0           or   b
4422: c2 1c 44     jp   nz,$441C
4425: c9           ret
4426: 3a c0 4f     ld   a,($4FC0)
4429: b7           or   a
442a: c9           ret
442b: af           xor  a
442c: c9           ret
442d: 3a 95 4f     ld   a,($4F95)
4430: c3 07 48     jp   $4807
4433: 3a 95 4f     ld   a,($4F95)
4436: c3 9d 47     jp   $479D
4439: 3a 93 4f     ld   a,($4F93)
443c: 21 94 4f     ld   hl,$4F94
443f: 96           sub  (hl)
4440: 3d           dec  a
4441: 28 0d        jr   z,$4450
4443: f5           push af
4444: 2a 94 4f     ld   hl,($4F94)
4447: 5d           ld   e,l
4448: 1c           inc  e
4449: 54           ld   d,h
444a: 4f           ld   c,a
444b: 06 00        ld   b,$00
444d: cd f7 44     call $44F7
4450: 2a 94 4f     ld   hl,($4F94)
4453: cd be 4d     call $4DBE
4456: cd b8 44     call $44B8
4459: f1           pop  af
445a: 4f           ld   c,a
445b: 2a 94 4f     ld   hl,($4F94)
445e: 54           ld   d,h
445f: 5d           ld   e,l
4460: 1c           inc  e
4461: cd dc 44     call $44DC
4464: 2a 94 4f     ld   hl,($4F94)
4467: cd 15 49     call $4915
446a: 2a 94 4f     ld   hl,($4F94)
446d: cd a3 41     call $41A3
4470: c9           ret
4471: 3a 93 4f     ld   a,($4F93)
4474: 21 94 4f     ld   hl,$4F94
4477: 96           sub  (hl)
4478: 3d           dec  a
4479: 28 0d        jr   z,$4488
447b: f5           push af
447c: 2a 94 4f     ld   hl,($4F94)
447f: 5d           ld   e,l
4480: 54           ld   d,h
4481: 2c           inc  l
4482: 4f           ld   c,a
4483: 06 00        ld   b,$00
4485: cd f7 44     call $44F7
4488: 3a 95 4f     ld   a,($4F95)
448b: 67           ld   h,a
448c: f5           push af
448d: 3a 05 3a     ld   a,($3A05)
4490: 3d           dec  a
4491: 6f           ld   l,a
4492: f1           pop  af
4493: cd be 4d     call $4DBE
4496: cd b8 44     call $44B8
4499: 2a 94 4f     ld   hl,($4F94)
449c: cd be 4d     call $4DBE
449f: f1           pop  af
44a0: ed 5b 94 4f  ld   de,($4F94)
44a4: 62           ld   h,d
44a5: 6b           ld   l,e
44a6: 2c           inc  l
44a7: 4f           ld   c,a
44a8: cd dc 44     call $44DC
44ab: 2a 94 4f     ld   hl,($4F94)
44ae: cd 15 49     call $4915
44b1: 2a 94 4f     ld   hl,($4F94)
44b4: c3 a3 41     jp   $41A3
44b7: c9           ret
44b8: f5           push af
44b9: 11 dc 4e     ld   de,$4EDC
44bc: 21 63 4f     ld   hl,$4F63
44bf: 01 08 00     ld   bc,$0008
44c2: ed b0        ldir
44c4: 3e 0f        ld   a,$0F
44c6: 32 e7 4e     ld   ($4EE7),a
44c9: 01 08 00     ld   bc,$0008
44cc: ed 43 e9 4e  ld   ($4EE9),bc
44d0: ed 43 eb 4e  ld   ($4EEB),bc
44d4: 21 d9 4e     ld   hl,$4ED9
44d7: cd 3f 4e     call $4E3F
44da: f1           pop  af
44db: c9           ret
44dc: 06 00        ld   b,$00
44de: c5           push bc
44df: d5           push de
44e0: c5           push bc
44e1: cd 2a 49     call $492A
44e4: c1           pop  bc
44e5: 11 80 b1     ld   de,$B180
44e8: ed b0        ldir
44ea: d1           pop  de
44eb: eb           ex   de,hl
44ec: cd 2a 49     call $492A
44ef: 11 80 b1     ld   de,$B180
44f2: eb           ex   de,hl
44f3: c1           pop  bc
44f4: ed b0        ldir
44f6: c9           ret
44f7: e5           push hl
44f8: 21 80 b1     ld   hl,$B180
44fb: 22 70 45     ld   ($4570),hl
44fe: e1           pop  hl
44ff: ed 53 e2 4f  ld   ($4FE2),de
4503: 41           ld   b,c
4504: c5           push bc
4505: c5           push bc
4506: e5           push hl
4507: cd 24 45     call $4524
450a: e1           pop  hl
450b: 2c           inc  l
450c: c1           pop  bc
450d: 10 f6        djnz $4505
450f: 21 80 b1     ld   hl,$B180
4512: 22 70 45     ld   ($4570),hl
4515: 2a e2 4f     ld   hl,($4FE2)
4518: c1           pop  bc
4519: c5           push bc
451a: e5           push hl
451b: cd 4a 45     call $454A
451e: e1           pop  hl
451f: 2c           inc  l
4520: c1           pop  bc
4521: 10 f6        djnz $4519
4523: c9           ret
4524: e5           push hl
4525: cd be 4d     call $4DBE
4528: e1           pop  hl
4529: cb 3d        srl  l
452b: 3e b8        ld   a,$B8
452d: 38 02        jr   c,$4531
452f: 3e b0        ld   a,$B0
4531: 32 4a 4f     ld   ($4F4A),a
4534: 21 40 4f     ld   hl,$4F40
4537: cd 3f 4e     call $4E3F
453a: 2a 70 45     ld   hl,($4570)
453d: 06 10        ld   b,$10
453f: cd 7e 4e     call $4E7E
4542: 77           ld   (hl),a
4543: 23           inc  hl
4544: 10 f9        djnz $453F
4546: 22 70 45     ld   ($4570),hl
4549: c9           ret
454a: cd be 4d     call $4DBE
454d: 06 08        ld   b,$08
454f: 11 0f 4f     ld   de,$4F0F
4552: 2a 70 45     ld   hl,($4570)
4555: 7e           ld   a,(hl)
4556: 12           ld   (de),a
4557: 23           inc  hl
4558: 1b           dec  de
4559: 10 fa        djnz $4555
455b: 11 20 4f     ld   de,$4F20
455e: 06 08        ld   b,$08
4560: 7e           ld   a,(hl)
4561: 12           ld   (de),a
4562: 23           inc  hl
4563: 1b           dec  de
4564: 10 fa        djnz $4560
4566: 22 70 45     ld   ($4570),hl
4569: 21 05 4f     ld   hl,$4F05
456c: cd 3f 4e     call $4E3F
456f: c9           ret
4570: 00           nop
4571: 00           nop
4572: e5           push hl
4573: 65           ld   h,l
4574: 2e 00        ld   l,$00
4576: cd 2a 49     call $492A
4579: eb           ex   de,hl
457a: e1           pop  hl
457b: d5           push de
457c: 2e 00        ld   l,$00
457e: cd 2a 49     call $492A
4581: d1           pop  de
4582: f5           push af
4583: 3a 05 3a     ld   a,($3A05)
4586: 4f           ld   c,a
4587: 06 00        ld   b,$00
4589: f1           pop  af
458a: ed b0        ldir
458c: c9           ret
458d: 3e ff        ld   a,$FF
458f: 32 db 4f     ld   ($4FDB),a
4592: cd 09 47     call $4709
4595: af           xor  a
4596: 32 db 4f     ld   ($4FDB),a
4599: c9           ret
459a: 3a 94 4f     ld   a,($4F94)
459d: cb 3f        srl  a
459f: cb 3f        srl  a
45a1: cb 3f        srl  a
45a3: 5f           ld   e,a
45a4: 16 00        ld   d,$00
45a6: 21 bc 45     ld   hl,$45BC
45a9: 19           add  hl,de
45aa: 7e           ld   a,(hl)
45ab: 32 94 4f     ld   ($4F94),a
45ae: fe ff        cp   $FF
45b0: 20 06        jr   nz,$45B8
45b2: cd 16 46     call $4616
45b5: cd 03 46     call $4603
45b8: cd bb 4d     call $4DBB
45bb: c9           ret
45bc: 08           ex   af,af'
45bd: 10 18        djnz $45D7
45bf: 20 28        jr   nz,$45E9
45c1: 30 38        jr   nc,$45FB
45c3: 40           ld   b,b
45c4: 48           ld   c,b
45c5: ff           rst  $38
45c6: 3a 94 4f     ld   a,($4F94)
45c9: cb 3f        srl  a
45cb: cb 3f        srl  a
45cd: cb 3f        srl  a
45cf: 5f           ld   e,a
45d0: 16 00        ld   d,$00
45d2: 21 ec 45     ld   hl,$45EC
45d5: 19           add  hl,de
45d6: 7e           ld   a,(hl)
45d7: 32 94 4f     ld   ($4F94),a
45da: fe ff        cp   $FF
45dc: 20 08        jr   nz,$45E6
45de: 3e 4f        ld   a,$4F
45e0: 32 94 4f     ld   ($4F94),a
45e3: cd 36 46     call $4636
45e6: cd bb 4d     call $4DBB
45e9: c3 46 3a     jp   $3A46
45ec: ff           rst  $38
45ed: 08           ex   af,af'
45ee: 10 18        djnz $4608
45f0: 20 28        jr   nz,$461A
45f2: 30 36        jr   nc,$462A
45f4: 40           ld   b,b
45f5: 48           ld   c,b
45f6: 21 94 4f     ld   hl,$4F94
45f9: 34           inc  (hl)
45fa: 7e           ld   a,(hl)
45fb: 2b           dec  hl
45fc: be           cp   (hl)
45fd: da bb 4d     jp   c,$4DBB
4600: cd 16 46     call $4616
4603: 21 95 4f     ld   hl,$4F95
4606: 3e 18        ld   a,$18
4608: be           cp   (hl)
4609: c8           ret  z
460a: 34           inc  (hl)
460b: 7e           ld   a,(hl)
460c: 23           inc  hl
460d: be           cp   (hl)
460e: c2 bb 4d     jp   nz,$4DBB
4611: 2b           dec  hl
4612: 35           dec  (hl)
4613: c3 8f 3b     jp   $3B8F
4616: af           xor  a
4617: 32 94 4f     ld   ($4F94),a
461a: c3 bb 4d     jp   $4DBB
461d: 21 94 4f     ld   hl,$4F94
4620: 35           dec  (hl)
4621: f2 bb 4d     jp   p,$4DBB
4624: 2b           dec  hl
4625: 7e           ld   a,(hl)
4626: 23           inc  hl
4627: 3d           dec  a
4628: 77           ld   (hl),a
4629: 23           inc  hl
462a: 35           dec  (hl)
462b: f2 bb 4d     jp   p,$4DBB
462e: 23           inc  hl
462f: 7e           ld   a,(hl)
4630: 3d           dec  a
4631: 2b           dec  hl
4632: 77           ld   (hl),a
4633: c3 bb 4d     jp   $4DBB
4636: 21 95 4f     ld   hl,$4F95
4639: 35           dec  (hl)
463a: f2 bb 4d     jp   p,$4DBB
463d: 23           inc  hl
463e: 7e           ld   a,(hl)
463f: 3d           dec  a
4640: 2b           dec  hl
4641: 77           ld   (hl),a
4642: 18 ef        jr   $4633
4644: 3e 0c        ld   a,$0C
4646: cd 66 4e     call $4E66
4649: cd f5 3b     call $3BF5
464c: 3a c4 4f     ld   a,($4FC4)
464f: b7           or   a
4650: 28 06        jr   z,$4658
4652: cd a0 46     call $46A0
4655: c3 84 46     jp   $4684
4658: 2a aa 4f     ld   hl,($4FAA)
465b: ed 4b b2 4f  ld   bc,($4FB2)
465f: 11 00 00     ld   de,$0000
4662: cd 83 47     call $4783
4665: 3a f8 54     ld   a,($54F8)
4668: b7           or   a
4669: ca 84 46     jp   z,$4684
466c: 21 00 00     ld   hl,$0000
466f: 06 04        ld   b,$04
4671: c5           push bc
4672: e5           push hl
4673: 01 ff 3f     ld   bc,$3FFF
4676: 11 00 00     ld   de,$0000
4679: cd 83 47     call $4783
467c: e1           pop  hl
467d: 11 00 40     ld   de,$4000
4680: 19           add  hl,de
4681: c1           pop  bc
4682: 10 ed        djnz $4671
4684: cd b5 4d     call $4DB5
4687: db 38        in   a,($38)
4689: e6 20        and  $20
468b: 28 fa        jr   z,$4687
468d: 3e 0d        ld   a,$0D
468f: cd 66 4e     call $4E66
4692: af           xor  a
4693: 32 db 4f     ld   ($4FDB),a
4696: c3 00 44     jp   $4400
4699: 3e ff        ld   a,$FF
469b: 32 db 4f     ld   ($4FDB),a
469e: 18 a4        jr   $4644
46a0: 3e 01        ld   a,$01
46a2: cd b0 46     call $46B0
46a5: 3e 02        ld   a,$02
46a7: cd b0 46     call $46B0
46aa: 3e 04        ld   a,$04
46ac: cd b0 46     call $46B0
46af: c9           ret
46b0: f5           push af
46b1: db 38        in   a,($38)
46b3: e6 08        and  $08
46b5: 20 fa        jr   nz,$46B1
46b7: f1           pop  af
46b8: d3 2d        out  ($2D),a
46ba: 2a aa 4f     ld   hl,($4FAA)
46bd: 3e 00        ld   a,$00
46bf: 22 c8 4e     ld   ($4EC8),hl
46c2: 32 ca 4e     ld   ($4ECA),a
46c5: 21 c5 4e     ld   hl,$4EC5
46c8: cd 49 4e     call $4E49
46cb: 01 80 3e     ld   bc,$3E80
46ce: 11 00 00     ld   de,$0000
46d1: cd 8b 47     call $478B
46d4: c9           ret
46d5: 3e ff        ld   a,$FF
46d7: 32 db 4f     ld   ($4FDB),a
46da: 21 96 4f     ld   hl,$4F96
46dd: 7e           ld   a,(hl)
46de: 2b           dec  hl
46df: 96           sub  (hl)
46e0: 3d           dec  a
46e1: 28 14        jr   z,$46F7
46e3: 47           ld   b,a
46e4: 4e           ld   c,(hl)
46e5: 0c           inc  c
46e6: c5           push bc
46e7: 3a a1 4f     ld   a,($4FA1)
46ea: 57           ld   d,a
46eb: 79           ld   a,c
46ec: c5           push bc
46ed: cd 5a 47     call $475A
46f0: c1           pop  bc
46f1: cd f9 46     call $46F9
46f4: c1           pop  bc
46f5: 10 ee        djnz $46E5
46f7: 18 10        jr   $4709
46f9: 61           ld   h,c
46fa: 2e 00        ld   l,$00
46fc: cd 2a 49     call $492A
46ff: 3a 05 3a     ld   a,($3A05)
4702: 47           ld   b,a
4703: af           xor  a
4704: 77           ld   (hl),a
4705: 23           inc  hl
4706: 10 fc        djnz $4704
4708: c9           ret
4709: 21 93 4f     ld   hl,$4F93
470c: 7e           ld   a,(hl)
470d: 23           inc  hl
470e: 96           sub  (hl)
470f: f5           push af
4710: cd 4d 47     call $474D
4713: ed 53 e9 4e  ld   ($4EE9),de
4717: ed 53 eb 4e  ld   ($4EEB),de
471b: 3e 0f        ld   a,$0F
471d: 32 e7 4e     ld   ($4EE7),a
4720: 21 63 4f     ld   hl,$4F63
4723: 11 dc 4e     ld   de,$4EDC
4726: 01 08 00     ld   bc,$0008
4729: ed b0        ldir
472b: cd bb 4d     call $4DBB
472e: 21 d9 4e     ld   hl,$4ED9
4731: cd 3f 4e     call $4E3F
4734: 2a 94 4f     ld   hl,($4F94)
4737: cd 2a 49     call $492A
473a: f1           pop  af
473b: 47           ld   b,a
473c: af           xor  a
473d: 77           ld   (hl),a
473e: 23           inc  hl
473f: 10 fc        djnz $473D
4741: 2a 94 4f     ld   hl,($4F94)
4744: cd 15 49     call $4915
4747: 2a 94 4f     ld   hl,($4F94)
474a: c3 a3 41     jp   $41A3
474d: 5f           ld   e,a
474e: af           xor  a
474f: 16 00        ld   d,$00
4751: 06 03        ld   b,$03
4753: cb 23        sla  e
4755: cb 12        rl   d
4757: 10 fa        djnz $4753
4759: c9           ret
475a: 67           ld   h,a
475b: 2e 00        ld   l,$00
475d: cd be 4d     call $4DBE
4760: 21 63 4f     ld   hl,$4F63
4763: 11 dc 4e     ld   de,$4EDC
4766: 01 08 00     ld   bc,$0008
4769: ed b0        ldir
476b: ed 4b 0a 3a  ld   bc,($3A0A)
476f: ed 43 e9 4e  ld   ($4EE9),bc
4773: ed 43 eb 4e  ld   ($4EEB),bc
4777: 3e 0f        ld   a,$0F
4779: 32 e7 4e     ld   ($4EE7),a
477c: 21 d9 4e     ld   hl,$4ED9
477f: cd 3f 4e     call $4E3F
4782: c9           ret
4783: c5           push bc
4784: 11 00 00     ld   de,$0000
4787: cd fd 4d     call $4DFD
478a: c1           pop  bc
478b: 0b           dec  bc
478c: ed 43 cf 4e  ld   ($4ECF),bc
4790: ed 53 d7 4e  ld   ($4ED7),de
4794: 21 cb 4e     ld   hl,$4ECB
4797: cd 49 4e     call $4E49
479a: c3 bb 4d     jp   $4DBB
479d: b7           or   a
479e: ca 8f 3b     jp   z,$3B8F
47a1: 47           ld   b,a
47a2: 3e 17        ld   a,$17
47a4: 90           sub  b
47a5: 28 2d        jr   z,$47D4
47a7: 4f           ld   c,a
47a8: 50           ld   d,b
47a9: 04           inc  b
47aa: ed 53 9d 4f  ld   ($4F9D),de
47ae: ed 43 9f 4f  ld   ($4F9F),bc
47b2: 6a           ld   l,d
47b3: 60           ld   h,b
47b4: cd 72 45     call $4572
47b7: cd 57 48     call $4857
47ba: ed 5b 9d 4f  ld   de,($4F9D)
47be: 62           ld   h,d
47bf: 2e 4f        ld   l,$4F
47c1: cd be 4d     call $4DBE
47c4: cd c8 48     call $48C8
47c7: ed 4b 9f 4f  ld   bc,($4F9F)
47cb: ed 5b 9d 4f  ld   de,($4F9D)
47cf: 14           inc  d
47d0: 04           inc  b
47d1: 0d           dec  c
47d2: 20 d6        jr   nz,$47AA
47d4: 3e 17        ld   a,$17
47d6: cd 5a 47     call $475A
47d9: 0e 17        ld   c,$17
47db: cd f9 46     call $46F9
47de: 2a 94 4f     ld   hl,($4F94)
47e1: 2e 00        ld   l,$00
47e3: e5           push hl
47e4: 26 16        ld   h,$16
47e6: f5           push af
47e7: 3a 05 3a     ld   a,($3A05)
47ea: 3d           dec  a
47eb: 6f           ld   l,a
47ec: f1           pop  af
47ed: cd 15 49     call $4915
47f0: 26 17        ld   h,$17
47f2: 2e 00        ld   l,$00
47f4: cd a3 41     call $41A3
47f7: cd e0 3c     call $3CE0
47fa: e1           pop  hl
47fb: 22 94 4f     ld   ($4F94),hl
47fe: cd 15 49     call $4915
4801: 2a 94 4f     ld   hl,($4F94)
4804: c3 a3 41     jp   $41A3
4807: f5           push af
4808: 47           ld   b,a
4809: 3e 17        ld   a,$17
480b: 90           sub  b
480c: 28 2f        jr   z,$483D
480e: 4f           ld   c,a
480f: 06 16        ld   b,$16
4811: 16 17        ld   d,$17
4813: ed 53 9d 4f  ld   ($4F9D),de
4817: ed 43 9f 4f  ld   ($4F9F),bc
481b: 60           ld   h,b
481c: 6a           ld   l,d
481d: cd 72 45     call $4572
4820: cd 57 48     call $4857
4823: ed 5b 9d 4f  ld   de,($4F9D)
4827: 62           ld   h,d
4828: 2e 4f        ld   l,$4F
482a: cd be 4d     call $4DBE
482d: cd c8 48     call $48C8
4830: ed 5b 9d 4f  ld   de,($4F9D)
4834: 15           dec  d
4835: ed 4b 9f 4f  ld   bc,($4F9F)
4839: 05           dec  b
483a: 0d           dec  c
483b: 20 d6        jr   nz,$4813
483d: f1           pop  af
483e: f5           push af
483f: cd 5a 47     call $475A
4842: f1           pop  af
4843: 4f           ld   c,a
4844: cd f9 46     call $46F9
4847: af           xor  a
4848: 32 94 4f     ld   ($4F94),a
484b: 2a 94 4f     ld   hl,($4F94)
484e: cd 15 49     call $4915
4851: 2a 94 4f     ld   hl,($4F94)
4854: c3 a3 41     jp   $41A3
4857: ed 4b 9f 4f  ld   bc,($4F9F)
485b: 60           ld   h,b
485c: 3a 05 3a     ld   a,($3A05)
485f: 3d           dec  a
4860: 6f           ld   l,a
4861: cd be 4d     call $4DBE
4864: cd 68 48     call $4868
4867: c9           ret
4868: 21 80 b1     ld   hl,$B180
486b: 3a c4 4f     ld   a,($4FC4)
486e: b7           or   a
486f: c2 b6 48     jp   nz,$48B6
4872: cd 76 48     call $4876
4875: c9           ret
4876: e5           push hl
4877: 3a 55 12     ld   a,($1255)
487a: b7           or   a
487b: 21 80 02     ld   hl,$0280
487e: 20 03        jr   nz,$4883
4880: 2a 06 3a     ld   hl,($3A06)
4883: 7c           ld   a,h
4884: f6 40        or   $40
4886: 67           ld   h,a
4887: 22 30 4f     ld   ($4F30),hl
488a: 21 28 4f     ld   hl,$4F28
488d: cd 3f 4e     call $4E3F
4890: e1           pop  hl
4891: 3a 55 12     ld   a,($1255)
4894: b7           or   a
4895: 01 80 02     ld   bc,$0280
4898: 20 04        jr   nz,$489E
489a: ed 4b 06 3a  ld   bc,($3A06)
489e: af           xor  a
489f: cb 20        sla  b
48a1: cb 21        sla  c
48a3: 78           ld   a,b
48a4: ce 00        adc  a,$00
48a6: 47           ld   b,a
48a7: cd 7e 4e     call $4E7E
48aa: 77           ld   (hl),a
48ab: 23           inc  hl
48ac: 0b           dec  bc
48ad: 78           ld   a,b
48ae: b1           or   c
48af: 20 f6        jr   nz,$48A7
48b1: 3e 20        ld   a,$20
48b3: d3 39        out  ($39),a
48b5: c9           ret
48b6: 22 bb 4f     ld   ($4FBB),hl
48b9: 21 05 3a     ld   hl,$3A05
48bc: 46           ld   b,(hl)
48bd: 0e 00        ld   c,$00
48bf: 2a 9f 4f     ld   hl,($4F9F)
48c2: 2e 00        ld   l,$00
48c4: cd 04 4c     call $4C04
48c7: c9           ret
48c8: 21 80 b1     ld   hl,$B180
48cb: 3a c4 4f     ld   a,($4FC4)
48ce: b7           or   a
48cf: c2 01 49     jp   nz,$4901
48d2: cd d6 48     call $48D6
48d5: c9           ret
48d6: e5           push hl
48d7: 21 34 4f     ld   hl,$4F34
48da: cd 3f 4e     call $4E3F
48dd: e1           pop  hl
48de: 3a 55 12     ld   a,($1255)
48e1: b7           or   a
48e2: 01 80 02     ld   bc,$0280
48e5: 20 04        jr   nz,$48EB
48e7: ed 4b 06 3a  ld   bc,($3A06)
48eb: af           xor  a
48ec: cb 20        sla  b
48ee: cb 21        sla  c
48f0: 78           ld   a,b
48f1: ce 00        adc  a,$00
48f3: 47           ld   b,a
48f4: 7e           ld   a,(hl)
48f5: 23           inc  hl
48f6: cd 6c 4e     call $4E6C
48f9: d3 38        out  ($38),a
48fb: 0b           dec  bc
48fc: 78           ld   a,b
48fd: b1           or   c
48fe: 20 f4        jr   nz,$48F4
4900: c9           ret
4901: 22 bb 4f     ld   ($4FBB),hl
4904: 21 05 3a     ld   hl,$3A05
4907: 46           ld   b,(hl)
4908: 0e 00        ld   c,$00
490a: ed 5b 9d 4f  ld   de,($4F9D)
490e: 62           ld   h,d
490f: 2e 00        ld   l,$00
4911: cd 78 4c     call $4C78
4914: c9           ret
4915: 7c           ld   a,h
4916: b5           or   l
4917: 28 0f        jr   z,$4928
4919: 7c           ld   a,h
491a: fe 18        cp   $18
491c: 20 04        jr   nz,$4922
491e: 7d           ld   a,l
491f: b7           or   a
4920: 28 06        jr   z,$4928
4922: cd 2a 49     call $492A
4925: 2b           dec  hl
4926: 7e           ld   a,(hl)
4927: c9           ret
4928: af           xor  a
4929: c9           ret
492a: e5           push hl
492b: 5c           ld   e,h
492c: cb 23        sla  e
492e: 16 00        ld   d,$00
4930: 21 ac 50     ld   hl,$50AC
4933: 19           add  hl,de
4934: 5e           ld   e,(hl)
4935: 23           inc  hl
4936: 56           ld   d,(hl)
4937: e1           pop  hl
4938: 26 00        ld   h,$00
493a: 19           add  hl,de
493b: eb           ex   de,hl
493c: 21 7e a2     ld   hl,$A27E
493f: 19           add  hl,de
4940: 7e           ld   a,(hl)
4941: c9           ret
4942: 3e 0d        ld   a,$0D
4944: c3 66 4e     jp   $4E66
4947: 3e 0c        ld   a,$0C
4949: c3 66 4e     jp   $4E66
494c: c9           ret
494d: 32 8e 4f     ld   ($4F8E),a
4950: 3a 54 12     ld   a,($1254)
4953: f5           push af
4954: 3e ff        ld   a,$FF
4956: 32 54 12     ld   ($1254),a
4959: 3a f5 54     ld   a,($54F5)
495c: 32 c4 4e     ld   ($4EC4),a
495f: 3e 0c        ld   a,$0C
4961: cd 66 4e     call $4E66
4964: 3a c4 4f     ld   a,($4FC4)
4967: b7           or   a
4968: c2 a7 4a     jp   nz,$4AA7
496b: 21 ba 4e     ld   hl,$4EBA
496e: cd 3f 4e     call $4E3F
4971: 3e 40        ld   a,$40
4973: 32 c5 4f     ld   ($4FC5),a
4976: 3a c4 4e     ld   a,($4EC4)
4979: 21 93 4f     ld   hl,$4F93
497c: 77           ld   (hl),a
497d: 21 05 3a     ld   hl,$3A05
4980: 77           ld   (hl),a
4981: 3a 05 3a     ld   a,($3A05)
4984: 4f           ld   c,a
4985: 06 00        ld   b,$00
4987: 21 0a 50     ld   hl,$500A
498a: 09           add  hl,bc
498b: 23           inc  hl
498c: 36 ff        ld   (hl),$FF
498e: 23           inc  hl
498f: 36 ff        ld   (hl),$FF
4991: 3a 05 3a     ld   a,($3A05)
4994: 11 18 00     ld   de,$0018
4997: cd e2 8a     call $8AE2
499a: eb           ex   de,hl
499b: 21 7e a2     ld   hl,$A27E
499e: 19           add  hl,de
499f: 36 ff        ld   (hl),$FF
49a1: 23           inc  hl
49a2: 36 ff        ld   (hl),$FF
49a4: 3a 05 3a     ld   a,($3A05)
49a7: 11 08 00     ld   de,$0008
49aa: cd e2 8a     call $8AE2
49ad: 22 06 3a     ld   ($3A06),hl
49b0: eb           ex   de,hl
49b1: 3e 19        ld   a,$19
49b3: cd e2 8a     call $8AE2
49b6: 22 08 3a     ld   ($3A08),hl
49b9: 3a 05 3a     ld   a,($3A05)
49bc: 11 08 00     ld   de,$0008
49bf: cd e2 8a     call $8AE2
49c2: 22 0a 3a     ld   ($3A0A),hl
49c5: eb           ex   de,hl
49c6: 3e 02        ld   a,$02
49c8: cd e2 8a     call $8AE2
49cb: 22 0c 3a     ld   ($3A0C),hl
49ce: 3a 05 3a     ld   a,($3A05)
49d1: 11 18 00     ld   de,$0018
49d4: cd e2 8a     call $8AE2
49d7: 22 0e 3a     ld   ($3A0E),hl
49da: 3e 00        ld   a,$00
49dc: 21 ac 50     ld   hl,$50AC
49df: f5           push af
49e0: e5           push hl
49e1: ed 5b 93 4f  ld   de,($4F93)
49e5: 16 00        ld   d,$00
49e7: cd e2 8a     call $8AE2
49ea: eb           ex   de,hl
49eb: e1           pop  hl
49ec: f1           pop  af
49ed: 73           ld   (hl),e
49ee: 23           inc  hl
49ef: 72           ld   (hl),d
49f0: 23           inc  hl
49f1: 3c           inc  a
49f2: fe 19        cp   $19
49f4: c2 df 49     jp   nz,$49DF
49f7: 2b           dec  hl
49f8: 2b           dec  hl
49f9: 34           inc  (hl)
49fa: 34           inc  (hl)
49fb: 3e 08        ld   a,$08
49fd: 21 88 4e     ld   hl,$4E88
4a00: f5           push af
4a01: e5           push hl
4a02: ed 5b 93 4f  ld   de,($4F93)
4a06: 16 00        ld   d,$00
4a08: cd e2 8a     call $8AE2
4a0b: ed 5b 93 4f  ld   de,($4F93)
4a0f: cb 3b        srl  e
4a11: 16 00        ld   d,$00
4a13: af           xor  a
4a14: ed 52        sbc  hl,de
4a16: eb           ex   de,hl
4a17: e1           pop  hl
4a18: f1           pop  af
4a19: 73           ld   (hl),e
4a1a: 23           inc  hl
4a1b: 72           ld   (hl),d
4a1c: 23           inc  hl
4a1d: c6 08        add  a,$08
4a1f: fe d0        cp   $D0
4a21: c2 00 4a     jp   nz,$4A00
4a24: 3a 93 4f     ld   a,($4F93)
4a27: 5f           ld   e,a
4a28: 16 00        ld   d,$00
4a2a: 3e c8        ld   a,$C8
4a2c: cd e2 8a     call $8AE2
4a2f: 22 b0 4f     ld   ($4FB0),hl
4a32: 22 ac 4f     ld   ($4FAC),hl
4a35: 22 b2 4f     ld   ($4FB2),hl
4a38: 3a 8e 4f     ld   a,($4F8E)
4a3b: b7           or   a
4a3c: 28 03        jr   z,$4A41
4a3e: 22 ae 4f     ld   ($4FAE),hl
4a41: db 38        in   a,($38)
4a43: e6 08        and  $08
4a45: 20 fa        jr   nz,$4A41
4a47: 3e 02        ld   a,$02
4a49: d3 2d        out  ($2D),a
4a4b: 3a 8e 4f     ld   a,($4F8E)
4a4e: b7           or   a
4a4f: ca 61 4a     jp   z,$4A61
4a52: 3a c4 4f     ld   a,($4FC4)
4a55: b7           or   a
4a56: 28 03        jr   z,$4A5B
4a58: cd a0 46     call $46A0
4a5b: cd 44 46     call $4644
4a5e: c3 75 4a     jp   $4A75
4a61: 3a f6 54     ld   a,($54F6)
4a64: fe 02        cp   $02
4a66: cc bd 4a     call z,$4ABD
4a69: db 38        in   a,($38)
4a6b: e6 20        and  $20
4a6d: 28 fa        jr   z,$4A69
4a6f: 21 7b 4f     ld   hl,$4F7B
4a72: cd 3f 4e     call $4E3F
4a75: cd bb 4d     call $4DBB
4a78: 3a f6 54     ld   a,($54F6)
4a7b: fe 02        cp   $02
4a7d: 28 1e        jr   z,$4A9D
4a7f: 11 00 20     ld   de,$2000
4a82: cd f5 08     call $08F5
4a85: 3e 70        ld   a,$70
4a87: d3 03        out  ($03),a
4a89: 3e 70        ld   a,$70
4a8b: d3 01        out  ($01),a
4a8d: af           xor  a
4a8e: 32 be 4f     ld   ($4FBE),a
4a91: d3 01        out  ($01),a
4a93: 3e 12        ld   a,$12
4a95: d3 18        out  ($18),a
4a97: 3e 20        ld   a,$20
4a99: d3 08        out  ($08),a
4a9b: d3 0c        out  ($0C),a
4a9d: 3e 0d        ld   a,$0D
4a9f: cd 66 4e     call $4E66
4aa2: f1           pop  af
4aa3: 32 54 12     ld   ($1254),a
4aa6: c9           ret
4aa7: af           xor  a
4aa8: 32 e8 4e     ld   ($4EE8),a
4aab: 32 fe 4e     ld   ($4EFE),a
4aae: 32 14 4f     ld   ($4F14),a
4ab1: 32 25 4f     ld   ($4F25),a
4ab4: 32 c5 4f     ld   ($4FC5),a
4ab7: 32 49 4f     ld   ($4F49),a
4aba: c3 76 49     jp   $4976
4abd: f5           push af
4abe: 2a aa 4f     ld   hl,($4FAA)
4ac1: 22 7e 4f     ld   ($4F7E),hl
4ac4: ed 5b 08 3a  ld   de,($3A08)
4ac8: ed 53 ae 4f  ld   ($4FAE),de
4acc: 19           add  hl,de
4acd: 22 ac 4f     ld   ($4FAC),hl
4ad0: 22 82 4f     ld   ($4F82),hl
4ad3: af           xor  a
4ad4: 32 80 4f     ld   ($4F80),a
4ad7: 32 84 4f     ld   ($4F84),a
4ada: 3a c5 4f     ld   a,($4FC5)
4add: 32 85 4f     ld   ($4F85),a
4ae0: 3e 19        ld   a,$19
4ae2: 21 c5 4f     ld   hl,$4FC5
4ae5: b6           or   (hl)
4ae6: 32 81 4f     ld   ($4F81),a
4ae9: 3e 02        ld   a,$02
4aeb: 32 88 4f     ld   ($4F88),a
4aee: f1           pop  af
4aef: c9           ret
4af0: 3a f6 54     ld   a,($54F6)
4af3: fe 01        cp   $01
4af5: 20 32        jr   nz,$4B29
4af7: 3e ff        ld   a,$FF
4af9: d3 01        out  ($01),a
4afb: af           xor  a
4afc: d3 01        out  ($01),a
4afe: 3a 54 12     ld   a,($1254)
4b01: b7           or   a
4b02: 20 25        jr   nz,$4B29
4b04: 3a bd 4f     ld   a,($4FBD)
4b07: b7           or   a
4b08: 28 1f        jr   z,$4B29
4b0a: 21 be 4f     ld   hl,$4FBE
4b0d: 7e           ld   a,(hl)
4b0e: 2f           cpl
4b0f: b7           or   a
4b10: 20 07        jr   nz,$4B19
4b12: 3a 27 27     ld   a,($2727)
4b15: b7           or   a
4b16: 28 11        jr   z,$4B29
4b18: af           xor  a
4b19: 77           ld   (hl),a
4b1a: 21 c5 4e     ld   hl,$4EC5
4b1d: cd 3f 4e     call $4E3F
4b20: cd 14 4e     call $4E14
4b23: 21 c5 4e     ld   hl,$4EC5
4b26: cd 3f 4e     call $4E3F
4b29: 3e 20        ld   a,$20
4b2b: d3 08        out  ($08),a
4b2d: d3 0c        out  ($0C),a
4b2f: c9           ret
4b30: 3a be 4f     ld   a,($4FBE)
4b33: b7           or   a
4b34: 28 0d        jr   z,$4B43
4b36: af           xor  a
4b37: 32 be 4f     ld   ($4FBE),a
4b3a: cd 0e 4e     call $4E0E
4b3d: cd 14 4e     call $4E14
4b40: cd 0e 4e     call $4E0E
4b43: c9           ret
4b44: 32 f8 4b     ld   ($4BF8),a
4b47: ed 43 f9 4b  ld   ($4BF9),bc
4b4b: f5           push af
4b4c: 3e ff        ld   a,$FF
4b4e: 32 55 12     ld   ($1255),a
4b51: 32 54 12     ld   ($1254),a
4b54: f1           pop  af
4b55: e5           push hl
4b56: b7           or   a
4b57: 3e ff        ld   a,$FF
4b59: 20 01        jr   nz,$4B5C
4b5b: af           xor  a
4b5c: 32 f7 4b     ld   ($4BF7),a
4b5f: 3a f1 4b     ld   a,($4BF1)
4b62: b7           or   a
4b63: 20 17        jr   nz,$4B7C
4b65: 3e ff        ld   a,$FF
4b67: 32 f1 4b     ld   ($4BF1),a
4b6a: 2a 94 4f     ld   hl,($4F94)
4b6d: 22 f2 4b     ld   ($4BF2),hl
4b70: 3a f7 4b     ld   a,($4BF7)
4b73: b7           or   a
4b74: 21 80 b1     ld   hl,$B180
4b77: c4 fb 4b     call nz,$4BFB
4b7a: 18 15        jr   $4B91
4b7c: 3e ff        ld   a,$FF
4b7e: 32 f4 4b     ld   ($4BF4),a
4b81: 2a 94 4f     ld   hl,($4F94)
4b84: 22 f5 4b     ld   ($4BF5),hl
4b87: 3a f7 4b     ld   a,($4BF7)
4b8a: b7           or   a
4b8b: 21 80 b6     ld   hl,$B680
4b8e: c4 fb 4b     call nz,$4BFB
4b91: 3a f8 4b     ld   a,($4BF8)
4b94: cb 67        bit  4,a
4b96: 20 09        jr   nz,$4BA1
4b98: 21 00 18     ld   hl,$1800
4b9b: cd b8 4d     call $4DB8
4b9e: cd 09 47     call $4709
4ba1: 21 00 18     ld   hl,$1800
4ba4: cd b8 4d     call $4DB8
4ba7: 3a f8 4b     ld   a,($4BF8)
4baa: cb 4f        bit  1,a
4bac: 28 14        jr   z,$4BC2
4bae: cd 97 3f     call $3F97
4bb1: ed 4b f9 4b  ld   bc,($4BF9)
4bb5: 0c           inc  c
4bb6: ed 43 f9 4b  ld   ($4BF9),bc
4bba: 3a f8 4b     ld   a,($4BF8)
4bbd: cb 5f        bit  3,a
4bbf: c4 a6 18     call nz,$18A6
4bc2: 21 00 18     ld   hl,$1800
4bc5: ed 4b f9 4b  ld   bc,($4BF9)
4bc9: 06 00        ld   b,$00
4bcb: 09           add  hl,bc
4bcc: cd b8 4d     call $4DB8
4bcf: 3a f8 4b     ld   a,($4BF8)
4bd2: cb 57        bit  2,a
4bd4: 20 03        jr   nz,$4BD9
4bd6: cd 86 3f     call $3F86
4bd9: e1           pop  hl
4bda: 7e           ld   a,(hl)
4bdb: b7           or   a
4bdc: 28 08        jr   z,$4BE6
4bde: 23           inc  hl
4bdf: e5           push hl
4be0: 4f           ld   c,a
4be1: cd 4b 3a     call $3A4B
4be4: 18 f3        jr   $4BD9
4be6: 21 80 b1     ld   hl,$B180
4be9: 22 bb 4f     ld   ($4FBB),hl
4bec: af           xor  a
4bed: 32 54 12     ld   ($1254),a
4bf0: c9           ret
4bf1: 00           nop
4bf2: 00           nop
4bf3: 00           nop
4bf4: 00           nop
4bf5: 00           nop
4bf6: 00           nop
4bf7: 00           nop
4bf8: 00           nop
4bf9: 00           nop
4bfa: 00           nop
4bfb: 22 bb 4f     ld   ($4FBB),hl
4bfe: 21 00 18     ld   hl,$1800
4c01: 01 00 50     ld   bc,$5000
4c04: ed 5b bb 4f  ld   de,($4FBB)
4c08: c5           push bc
4c09: e5           push hl
4c0a: d5           push de
4c0b: cd a4 4c     call $4CA4
4c0e: d1           pop  de
4c0f: 01 10 00     ld   bc,$0010
4c12: ed b0        ldir
4c14: e1           pop  hl
4c15: 2c           inc  l
4c16: c1           pop  bc
4c17: 10 ef        djnz $4C08
4c19: c9           ret
4c1a: f5           push af
4c1b: 3e ff        ld   a,$FF
4c1d: 32 54 12     ld   ($1254),a
4c20: f1           pop  af
4c21: 21 f7 4b     ld   hl,$4BF7
4c24: a6           and  (hl)
4c25: 20 0c        jr   nz,$4C33
4c27: 21 00 18     ld   hl,$1800
4c2a: cd b8 4d     call $4DB8
4c2d: cd 09 47     call $4709
4c30: c3 52 4c     jp   $4C52
4c33: 3a f4 4b     ld   a,($4BF4)
4c36: b7           or   a
4c37: 28 0f        jr   z,$4C48
4c39: af           xor  a
4c3a: 32 f4 4b     ld   ($4BF4),a
4c3d: 21 80 b6     ld   hl,$B680
4c40: cd 6f 4c     call $4C6F
4c43: 2a f5 4b     ld   hl,($4BF5)
4c46: 18 16        jr   $4C5E
4c48: af           xor  a
4c49: 32 f1 4b     ld   ($4BF1),a
4c4c: 21 80 b1     ld   hl,$B180
4c4f: cd 6f 4c     call $4C6F
4c52: af           xor  a
4c53: 32 55 12     ld   ($1255),a
4c56: 3e ff        ld   a,$FF
4c58: 32 59 12     ld   ($1259),a
4c5b: 2a f2 4b     ld   hl,($4BF2)
4c5e: cd b8 4d     call $4DB8
4c61: 21 80 b1     ld   hl,$B180
4c64: 22 bb 4f     ld   ($4FBB),hl
4c67: af           xor  a
4c68: 32 54 12     ld   ($1254),a
4c6b: 32 be 4f     ld   ($4FBE),a
4c6e: c9           ret
4c6f: 22 bb 4f     ld   ($4FBB),hl
4c72: 21 00 18     ld   hl,$1800
4c75: 01 00 50     ld   bc,$5000
4c78: ed 5b bb 4f  ld   de,($4FBB)
4c7c: c5           push bc
4c7d: e5           push hl
4c7e: d5           push de
4c7f: cd be 4d     call $4DBE
4c82: e1           pop  hl
4c83: 11 19 4f     ld   de,$4F19
4c86: 01 08 00     ld   bc,$0008
4c89: ed b0        ldir
4c8b: 11 08 4f     ld   de,$4F08
4c8e: 01 08 00     ld   bc,$0008
4c91: ed b0        ldir
4c93: eb           ex   de,hl
4c94: d5           push de
4c95: 21 05 4f     ld   hl,$4F05
4c98: cd 3f 4e     call $4E3F
4c9b: d1           pop  de
4c9c: e1           pop  hl
4c9d: 2c           inc  l
4c9e: c1           pop  bc
4c9f: 10 db        djnz $4C7C
4ca1: c9           ret
4ca2: 00           nop
4ca3: 00           nop
4ca4: 3a 54 12     ld   a,($1254)
4ca7: f5           push af
4ca8: 3e ff        ld   a,$FF
4caa: 32 54 12     ld   ($1254),a
4cad: e5           push hl
4cae: cd 30 4b     call $4B30
4cb1: e1           pop  hl
4cb2: 22 3a 4d     ld   ($4D3A),hl
4cb5: e5           push hl
4cb6: e5           push hl
4cb7: cd be 4d     call $4DBE
4cba: e1           pop  hl
4cbb: cb 3d        srl  l
4cbd: 3e b8        ld   a,$B8
4cbf: 38 02        jr   c,$4CC3
4cc1: 3e b0        ld   a,$B0
4cc3: 32 4a 4f     ld   ($4F4A),a
4cc6: 21 2a 4d     ld   hl,$4D2A
4cc9: 06 10        ld   b,$10
4ccb: af           xor  a
4ccc: 77           ld   (hl),a
4ccd: 23           inc  hl
4cce: 10 fc        djnz $4CCC
4cd0: 3a c4 4f     ld   a,($4FC4)
4cd3: b7           or   a
4cd4: ca 0a 4d     jp   z,$4D0A
4cd7: 3a c4 4f     ld   a,($4FC4)
4cda: e6 01        and  $01
4cdc: cd 10 4d     call $4D10
4cdf: 2a 3a 4d     ld   hl,($4D3A)
4ce2: cd be 4d     call $4DBE
4ce5: 3a c4 4f     ld   a,($4FC4)
4ce8: e6 02        and  $02
4cea: cd 10 4d     call $4D10
4ced: 2a 3a 4d     ld   hl,($4D3A)
4cf0: cd be 4d     call $4DBE
4cf3: 3a c4 4f     ld   a,($4FC4)
4cf6: e6 04        and  $04
4cf8: cd 10 4d     call $4D10
4cfb: e1           pop  hl
4cfc: cd 2a 49     call $492A
4cff: 4f           ld   c,a
4d00: 06 00        ld   b,$00
4d02: 21 2a 4d     ld   hl,$4D2A
4d05: f1           pop  af
4d06: 32 54 12     ld   ($1254),a
4d09: c9           ret
4d0a: cd 12 4d     call $4D12
4d0d: c3 fb 4c     jp   $4CFB
4d10: d3 2d        out  ($2D),a
4d12: 21 40 4f     ld   hl,$4F40
4d15: cd 49 4e     call $4E49
4d18: 21 39 4d     ld   hl,$4D39
4d1b: 06 10        ld   b,$10
4d1d: c5           push bc
4d1e: e5           push hl
4d1f: cd 7e 4e     call $4E7E
4d22: e1           pop  hl
4d23: b6           or   (hl)
4d24: 77           ld   (hl),a
4d25: 2b           dec  hl
4d26: c1           pop  bc
4d27: 10 f4        djnz $4D1D
4d29: c9           ret
4d2a: 00           nop
4d2b: 00           nop
4d2c: 00           nop
4d2d: 00           nop
4d2e: 00           nop
4d2f: 00           nop
4d30: 00           nop
4d31: 00           nop
4d32: 00           nop
4d33: 00           nop
4d34: 00           nop
4d35: 00           nop
4d36: 00           nop
4d37: 00           nop
4d38: 00           nop
4d39: 00           nop
4d3a: 00           nop
4d3b: 00           nop
4d3c: 16 00        ld   d,$00
4d3e: 21 69 4d     ld   hl,$4D69
4d41: f5           push af
4d42: e6 0f        and  $0F
4d44: 5f           ld   e,a
4d45: 19           add  hl,de
4d46: 4e           ld   c,(hl)
4d47: f1           pop  af
4d48: e6 f0        and  $F0
4d4a: 21 79 4d     ld   hl,$4D79
4d4d: 77           ld   (hl),a
4d4e: af           xor  a
4d4f: ed 6f        rld  (hl)
4d51: 5f           ld   e,a
4d52: 21 59 4d     ld   hl,$4D59
4d55: 19           add  hl,de
4d56: 7e           ld   a,(hl)
4d57: b1           or   c
4d58: c9           ret
4d59: 00           nop
4d5a: 08           ex   af,af'
4d5b: 04           inc  b
4d5c: 0c           inc  c
4d5d: 02           ld   (bc),a
4d5e: 0a           ld   a,(bc)
4d5f: 06 0e        ld   b,$0E
4d61: 01 09 05     ld   bc,$0509
4d64: 0d           dec  c
4d65: 03           inc  bc
4d66: 0b           dec  bc
4d67: 07           rlca
4d68: 0f           rrca
4d69: 00           nop
4d6a: 80           add  a,b
4d6b: 40           ld   b,b
4d6c: c0           ret  nz
4d6d: 20 a0        jr   nz,$4D0F
4d6f: 60           ld   h,b
4d70: e0           ret  po
4d71: 10 90        djnz $4D03
4d73: 50           ld   d,b
4d74: d0           ret  nc
4d75: 30 b0        jr   nc,$4D27
4d77: 70           ld   (hl),b
4d78: f0           ret  p
4d79: 00           nop
4d7a: 2a 94 4f     ld   hl,($4F94)
4d7d: c9           ret
4d7e: 3a 95 4f     ld   a,($4F95)
4d81: c6 20        add  a,$20
4d83: 47           ld   b,a
4d84: 3a 94 4f     ld   a,($4F94)
4d87: c6 20        add  a,$20
4d89: 4f           ld   c,a
4d8a: c5           push bc
4d8b: cd 6a 16     call $166A
4d8e: c1           pop  bc
4d8f: 78           ld   a,b
4d90: c5           push bc
4d91: cd 81 16     call $1681
4d94: c1           pop  bc
4d95: 79           ld   a,c
4d96: cd 81 16     call $1681
4d99: 3e 0d        ld   a,$0D
4d9b: cd 81 16     call $1681
4d9e: c9           ret
4d9f: 3a 54 12     ld   a,($1254)
4da2: f5           push af
4da3: 3e ff        ld   a,$FF
4da5: 32 54 12     ld   ($1254),a
4da8: e5           push hl
4da9: cd 30 4b     call $4B30
4dac: e1           pop  hl
4dad: cd b8 4d     call $4DB8
4db0: f1           pop  af
4db1: 32 54 12     ld   ($1254),a
4db4: c9           ret
4db5: 21 00 00     ld   hl,$0000
4db8: 22 94 4f     ld   ($4F94),hl
4dbb: 2a 94 4f     ld   hl,($4F94)
4dbe: af           xor  a
4dbf: 32 b6 4f     ld   ($4FB6),a
4dc2: 11 88 4e     ld   de,$4E88
4dc5: 7d           ld   a,l
4dc6: cb 3f        srl  a
4dc8: 32 98 4f     ld   ($4F98),a
4dcb: 3e 80        ld   a,$80
4dcd: 38 02        jr   c,$4DD1
4dcf: 3e 00        ld   a,$00
4dd1: f5           push af
4dd2: 3a 98 4f     ld   a,($4F98)
4dd5: 6c           ld   l,h
4dd6: 26 00        ld   h,$00
4dd8: 29           add  hl,hl
4dd9: 19           add  hl,de
4dda: 86           add  a,(hl)
4ddb: 5f           ld   e,a
4ddc: 23           inc  hl
4ddd: 7e           ld   a,(hl)
4dde: ce 00        adc  a,$00
4de0: 57           ld   d,a
4de1: af           xor  a
4de2: 4b           ld   c,e
4de3: 42           ld   b,d
4de4: 2a ae 4f     ld   hl,($4FAE)
4de7: eb           ex   de,hl
4de8: ed 52        sbc  hl,de
4dea: 30 06        jr   nc,$4DF2
4dec: 2a 7e 4f     ld   hl,($4F7E)
4def: 09           add  hl,bc
4df0: 18 0a        jr   $4DFC
4df2: ed 5b aa 4f  ld   de,($4FAA)
4df6: 19           add  hl,de
4df7: 3e 01        ld   a,$01
4df9: 32 b6 4f     ld   ($4FB6),a
4dfc: f1           pop  af
4dfd: 32 ca 4e     ld   ($4ECA),a
4e00: 3a 59 89     ld   a,($8959)
4e03: b7           or   a
4e04: 28 05        jr   z,$4E0B
4e06: ed 5b 62 89  ld   de,($8962)
4e0a: 19           add  hl,de
4e0b: 22 c8 4e     ld   ($4EC8),hl
4e0e: 21 c5 4e     ld   hl,$4EC5
4e11: c3 3f 4e     jp   $4E3F
4e14: 01 08 00     ld   bc,$0008
4e17: 11 08 4f     ld   de,$4F08
4e1a: 21 6b 4f     ld   hl,$4F6B
4e1d: ed b0        ldir
4e1f: 11 19 4f     ld   de,$4F19
4e22: 01 08 00     ld   bc,$0008
4e25: ed b0        ldir
4e27: 3e 20        ld   a,$20
4e29: f6 01        or   $01
4e2b: cd 66 4e     call $4E66
4e2e: 21 05 4f     ld   hl,$4F05
4e31: cd 3f 4e     call $4E3F
4e34: 3e 20        ld   a,$20
4e36: cd 66 4e     call $4E66
4e39: 3e ff        ld   a,$FF
4e3b: 32 bd 4f     ld   ($4FBD),a
4e3e: c9           ret
4e3f: db 38        in   a,($38)
4e41: e6 08        and  $08
4e43: 20 fa        jr   nz,$4E3F
4e45: 3e 02        ld   a,$02
4e47: d3 2d        out  ($2D),a
4e49: 46           ld   b,(hl)
4e4a: 23           inc  hl
4e4b: c5           push bc
4e4c: 7e           ld   a,(hl)
4e4d: cd 66 4e     call $4E66
4e50: 23           inc  hl
4e51: 3e 00        ld   a,$00
4e53: be           cp   (hl)
4e54: 28 0d        jr   z,$4E63
4e56: 46           ld   b,(hl)
4e57: 0e 38        ld   c,$38
4e59: 23           inc  hl
4e5a: cd 76 4e     call $4E76
4e5d: ed b3        otir
4e5f: c1           pop  bc
4e60: 10 e9        djnz $4E4B
4e62: c9           ret
4e63: 23           inc  hl
4e64: 18 f9        jr   $4E5F
4e66: cd 6c 4e     call $4E6C
4e69: d3 39        out  ($39),a
4e6b: c9           ret
4e6c: f5           push af
4e6d: db 38        in   a,($38)
4e6f: e6 02        and  $02
4e71: c2 6d 4e     jp   nz,$4E6D
4e74: f1           pop  af
4e75: c9           ret
4e76: db 38        in   a,($38)
4e78: e6 04        and  $04
4e7a: ca 76 4e     jp   z,$4E76
4e7d: c9           ret
4e7e: db 38        in   a,($38)
4e80: e6 01        and  $01
4e82: ca 7e 4e     jp   z,$4E7E
4e85: db 39        in   a,($39)
4e87: c9           ret
4e88: 58           ld   e,b
4e89: 02           ld   (bc),a
4e8a: d8           ret  c
4e8b: 04           inc  b
4e8c: 58           ld   e,b
4e8d: 07           rlca
4e8e: d8           ret  c
4e8f: 09           add  hl,bc
4e90: 58           ld   e,b
4e91: 0c           inc  c
4e92: d8           ret  c
4e93: 0e 58        ld   c,$58
4e95: 11 d8 13     ld   de,$13D8
4e98: 58           ld   e,b
4e99: 16 d8        ld   d,$D8
4e9b: 18 58        jr   $4EF5
4e9d: 1b           dec  de
4e9e: d8           ret  c
4e9f: 1d           dec  e
4ea0: 58           ld   e,b
4ea1: 20 d8        jr   nz,$4E7B
4ea3: 22 58 25     ld   ($2558),hl
4ea6: d8           ret  c
4ea7: 27           daa
4ea8: 58           ld   e,b
4ea9: 2a d8 2c     ld   hl,($2CD8)
4eac: 58           ld   e,b
4ead: 2f           cpl
4eae: d8           ret  c
4eaf: 31 58 34     ld   sp,$3458
4eb2: d8           ret  c
4eb3: 36 58        ld   (hl),$58
4eb5: 39           add  hl,sp
4eb6: d8           ret  c
4eb7: 3b           dec  sp
4eb8: 58           ld   e,b
4eb9: 3e 03        ld   a,$03
4ebb: 4b           ld   c,e
4ebc: 01 00 46     ld   bc,$4600
4ebf: 02           ld   (bc),a
4ec0: 00           nop
4ec1: 00           nop
4ec2: 47           ld   b,a
4ec3: 01 50 01     ld   bc,$0150
4ec6: 49           ld   c,c
4ec7: 03           inc  bc
4ec8: 00           nop
4ec9: 00           nop
4eca: 00           nop
4ecb: 03           inc  bc
4ecc: 4c           ld   c,h
4ecd: 03           inc  bc
4ece: 02           ld   (bc),a
4ecf: 00           nop
4ed0: 00           nop
4ed1: 4a           ld   c,d
4ed2: 02           ld   (bc),a
4ed3: ff           rst  $38
4ed4: ff           rst  $38
4ed5: 20 02        jr   nz,$4ED9
4ed7: 00           nop
4ed8: 00           nop
4ed9: 03           inc  bc
4eda: 78           ld   a,b
4edb: 08           ex   af,af'
4edc: 00           nop
4edd: 00           nop
4ede: 00           nop
4edf: 00           nop
4ee0: 00           nop
4ee1: 00           nop
4ee2: 00           nop
4ee3: 00           nop
4ee4: 4c           ld   c,h
4ee5: 07           rlca
4ee6: 12           ld   (de),a
4ee7: 0f           rrca
4ee8: 40           ld   b,b
4ee9: 00           nop
4eea: 00           nop
4eeb: 00           nop
4eec: 00           nop
4eed: 68           ld   l,b
4eee: 00           nop
4eef: 03           inc  bc
4ef0: 78           ld   a,b
4ef1: 08           ex   af,af'
4ef2: 00           nop
4ef3: 00           nop
4ef4: 00           nop
4ef5: 00           nop
4ef6: 00           nop
4ef7: 00           nop
4ef8: ff           rst  $38
4ef9: 00           nop
4efa: 4c           ld   c,h
4efb: 07           rlca
4efc: 12           ld   (de),a
4efd: 07           rlca
4efe: 40           ld   b,b
4eff: 00           nop
4f00: 00           nop
4f01: 00           nop
4f02: 00           nop
4f03: 68           ld   l,b
4f04: 00           nop
4f05: 06 78        ld   b,$78
4f07: 08           ex   af,af'
4f08: 00           nop
4f09: 00           nop
4f0a: 00           nop
4f0b: 00           nop
4f0c: 00           nop
4f0d: 00           nop
4f0e: 00           nop
4f0f: 00           nop
4f10: 4c           ld   c,h
4f11: 03           inc  bc
4f12: 12           ld   (de),a
4f13: 07           rlca
4f14: 40           ld   b,b
4f15: 68           ld   l,b
4f16: 00           nop
4f17: 78           ld   a,b
4f18: 08           ex   af,af'
4f19: 00           nop
4f1a: 00           nop
4f1b: 00           nop
4f1c: 00           nop
4f1d: 00           nop
4f1e: 00           nop
4f1f: 00           nop
4f20: 00           nop
4f21: 4c           ld   c,h
4f22: 03           inc  bc
4f23: 12           ld   (de),a
4f24: 07           rlca
4f25: 40           ld   b,b
4f26: 68           ld   l,b
4f27: 00           nop
4f28: 03           inc  bc
4f29: 4a           ld   c,d
4f2a: 02           ld   (bc),a
4f2b: ff           rst  $38
4f2c: ff           rst  $38
4f2d: 4c           ld   c,h
4f2e: 03           inc  bc
4f2f: 06 00        ld   b,$00
4f31: 00           nop
4f32: a0           and  b
4f33: 00           nop
4f34: 03           inc  bc
4f35: 4a           ld   c,d
4f36: 02           ld   (bc),a
4f37: ff           rst  $38
4f38: ff           rst  $38
4f39: 4c           ld   c,h
4f3a: 03           inc  bc
4f3b: 06 00        ld   b,$00
4f3d: 00           nop
4f3e: 20 00        jr   nz,$4F40
4f40: 03           inc  bc
4f41: 4a           ld   c,d
4f42: 02           ld   (bc),a
4f43: ff           rst  $38
4f44: ff           rst  $38
4f45: 4c           ld   c,h
4f46: 03           inc  bc
4f47: 04           inc  b
4f48: 10 40        djnz $4F8A
4f4a: 00           nop
4f4b: 00           nop
4f4c: 02           ld   (bc),a
4f4d: 4c           ld   c,h
4f4e: 03           inc  bc
4f4f: 04           inc  b
4f50: 00           nop
4f51: 00           nop
4f52: 00           nop
4f53: 00           nop
4f54: 04           inc  b
4f55: 78           ld   a,b
4f56: 02           ld   (bc),a
4f57: ff           rst  $38
4f58: ff           rst  $38
4f59: 49           ld   c,c
4f5a: 03           inc  bc
4f5b: 00           nop
4f5c: 00           nop
4f5d: 00           nop
4f5e: 4c           ld   c,h
4f5f: 01 02 6c     ld   bc,$6C02
4f62: 00           nop
4f63: 00           nop
4f64: 00           nop
4f65: 00           nop
4f66: 00           nop
4f67: 00           nop
4f68: 00           nop
4f69: 00           nop
4f6a: 00           nop
4f6b: ff           rst  $38
4f6c: ff           rst  $38
4f6d: ff           rst  $38
4f6e: ff           rst  $38
4f6f: ff           rst  $38
4f70: ff           rst  $38
4f71: ff           rst  $38
4f72: ff           rst  $38
4f73: ff           rst  $38
4f74: ff           rst  $38
4f75: ff           rst  $38
4f76: ff           rst  $38
4f77: ff           rst  $38
4f78: ff           rst  $38
4f79: ff           rst  $38
4f7a: ff           rst  $38
4f7b: 02           ld   (bc),a
4f7c: 70           ld   (hl),b
4f7d: 08           ex   af,af'
4f7e: 00           nop
4f7f: 00           nop
4f80: 00           nop
4f81: 00           nop
4f82: 00           nop
4f83: 00           nop
4f84: 00           nop
4f85: 00           nop
4f86: 4c           ld   c,h
4f87: 01 02 00     ld   bc,$0002
4f8a: 00           nop
4f8b: 00           nop
4f8c: 00           nop
4f8d: 00           nop
4f8e: 00           nop
4f8f: 00           nop
4f90: 20 11        jr   nz,$4FA3
4f92: 55           ld   d,l
4f93: 50           ld   d,b
4f94: 00           nop
4f95: 00           nop
4f96: 18 10        jr   $4FA8
4f98: 00           nop
4f99: 00           nop
4f9a: 00           nop
4f9b: 00           nop
4f9c: 00           nop
4f9d: 00           nop
4f9e: 00           nop
4f9f: 00           nop
4fa0: 00           nop
4fa1: 04           inc  b
4fa2: 00           nop
4fa3: 00           nop
4fa4: 00           nop
4fa5: 00           nop
4fa6: 00           nop
4fa7: 00           nop
4fa8: 00           nop
4fa9: 00           nop
4faa: 00           nop
4fab: 00           nop
4fac: 80           add  a,b
4fad: 3e 80        ld   a,$80
4faf: 3e 80        ld   a,$80
4fb1: 3e 80        ld   a,$80
4fb3: 3e 90        ld   a,$90
4fb5: 01 00 00     ld   bc,$0000
4fb8: 00           nop
4fb9: 44           ld   b,h
4fba: 8f           adc  a,a
4fbb: 00           nop
4fbc: 00           nop
4fbd: ff           rst  $38
4fbe: 00           nop
4fbf: 00           nop
4fc0: 00           nop
4fc1: 00           nop
4fc2: 00           nop
4fc3: 01 00 00     ld   bc,$0000
4fc6: 00           nop
4fc7: 48           ld   c,b
4fc8: 00           nop
4fc9: 00           nop
4fca: 00           nop
4fcb: 00           nop
4fcc: 00           nop
4fcd: 00           nop
4fce: 00           nop
4fcf: 00           nop
4fd0: 00           nop
4fd1: 00           nop
4fd2: 00           nop
4fd3: 00           nop
4fd4: 00           nop
4fd5: 00           nop
4fd6: 00           nop
4fd7: 00           nop
4fd8: 00           nop
4fd9: 00           nop
4fda: 00           nop
4fdb: 00           nop
4fdc: 00           nop
4fdd: 00           nop
4fde: 00           nop
4fdf: 00           nop
4fe0: 00           nop
4fe1: 00           nop
4fe2: 00           nop
4fe3: 00           nop
4fe4: 00           nop
4fe5: 00           nop
4fe6: 00           nop
4fe7: 00           nop
4fe8: 00           nop
4fe9: 00           nop
4fea: 00           nop
4feb: 00           nop
4fec: 00           nop
4fed: 00           nop
4fee: 00           nop
4fef: 00           nop
4ff0: 00           nop
4ff1: 00           nop
4ff2: 00           nop
4ff3: 00           nop
4ff4: 00           nop
4ff5: 00           nop
4ff6: 00           nop
4ff7: 00           nop
4ff8: 00           nop
4ff9: 00           nop
4ffa: 00           nop
4ffb: 00           nop
4ffc: 00           nop
4ffd: 00           nop
4ffe: 00           nop
4fff: 00           nop
5000: 00           nop
5001: 00           nop
5002: 00           nop
5003: 00           nop
5004: 00           nop
5005: 00           nop
5006: 00           nop
5007: 00           nop
5008: f7           rst  $30
5009: 4f           ld   c,a
500a: 00           nop
500b: 00           nop
500c: 00           nop
500d: 00           nop
500e: 00           nop
500f: 00           nop
5010: 00           nop
5011: 00           nop
5012: 00           nop
5013: 00           nop
5014: 00           nop
5015: 00           nop
5016: 00           nop
5017: 00           nop
5018: 00           nop
5019: 00           nop
501a: 00           nop
501b: 00           nop
501c: 00           nop
501d: 00           nop
501e: 00           nop
501f: 00           nop
5020: 00           nop
5021: 00           nop
5022: 00           nop
5023: 00           nop
5024: 00           nop
5025: 00           nop
5026: 00           nop
5027: 00           nop
5028: 00           nop
5029: 00           nop
502a: 00           nop
502b: 00           nop
502c: 00           nop
502d: 00           nop
502e: 00           nop
502f: 00           nop
5030: 00           nop
5031: 00           nop
5032: 00           nop
5033: 00           nop
5034: 00           nop
5035: 00           nop
5036: 00           nop
5037: 00           nop
5038: 00           nop
5039: 00           nop
503a: 00           nop
503b: 00           nop
503c: 00           nop
503d: 00           nop
503e: 00           nop
503f: 00           nop
5040: 00           nop
5041: 00           nop
5042: 00           nop
5043: 00           nop
5044: 00           nop
5045: 00           nop
5046: 00           nop
5047: 00           nop
5048: 00           nop
5049: 00           nop
504a: 00           nop
504b: 00           nop
504c: 00           nop
504d: 00           nop
504e: 00           nop
504f: 00           nop
5050: 00           nop
5051: 00           nop
5052: 00           nop
5053: 00           nop
5054: 00           nop
5055: 00           nop
5056: 00           nop
5057: 00           nop
5058: 00           nop
5059: 00           nop
505a: 00           nop
505b: 00           nop
505c: 00           nop
505d: 00           nop
505e: 00           nop
505f: 00           nop
5060: 00           nop
5061: 00           nop
5062: 00           nop
5063: 00           nop
5064: 00           nop
5065: 00           nop
5066: 00           nop
5067: 00           nop
5068: 00           nop
5069: 00           nop
506a: 00           nop
506b: 00           nop
506c: 00           nop
506d: 00           nop
506e: 00           nop
506f: 00           nop
5070: 00           nop
5071: 00           nop
5072: 00           nop
5073: 00           nop
5074: 00           nop
5075: 00           nop
5076: 00           nop
5077: 00           nop
5078: 00           nop
5079: 00           nop
507a: 00           nop
507b: 00           nop
507c: 00           nop
507d: 00           nop
507e: 00           nop
507f: 00           nop
5080: 00           nop
5081: 00           nop
5082: 00           nop
5083: 00           nop
5084: 00           nop
5085: 00           nop
5086: 00           nop
5087: 00           nop
5088: 00           nop
5089: 00           nop
508a: 00           nop
508b: 00           nop
508c: 00           nop
508d: 00           nop
508e: 00           nop
508f: 00           nop
5090: 00           nop
5091: 00           nop
5092: 00           nop
5093: 00           nop
5094: 00           nop
5095: 00           nop
5096: 00           nop
5097: 00           nop
5098: 00           nop
5099: 00           nop
509a: 00           nop
509b: 00           nop
509c: 00           nop
509d: 00           nop
509e: 00           nop
509f: 00           nop
50a0: 00           nop
50a1: 00           nop
50a2: 00           nop
50a3: 00           nop
50a4: 00           nop
50a5: 00           nop
50a6: 00           nop
50a7: 00           nop
50a8: 00           nop
50a9: 00           nop
50aa: ff           rst  $38
50ab: ff           rst  $38
50ac: 00           nop
50ad: 00           nop
50ae: 50           ld   d,b
50af: 00           nop
50b0: a0           and  b
50b1: 00           nop
50b2: f0           ret  p
50b3: 00           nop
50b4: 40           ld   b,b
50b5: 01 90 01     ld   bc,$0190
50b8: e0           ret  po
50b9: 01 30 02     ld   bc,$0230
50bc: 80           add  a,b
50bd: 02           ld   (bc),a
50be: d0           ret  nc
50bf: 02           ld   (bc),a
50c0: 20 03        jr   nz,$50C5
50c2: 70           ld   (hl),b
50c3: 03           inc  bc
50c4: c0           ret  nz
50c5: 03           inc  bc
50c6: 10 04        djnz $50CC
50c8: 60           ld   h,b
50c9: 04           inc  b
50ca: b0           or   b
50cb: 04           inc  b
50cc: 00           nop
50cd: 05           dec  b
50ce: 50           ld   d,b
50cf: 05           dec  b
50d0: a0           and  b
50d1: 05           dec  b
50d2: f0           ret  p
50d3: 05           dec  b
50d4: 40           ld   b,b
50d5: 06 90        ld   b,$90
50d7: 06 e0        ld   b,$E0
50d9: 06 30        ld   b,$30
50db: 07           rlca
50dc: 82           add  a,d
50dd: 07           rlca
50de: ff           rst  $38
50df: ff           rst  $38
50e0: 00           nop
50e1: 00           nop
50e2: 00           nop
50e3: 00           nop
50e4: 00           nop
50e5: 00           nop
50e6: 00           nop
50e7: 00           nop
50e8: 00           nop
50e9: 00           nop
50ea: 00           nop
50eb: 00           nop
50ec: 00           nop
50ed: 00           nop
50ee: 00           nop
50ef: 00           nop
50f0: 00           nop
50f1: 00           nop
50f2: 00           nop
50f3: 00           nop
50f4: 00           nop
50f5: 00           nop
50f6: 00           nop
50f7: 00           nop
50f8: 00           nop
50f9: 00           nop
50fa: 00           nop
50fb: 00           nop
50fc: 00           nop
50fd: 00           nop
50fe: 00           nop
50ff: 00           nop
5100: 00           nop
5101: 00           nop
5102: 00           nop
5103: 00           nop
5104: 00           nop
5105: 00           nop
5106: 00           nop
5107: 00           nop
5108: 00           nop
5109: 00           nop
510a: 00           nop
510b: 00           nop
510c: 00           nop
510d: 00           nop
510e: 00           nop
510f: 00           nop
5110: 00           nop
5111: 00           nop
5112: 00           nop
5113: 00           nop
5114: 00           nop
5115: 00           nop
5116: 00           nop
5117: 00           nop
5118: 00           nop
5119: 00           nop
511a: 00           nop
511b: 00           nop
511c: 00           nop
511d: 00           nop
511e: 00           nop
511f: 00           nop
5120: 00           nop
5121: 00           nop
5122: 00           nop
5123: 00           nop
5124: 00           nop
5125: 00           nop
5126: 00           nop
5127: 00           nop
5128: 00           nop
5129: 00           nop
512a: 00           nop
512b: 00           nop
512c: 00           nop
512d: 00           nop
512e: 00           nop
512f: 00           nop
5130: 00           nop
5131: 00           nop
5132: 00           nop
5133: 00           nop
5134: 00           nop
5135: 00           nop
5136: 00           nop
5137: 00           nop
5138: 00           nop
5139: 00           nop
513a: 00           nop
513b: 00           nop
513c: 00           nop
513d: 00           nop
513e: 00           nop
513f: 00           nop
5140: 00           nop
5141: 00           nop
5142: 00           nop
5143: 00           nop
5144: 00           nop
5145: 00           nop
5146: 00           nop
5147: 00           nop
5148: 00           nop
5149: 00           nop
514a: 00           nop
514b: 00           nop
514c: 00           nop
514d: 00           nop
514e: 00           nop
514f: 00           nop
5150: 00           nop
5151: 00           nop
5152: 00           nop
5153: 00           nop
5154: 00           nop
5155: 00           nop
5156: 00           nop
5157: 00           nop
5158: 00           nop
5159: 00           nop
515a: 00           nop
515b: 00           nop
515c: 00           nop
515d: 00           nop
515e: 00           nop
515f: 00           nop
5160: 00           nop
5161: 00           nop
5162: 00           nop
5163: 00           nop
5164: 00           nop
5165: 00           nop
5166: 00           nop
5167: 00           nop
5168: 00           nop
5169: 00           nop
516a: 00           nop
516b: 00           nop
516c: 00           nop
516d: 00           nop
516e: 00           nop
516f: 00           nop
5170: 00           nop
5171: 00           nop
5172: 00           nop
5173: 00           nop
5174: 00           nop
5175: 00           nop
5176: 00           nop
5177: 00           nop
5178: 00           nop
5179: 00           nop
517a: 00           nop
517b: 00           nop
517c: 00           nop
517d: 00           nop
517e: 00           nop
517f: 00           nop
5180: 00           nop
5181: 00           nop
5182: 00           nop
5183: 00           nop
5184: 00           nop
5185: 00           nop
5186: 00           nop
5187: 00           nop
5188: 00           nop
5189: 00           nop
518a: 00           nop
518b: 00           nop
518c: 00           nop
518d: 00           nop
518e: 00           nop
518f: 00           nop
5190: 00           nop
5191: 00           nop
5192: 00           nop
5193: 00           nop
5194: 00           nop
5195: 00           nop
5196: 00           nop
5197: 00           nop
5198: 00           nop
5199: 00           nop
519a: 00           nop
519b: 00           nop
519c: 00           nop
519d: 00           nop
519e: 00           nop
519f: 00           nop
51a0: 00           nop
51a1: 00           nop
51a2: 00           nop
51a3: 00           nop
51a4: 00           nop
51a5: 00           nop
51a6: 00           nop
51a7: 00           nop
51a8: 00           nop
51a9: 00           nop
51aa: 00           nop
51ab: 00           nop
51ac: 00           nop
51ad: 00           nop
51ae: 00           nop
51af: 00           nop
51b0: 00           nop
51b1: 00           nop
51b2: 00           nop
51b3: 00           nop
51b4: 00           nop
51b5: 00           nop
51b6: 00           nop
51b7: 00           nop
51b8: 00           nop
51b9: 00           nop
51ba: 00           nop
51bb: 00           nop
51bc: 00           nop
51bd: 00           nop
51be: 00           nop
51bf: 00           nop
51c0: 00           nop
51c1: 00           nop
51c2: 00           nop
51c3: 00           nop
51c4: 00           nop
51c5: 00           nop
51c6: 00           nop
51c7: 00           nop
51c8: 00           nop
51c9: 00           nop
51ca: 00           nop
51cb: 00           nop
51cc: 00           nop
51cd: 00           nop
51ce: 00           nop
51cf: 00           nop
51d0: 00           nop
51d1: 00           nop
51d2: 00           nop
51d3: 00           nop
51d4: 00           nop
51d5: 00           nop
51d6: 00           nop
51d7: 00           nop
51d8: 00           nop
51d9: 00           nop
51da: 00           nop
51db: 00           nop
51dc: 00           nop
51dd: 00           nop
51de: 00           nop
51df: 00           nop
51e0: 00           nop
51e1: 00           nop
51e2: 00           nop
51e3: 00           nop
51e4: 00           nop
51e5: 00           nop
51e6: 00           nop
51e7: 00           nop
51e8: 00           nop
51e9: 00           nop
51ea: 00           nop
51eb: 00           nop
51ec: 00           nop
51ed: 00           nop
51ee: 00           nop
51ef: 00           nop
51f0: 00           nop
51f1: 00           nop
51f2: 00           nop
51f3: 00           nop
51f4: 00           nop
51f5: 00           nop
51f6: 00           nop
51f7: 00           nop
51f8: 00           nop
51f9: 00           nop
51fa: 00           nop
51fb: 00           nop
51fc: 00           nop
51fd: 00           nop
51fe: 00           nop
51ff: 00           nop
5200: e6 fe        and  $FE
5202: 32 f5 54     ld   ($54F5),a
5205: 22 fb 54     ld   ($54FB),hl
5208: ed 43 fd 54  ld   ($54FD),bc
520c: cd 73 53     call $5373
520f: 3a fa 54     ld   a,($54FA)
5212: b7           or   a
5213: cc 5a 54     call z,$545A
5216: db 2c        in   a,($2C)
5218: e6 01        and  $01
521a: 3e ff        ld   a,$FF
521c: 28 03        jr   z,$5221
521e: 32 c4 4f     ld   ($4FC4),a
5221: 2a fb 54     ld   hl,($54FB)
5224: ed 4b fd 54  ld   bc,($54FD)
5228: 7d           ld   a,l
5229: 32 f2 54     ld   ($54F2),a
522c: 78           ld   a,b
522d: 32 f7 54     ld   ($54F7),a
5230: fe ff        cp   $FF
5232: ca 46 52     jp   z,$5246
5235: 7c           ld   a,h
5236: fe 00        cp   $00
5238: ca 46 52     jp   z,$5246
523b: fe 01        cp   $01
523d: ca c2 52     jp   z,$52C2
5240: fe 02        cp   $02
5242: ca ff 52     jp   z,$52FF
5245: c9           ret
5246: 3a c4 4f     ld   a,($4FC4)
5249: b7           or   a
524a: c2 c2 52     jp   nz,$52C2
524d: c5           push bc
524e: af           xor  a
524f: 32 38 27     ld   ($2738),a
5252: 32 f6 54     ld   ($54F6),a
5255: 3a f3 54     ld   a,($54F3)
5258: fe ff        cp   $FF
525a: 11 b6 39     ld   de,$39B6
525d: 28 0e        jr   z,$526D
525f: e6 03        and  $03
5261: cb 27        sla  a
5263: 5f           ld   e,a
5264: 16 00        ld   d,$00
5266: 21 ff 54     ld   hl,$54FF
5269: 19           add  hl,de
526a: 5e           ld   e,(hl)
526b: 23           inc  hl
526c: 56           ld   d,(hl)
526d: 21 a8 38     ld   hl,$38A8
5270: ed 4b e4 38  ld   bc,($38E4)
5274: ed b0        ldir
5276: c1           pop  bc
5277: c5           push bc
5278: 78           ld   a,b
5279: fe ff        cp   $FF
527b: 11 b6 39     ld   de,$39B6
527e: ca 8f 52     jp   z,$528F
5281: e6 03        and  $03
5283: cb 27        sla  a
5285: 5f           ld   e,a
5286: 16 00        ld   d,$00
5288: 21 ff 54     ld   hl,$54FF
528b: 19           add  hl,de
528c: 5e           ld   e,(hl)
528d: 23           inc  hl
528e: 56           ld   d,(hl)
528f: 21 a8 38     ld   hl,$38A8
5292: eb           ex   de,hl
5293: ed 4b e4 38  ld   bc,($38E4)
5297: ed b0        ldir
5299: c1           pop  bc
529a: cd 36 53     call $5336
529d: 11 00 20     ld   de,$2000
52a0: cd 16 09     call $0916
52a3: 3e 0d        ld   a,$0D
52a5: cd e0 08     call $08E0
52a8: 3a fa 54     ld   a,($54FA)
52ab: 47           ld   b,a
52ac: 3a f2 54     ld   a,($54F2)
52af: cd da 12     call $12DA
52b2: 2a bd 38     ld   hl,($38BD)
52b5: cd e6 12     call $12E6
52b8: af           xor  a
52b9: 32 5a 12     ld   ($125A),a
52bc: 3e ff        ld   a,$FF
52be: 32 fa 54     ld   ($54FA),a
52c1: c9           ret
52c2: cd 1e 54     call $541E
52c5: af           xor  a
52c6: 3e 01        ld   a,$01
52c8: 32 f6 54     ld   ($54F6),a
52cb: 3e ff        ld   a,$FF
52cd: 32 38 27     ld   ($2738),a
52d0: cd 36 53     call $5336
52d3: 22 aa 4f     ld   ($4FAA),hl
52d6: 3a f8 54     ld   a,($54F8)
52d9: b7           or   a
52da: 28 09        jr   z,$52E5
52dc: 21 00 00     ld   hl,$0000
52df: 22 5e 83     ld   ($835E),hl
52e2: 22 aa 4f     ld   ($4FAA),hl
52e5: 3a fa 54     ld   a,($54FA)
52e8: 47           ld   b,a
52e9: 3a f2 54     ld   a,($54F2)
52ec: cd da 12     call $12DA
52ef: af           xor  a
52f0: 32 5a 12     ld   ($125A),a
52f3: 3e ff        ld   a,$FF
52f5: 32 fa 54     ld   ($54FA),a
52f8: 3a f7 54     ld   a,($54F7)
52fb: 32 f4 54     ld   ($54F4),a
52fe: c9           ret
52ff: cd 1e 54     call $541E
5302: 3e ff        ld   a,$FF
5304: 32 5d 83     ld   ($835D),a
5307: 32 38 27     ld   ($2738),a
530a: cd 36 53     call $5336
530d: 22 5e 83     ld   ($835E),hl
5310: 3a f8 54     ld   a,($54F8)
5313: b7           or   a
5314: 28 09        jr   z,$531F
5316: 21 00 00     ld   hl,$0000
5319: 22 5e 83     ld   ($835E),hl
531c: 22 aa 4f     ld   ($4FAA),hl
531f: 3e 02        ld   a,$02
5321: 32 f6 54     ld   ($54F6),a
5324: 3a f2 54     ld   a,($54F2)
5327: cd da 12     call $12DA
532a: 11 00 20     ld   de,$2000
532d: cd 16 09     call $0916
5330: 3e 0d        ld   a,$0D
5332: cd e0 08     call $08E0
5335: c9           ret
5336: c5           push bc
5337: cd 13 54     call $5413
533a: c1           pop  bc
533b: 3a 38 27     ld   a,($2738)
533e: 21 c4 4f     ld   hl,$4FC4
5341: b6           or   (hl)
5342: c2 e7 53     jp   nz,$53E7
5345: 78           ld   a,b
5346: 32 f3 54     ld   ($54F3),a
5349: fe ff        cp   $FF
534b: ca 6c 53     jp   z,$536C
534e: af           xor  a
534f: cd fb 53     call $53FB
5352: e5           push hl
5353: 22 c9 38     ld   ($38C9),hl
5356: 21 39 2b     ld   hl,$2B39
5359: af           xor  a
535a: 32 5d 83     ld   ($835D),a
535d: 3e 00        ld   a,$00
535f: 32 f6 54     ld   ($54F6),a
5362: 11 d7 12     ld   de,$12D7
5365: 01 1b 00     ld   bc,$001B
5368: ed b0        ldir
536a: e1           pop  hl
536b: c9           ret
536c: 21 00 1e     ld   hl,$1E00
536f: e5           push hl
5370: c3 53 53     jp   $5353
5373: fe 50        cp   $50
5375: 30 1c        jr   nc,$5393
5377: 3e 50        ld   a,$50
5379: 32 f5 54     ld   ($54F5),a
537c: af           xor  a
537d: cb cf        set  1,a
537f: 32 f9 54     ld   ($54F9),a
5382: 21 7f 02     ld   hl,$027F
5385: 22 66 83     ld   ($8366),hl
5388: 21 8f 01     ld   hl,$018F
538b: 22 68 83     ld   ($8368),hl
538e: af           xor  a
538f: 32 f8 54     ld   ($54F8),a
5392: c9           ret
5393: 32 f5 54     ld   ($54F5),a
5396: fe 50        cp   $50
5398: 20 12        jr   nz,$53AC
539a: 21 80 02     ld   hl,$0280
539d: 22 66 83     ld   ($8366),hl
53a0: 21 40 06     ld   hl,$0640
53a3: 22 68 83     ld   ($8368),hl
53a6: af           xor  a
53a7: cb cf        set  1,a
53a9: c3 df 53     jp   $53DF
53ac: fe a0        cp   $A0
53ae: 20 12        jr   nz,$53C2
53b0: 21 00 05     ld   hl,$0500
53b3: 22 66 83     ld   ($8366),hl
53b6: 21 20 03     ld   hl,$0320
53b9: 22 68 83     ld   ($8368),hl
53bc: af           xor  a
53bd: cb d7        set  2,a
53bf: c3 df 53     jp   $53DF
53c2: 21 01 00     ld   hl,$0001
53c5: 11 fe ff     ld   de,$FFFE
53c8: 4f           ld   c,a
53c9: 06 00        ld   b,$00
53cb: c5           push bc
53cc: cd a9 87     call $87A9
53cf: ed 53 68 83  ld   ($8368),de
53d3: d1           pop  de
53d4: 3e 08        ld   a,$08
53d6: cd e2 8a     call $8AE2
53d9: 22 66 83     ld   ($8366),hl
53dc: af           xor  a
53dd: cb df        set  3,a
53df: 32 f9 54     ld   ($54F9),a
53e2: 3e ff        ld   a,$FF
53e4: c3 8f 53     jp   $538F
53e7: 3e ff        ld   a,$FF
53e9: cd fb 53     call $53FB
53ec: e5           push hl
53ed: 22 aa 4f     ld   ($4FAA),hl
53f0: 21 ea 39     ld   hl,$39EA
53f3: 3e 01        ld   a,$01
53f5: 32 f6 54     ld   ($54F6),a
53f8: c3 62 53     jp   $5362
53fb: b7           or   a
53fc: 21 e0 54     ld   hl,$54E0
53ff: 28 03        jr   z,$5404
5401: 21 ea 54     ld   hl,$54EA
5404: 78           ld   a,b
5405: e6 03        and  $03
5407: cb 27        sla  a
5409: 5f           ld   e,a
540a: 16 00        ld   d,$00
540c: 19           add  hl,de
540d: 5e           ld   e,(hl)
540e: 23           inc  hl
540f: 56           ld   d,(hl)
5410: 6b           ld   l,e
5411: 62           ld   h,d
5412: c9           ret
5413: 11 f0 4a     ld   de,$4AF0
5416: 3e 0d        ld   a,$0D
5418: 06 00        ld   b,$00
541a: cd b5 08     call $08B5
541d: c9           ret
541e: c5           push bc
541f: 3a f4 54     ld   a,($54F4)
5422: e6 03        and  $03
5424: cb 27        sla  a
5426: 5f           ld   e,a
5427: 16 00        ld   d,$00
5429: 21 09 55     ld   hl,$5509
542c: 19           add  hl,de
542d: 5e           ld   e,(hl)
542e: 23           inc  hl
542f: 56           ld   d,(hl)
5430: 21 7b 4f     ld   hl,$4F7B
5433: ed 4b c7 4f  ld   bc,($4FC7)
5437: ed b0        ldir
5439: c1           pop  bc
543a: c5           push bc
543b: 78           ld   a,b
543c: e6 03        and  $03
543e: cb 27        sla  a
5440: 5f           ld   e,a
5441: 16 00        ld   d,$00
5443: 21 09 55     ld   hl,$5509
5446: 19           add  hl,de
5447: 5e           ld   e,(hl)
5448: 23           inc  hl
5449: 56           ld   d,(hl)
544a: 21 7b 4f     ld   hl,$4F7B
544d: eb           ex   de,hl
544e: ed 4b c7 4f  ld   bc,($4FC7)
5452: ed b0        ldir
5454: c1           pop  bc
5455: 78           ld   a,b
5456: 32 f4 54     ld   ($54F4),a
5459: c9           ret
545a: 21 a8 38     ld   hl,$38A8
545d: 11 e6 38     ld   de,$38E6
5460: ed 4b e4 38  ld   bc,($38E4)
5464: ed b0        ldir
5466: 21 a8 38     ld   hl,$38A8
5469: 11 1a 39     ld   de,$391A
546c: ed 4b e4 38  ld   bc,($38E4)
5470: ed b0        ldir
5472: 21 a8 38     ld   hl,$38A8
5475: 11 4e 39     ld   de,$394E
5478: ed 4b e4 38  ld   bc,($38E4)
547c: ed b0        ldir
547e: 21 a8 38     ld   hl,$38A8
5481: 11 82 39     ld   de,$3982
5484: ed 4b e4 38  ld   bc,($38E4)
5488: ed b0        ldir
548a: 21 a8 38     ld   hl,$38A8
548d: 11 b6 39     ld   de,$39B6
5490: ed 4b e4 38  ld   bc,($38E4)
5494: ed b0        ldir
5496: 21 7b 4f     ld   hl,$4F7B
5499: ed 4b c7 4f  ld   bc,($4FC7)
549d: 11 e0 50     ld   de,$50E0
54a0: ed b0        ldir
54a2: 21 7b 4f     ld   hl,$4F7B
54a5: ed 4b c7 4f  ld   bc,($4FC7)
54a9: 11 28 51     ld   de,$5128
54ac: ed b0        ldir
54ae: 21 7b 4f     ld   hl,$4F7B
54b1: ed 4b c7 4f  ld   bc,($4FC7)
54b5: 11 70 51     ld   de,$5170
54b8: ed b0        ldir
54ba: 21 7b 4f     ld   hl,$4F7B
54bd: ed 4b c7 4f  ld   bc,($4FC7)
54c1: 11 b8 51     ld   de,$51B8
54c4: ed b0        ldir
54c6: c9           ret
54c7: 53           ld   d,e
54c8: 63           ld   h,e
54c9: 72           ld   (hl),d
54ca: 65           ld   h,l
54cb: 65           ld   h,l
54cc: 6e           ld   l,(hl)
54cd: 20 53        jr   nz,$5522
54cf: 74           ld   (hl),h
54d0: 61           ld   h,c
54d1: 72           ld   (hl),d
54d2: 74           ld   (hl),h
54d3: 69           ld   l,c
54d4: 6e           ld   l,(hl)
54d5: 67           ld   h,a
54d6: 20 41        jr   nz,$5519
54d8: 64           ld   h,h
54d9: 64           ld   h,h
54da: 72           ld   (hl),d
54db: 65           ld   h,l
54dc: 73           ld   (hl),e
54dd: 73           ld   (hl),e
54de: 65           ld   h,l
54df: 73           ld   (hl),e
54e0: 00           nop
54e1: 00           nop
54e2: 80           add  a,b
54e3: 07           rlca
54e4: 00           nop
54e5: 0f           rrca
54e6: 80           add  a,b
54e7: 16 00        ld   d,$00
54e9: 1e 00        ld   e,$00
54eb: 40           ld   b,b
54ec: 80           add  a,b
54ed: 7e           ld   a,(hl)
54ee: 00           nop
54ef: bd           cp   l
54f0: 00           nop
54f1: 00           nop
54f2: 00           nop
54f3: 00           nop
54f4: 00           nop
54f5: 50           ld   d,b
54f6: 00           nop
54f7: 00           nop
54f8: 00           nop
54f9: 00           nop
54fa: 00           nop
54fb: 00           nop
54fc: 00           nop
54fd: 00           nop
54fe: 00           nop
54ff: e6 38        and  $38
5501: 1a           ld   a,(de)
5502: 39           add  hl,sp
5503: 4e           ld   c,(hl)
5504: 39           add  hl,sp
5505: 82           add  a,d
5506: 39           add  hl,sp
5507: b6           or   (hl)
5508: 39           add  hl,sp
5509: e0           ret  po
550a: 50           ld   d,b
550b: 28 51        jr   z,$555E
550d: 70           ld   (hl),b
550e: 51           ld   d,c
550f: b8           cp   b
5510: 51           ld   d,c
5511: 00           nop
5512: 00           nop
5513: 00           nop
5514: 00           nop
5515: 00           nop
5516: 00           nop
5517: 00           nop
5518: 00           nop
5519: 00           nop
551a: 00           nop
551b: 00           nop
551c: 00           nop
551d: 00           nop
551e: 00           nop
551f: 00           nop
5520: 00           nop
5521: 08           ex   af,af'
5522: 00           nop
5523: 00           nop
5524: 08           ex   af,af'
5525: 00           nop
5526: 00           nop
5527: 00           nop
5528: 00           nop
5529: 08           ex   af,af'
552a: 08           ex   af,af'
552b: 08           ex   af,af'
552c: 08           ex   af,af'
552d: 08           ex   af,af'
552e: 08           ex   af,af'
552f: 08           ex   af,af'
5530: 08           ex   af,af'
5531: 00           nop
5532: 00           nop
5533: 00           nop
5534: 00           nop
5535: 00           nop
5536: 00           nop
5537: 00           nop
5538: 00           nop
5539: 36 12        ld   (hl),$12
553b: 12           ld   (de),a
553c: 00           nop
553d: 00           nop
553e: 00           nop
553f: 00           nop
5540: 00           nop
5541: 24           inc  h
5542: 24           inc  h
5543: 24           inc  h
5544: 00           nop
5545: 00           nop
5546: 00           nop
5547: 00           nop
5548: 00           nop
5549: 00           nop
554a: 24           inc  h
554b: 24           inc  h
554c: 24           inc  h
554d: 7e           ld   a,(hl)
554e: 24           inc  h
554f: 24           inc  h
5550: 7e           ld   a,(hl)
5551: 48           ld   c,b
5552: 49           ld   c,c
5553: 3e 08        ld   a,$08
5555: 08           ex   af,af'
5556: 00           nop
5557: 00           nop
5558: 00           nop
5559: 08           ex   af,af'
555a: 08           ex   af,af'
555b: 3e 49        ld   a,$49
555d: 09           add  hl,bc
555e: 09           add  hl,bc
555f: 3e 48        ld   a,$48
5561: 64           ld   h,h
5562: 94           sub  h
5563: 92           sub  d
5564: 62           ld   h,d
5565: 00           nop
5566: 00           nop
5567: 00           nop
5568: 00           nop
5569: 46           ld   b,(hl)
556a: 49           ld   c,c
556b: 29           add  hl,hl
556c: 26 10        ld   h,$10
556e: 10 08        djnz $5578
5570: 08           ex   af,af'
5571: 51           ld   d,c
5572: 21 52 0c     ld   hl,$0C52
5575: 00           nop
5576: 00           nop
5577: 00           nop
5578: 00           nop
5579: 0c           inc  c
557a: 12           ld   (de),a
557b: 12           ld   (de),a
557c: 0a           ld   a,(bc)
557d: 04           inc  b
557e: 06 06        ld   b,$06
5580: 49           ld   c,c
5581: 00           nop
5582: 00           nop
5583: 00           nop
5584: 00           nop
5585: 00           nop
5586: 00           nop
5587: 00           nop
5588: 00           nop
5589: 18 18        jr   $55A3
558b: 10 08        djnz $5595
558d: 04           inc  b
558e: 00           nop
558f: 00           nop
5590: 00           nop
5591: 08           ex   af,af'
5592: 08           ex   af,af'
5593: 10 20        djnz $55B5
5595: 00           nop
5596: 00           nop
5597: 00           nop
5598: 00           nop
5599: 20 10        jr   nz,$55AB
559b: 08           ex   af,af'
559c: 08           ex   af,af'
559d: 04           inc  b
559e: 04           inc  b
559f: 04           inc  b
55a0: 04           inc  b
55a1: 08           ex   af,af'
55a2: 08           ex   af,af'
55a3: 04           inc  b
55a4: 02           ld   (bc),a
55a5: 00           nop
55a6: 00           nop
55a7: 00           nop
55a8: 00           nop
55a9: 02           ld   (bc),a
55aa: 04           inc  b
55ab: 08           ex   af,af'
55ac: 08           ex   af,af'
55ad: 10 10        djnz $55BF
55af: 10 10        djnz $55C1
55b1: 2a 49 08     ld   hl,($0849)
55b4: 00           nop
55b5: 00           nop
55b6: 00           nop
55b7: 00           nop
55b8: 00           nop
55b9: 00           nop
55ba: 00           nop
55bb: 08           ex   af,af'
55bc: 49           ld   c,c
55bd: 2a 1c 08     ld   hl,($081C)
55c0: 1c           inc  e
55c1: 08           ex   af,af'
55c2: 08           ex   af,af'
55c3: 00           nop
55c4: 00           nop
55c5: 00           nop
55c6: 00           nop
55c7: 00           nop
55c8: 00           nop
55c9: 00           nop
55ca: 00           nop
55cb: 00           nop
55cc: 08           ex   af,af'
55cd: 08           ex   af,af'
55ce: 08           ex   af,af'
55cf: 7f           ld   a,a
55d0: 08           ex   af,af'
55d1: 0c           inc  c
55d2: 0c           inc  c
55d3: 08           ex   af,af'
55d4: 04           inc  b
55d5: 02           ld   (bc),a
55d6: 00           nop
55d7: 00           nop
55d8: 00           nop
55d9: 00           nop
55da: 00           nop
55db: 00           nop
55dc: 00           nop
55dd: 00           nop
55de: 00           nop
55df: 00           nop
55e0: 00           nop
55e1: 00           nop
55e2: 00           nop
55e3: 00           nop
55e4: 00           nop
55e5: 00           nop
55e6: 00           nop
55e7: 00           nop
55e8: 00           nop
55e9: 00           nop
55ea: 00           nop
55eb: 00           nop
55ec: 00           nop
55ed: 00           nop
55ee: 00           nop
55ef: 3e 00        ld   a,$00
55f1: 00           nop
55f2: 00           nop
55f3: 0c           inc  c
55f4: 0c           inc  c
55f5: 00           nop
55f6: 00           nop
55f7: 00           nop
55f8: 00           nop
55f9: 00           nop
55fa: 00           nop
55fb: 00           nop
55fc: 00           nop
55fd: 00           nop
55fe: 00           nop
55ff: 00           nop
5600: 00           nop
5601: 04           inc  b
5602: 02           ld   (bc),a
5603: 02           ld   (bc),a
5604: 01 01 00     ld   bc,$0001
5607: 00           nop
5608: 00           nop
5609: 00           nop
560a: 20 20        jr   nz,$562C
560c: 10 10        djnz $561E
560e: 08           ex   af,af'
560f: 08           ex   af,af'
5610: 04           inc  b
5611: 45           ld   b,l
5612: 43           ld   b,e
5613: 22 1c 00     ld   ($001C),hl
5616: 00           nop
5617: 00           nop
5618: 00           nop
5619: 1c           inc  e
561a: 22 61 51     ld   ($5161),hl
561d: 51           ld   d,c
561e: 49           ld   c,c
561f: 49           ld   c,c
5620: 45           ld   b,l
5621: 08           ex   af,af'
5622: 08           ex   af,af'
5623: 08           ex   af,af'
5624: 3e 00        ld   a,$00
5626: 00           nop
5627: 00           nop
5628: 00           nop
5629: 08           ex   af,af'
562a: 0c           inc  c
562b: 0a           ld   a,(bc)
562c: 08           ex   af,af'
562d: 08           ex   af,af'
562e: 08           ex   af,af'
562f: 08           ex   af,af'
5630: 08           ex   af,af'
5631: 04           inc  b
5632: 02           ld   (bc),a
5633: 01 7f 00     ld   bc,$007F
5636: 00           nop
5637: 00           nop
5638: 00           nop
5639: 1c           inc  e
563a: 22 41 41     ld   ($4141),hl
563d: 40           ld   b,b
563e: 20 10        jr   nz,$5650
5640: 08           ex   af,af'
5641: 40           ld   b,b
5642: 41           ld   b,c
5643: 22 1c 00     ld   ($001C),hl
5646: 00           nop
5647: 00           nop
5648: 00           nop
5649: 1c           inc  e
564a: 22 41 40     ld   ($4041),hl
564d: 20 1c        jr   nz,$566B
564f: 20 40        jr   nz,$5691
5651: 7f           ld   a,a
5652: 20 20        jr   nz,$5674
5654: 20 00        jr   nz,$5656
5656: 00           nop
5657: 00           nop
5658: 00           nop
5659: 30 28        jr   nc,$5683
565b: 28 24        jr   z,$5681
565d: 24           inc  h
565e: 22 22 21     ld   ($2122),hl
5661: 40           ld   b,b
5662: 41           ld   b,c
5663: 22 1c 00     ld   ($001C),hl
5666: 00           nop
5667: 00           nop
5668: 00           nop
5669: 7f           ld   a,a
566a: 01 01 01     ld   bc,$0101
566d: 1d           dec  e
566e: 23           inc  hl
566f: 40           ld   b,b
5670: 40           ld   b,b
5671: 41           ld   b,c
5672: 41           ld   b,c
5673: 22 1c 00     ld   ($001C),hl
5676: 00           nop
5677: 00           nop
5678: 00           nop
5679: 10 08        djnz $5683
567b: 04           inc  b
567c: 02           ld   (bc),a
567d: 02           ld   (bc),a
567e: 1d           dec  e
567f: 23           inc  hl
5680: 41           ld   b,c
5681: 04           inc  b
5682: 04           inc  b
5683: 02           ld   (bc),a
5684: 02           ld   (bc),a
5685: 00           nop
5686: 00           nop
5687: 00           nop
5688: 00           nop
5689: 7f           ld   a,a
568a: 41           ld   b,c
568b: 20 20        jr   nz,$56AD
568d: 10 10        djnz $569F
568f: 08           ex   af,af'
5690: 08           ex   af,af'
5691: 41           ld   b,c
5692: 41           ld   b,c
5693: 22 1c 00     ld   ($001C),hl
5696: 00           nop
5697: 00           nop
5698: 00           nop
5699: 1c           inc  e
569a: 22 41 41     ld   ($4141),hl
569d: 22 1c 22     ld   ($221C),hl
56a0: 41           ld   b,c
56a1: 20 10        jr   nz,$56B3
56a3: 08           ex   af,af'
56a4: 04           inc  b
56a5: 00           nop
56a6: 00           nop
56a7: 00           nop
56a8: 00           nop
56a9: 1c           inc  e
56aa: 22 41 41     ld   ($4141),hl
56ad: 41           ld   b,c
56ae: 62           ld   h,d
56af: 5c           ld   e,h
56b0: 20 00        jr   nz,$56B2
56b2: 0c           inc  c
56b3: 0c           inc  c
56b4: 00           nop
56b5: 00           nop
56b6: 00           nop
56b7: 00           nop
56b8: 00           nop
56b9: 00           nop
56ba: 00           nop
56bb: 00           nop
56bc: 0c           inc  c
56bd: 0c           inc  c
56be: 00           nop
56bf: 00           nop
56c0: 00           nop
56c1: 00           nop
56c2: 18 18        jr   $56DC
56c4: 08           ex   af,af'
56c5: 04           inc  b
56c6: 00           nop
56c7: 00           nop
56c8: 00           nop
56c9: 00           nop
56ca: 00           nop
56cb: 00           nop
56cc: 18 18        jr   $56E6
56ce: 00           nop
56cf: 00           nop
56d0: 00           nop
56d1: 04           inc  b
56d2: 08           ex   af,af'
56d3: 10 20        djnz $56F5
56d5: 40           ld   b,b
56d6: 00           nop
56d7: 00           nop
56d8: 00           nop
56d9: 40           ld   b,b
56da: 20 10        jr   nz,$56EC
56dc: 08           ex   af,af'
56dd: 04           inc  b
56de: 02           ld   (bc),a
56df: 01 02 00     ld   bc,$0002
56e2: 00           nop
56e3: 00           nop
56e4: 00           nop
56e5: 00           nop
56e6: 00           nop
56e7: 00           nop
56e8: 00           nop
56e9: 00           nop
56ea: 00           nop
56eb: 00           nop
56ec: 7e           ld   a,(hl)
56ed: 00           nop
56ee: 00           nop
56ef: 00           nop
56f0: 7e           ld   a,(hl)
56f1: 10 08        djnz $56FB
56f3: 04           inc  b
56f4: 02           ld   (bc),a
56f5: 01 00 00     ld   bc,$0000
56f8: 00           nop
56f9: 01 02 04     ld   bc,$0402
56fc: 08           ex   af,af'
56fd: 10 20        djnz $571F
56ff: 40           ld   b,b
5700: 20 00        jr   nz,$5702
5702: 00           nop
5703: 08           ex   af,af'
5704: 08           ex   af,af'
5705: 00           nop
5706: 00           nop
5707: 00           nop
5708: 00           nop
5709: 1c           inc  e
570a: 22 41 41     ld   ($4141),hl
570d: 20 10        jr   nz,$571F
570f: 08           ex   af,af'
5710: 08           ex   af,af'
5711: 39           add  hl,sp
5712: 01 42 3c     ld   bc,$3C42
5715: 00           nop
5716: 00           nop
5717: 00           nop
5718: 00           nop
5719: 1c           inc  e
571a: 22 41 59     ld   ($5941),hl
571d: 65           ld   h,l
571e: 65           ld   h,l
571f: 65           ld   h,l
5720: 65           ld   h,l
5721: 41           ld   b,c
5722: 41           ld   b,c
5723: 41           ld   b,c
5724: 41           ld   b,c
5725: 00           nop
5726: 00           nop
5727: 00           nop
5728: 00           nop
5729: 1c           inc  e
572a: 22 41 41     ld   ($4141),hl
572d: 41           ld   b,c
572e: 41           ld   b,c
572f: 7f           ld   a,a
5730: 41           ld   b,c
5731: 42           ld   b,d
5732: 42           ld   b,d
5733: 22 1f 00     ld   ($001F),hl
5736: 00           nop
5737: 00           nop
5738: 00           nop
5739: 1f           rra
573a: 22 42 42     ld   ($4242),hl
573d: 22 1e 22     ld   ($221E),hl
5740: 42           ld   b,d
5741: 41           ld   b,c
5742: 41           ld   b,c
5743: 22 1c 00     ld   ($001C),hl
5746: 00           nop
5747: 00           nop
5748: 00           nop
5749: 1c           inc  e
574a: 22 41 41     ld   ($4141),hl
574d: 01 01 01     ld   bc,$0101
5750: 01 42 42     ld   bc,$4242
5753: 22 1f 00     ld   ($001F),hl
5756: 00           nop
5757: 00           nop
5758: 00           nop
5759: 1f           rra
575a: 22 42 42     ld   ($4242),hl
575d: 42           ld   b,d
575e: 42           ld   b,d
575f: 42           ld   b,d
5760: 42           ld   b,d
5761: 01 01 01     ld   bc,$0101
5764: 7f           ld   a,a
5765: 00           nop
5766: 00           nop
5767: 00           nop
5768: 00           nop
5769: 7f           ld   a,a
576a: 01 01 01     ld   bc,$0101
576d: 01 3f 01     ld   bc,$013F
5770: 01 01 01     ld   bc,$0101
5773: 01 01 00     ld   bc,$0001
5776: 00           nop
5777: 00           nop
5778: 00           nop
5779: 7f           ld   a,a
577a: 01 01 01     ld   bc,$0101
577d: 01 3f 01     ld   bc,$013F
5780: 01 41 41     ld   bc,$4141
5783: 62           ld   h,d
5784: 5c           ld   e,h
5785: 00           nop
5786: 00           nop
5787: 00           nop
5788: 00           nop
5789: 1c           inc  e
578a: 22 41 41     ld   ($4141),hl
578d: 01 01 79     ld   bc,$7901
5790: 41           ld   b,c
5791: 41           ld   b,c
5792: 41           ld   b,c
5793: 41           ld   b,c
5794: 41           ld   b,c
5795: 00           nop
5796: 00           nop
5797: 00           nop
5798: 00           nop
5799: 41           ld   b,c
579a: 41           ld   b,c
579b: 41           ld   b,c
579c: 41           ld   b,c
579d: 41           ld   b,c
579e: 7f           ld   a,a
579f: 41           ld   b,c
57a0: 41           ld   b,c
57a1: 08           ex   af,af'
57a2: 08           ex   af,af'
57a3: 08           ex   af,af'
57a4: 3e 00        ld   a,$00
57a6: 00           nop
57a7: 00           nop
57a8: 00           nop
57a9: 3e 08        ld   a,$08
57ab: 08           ex   af,af'
57ac: 08           ex   af,af'
57ad: 08           ex   af,af'
57ae: 08           ex   af,af'
57af: 08           ex   af,af'
57b0: 08           ex   af,af'
57b1: 10 11        djnz $57C4
57b3: 11 0e 00     ld   de,$000E
57b6: 00           nop
57b7: 00           nop
57b8: 00           nop
57b9: 7e           ld   a,(hl)
57ba: 10 10        djnz $57CC
57bc: 10 10        djnz $57CE
57be: 10 10        djnz $57D0
57c0: 10 09        djnz $57CB
57c2: 11 21 41     ld   de,$4121
57c5: 00           nop
57c6: 00           nop
57c7: 00           nop
57c8: 00           nop
57c9: 41           ld   b,c
57ca: 21 11 09     ld   hl,$0911
57cd: 05           dec  b
57ce: 03           inc  bc
57cf: 03           inc  bc
57d0: 05           dec  b
57d1: 01 01 01     ld   bc,$0101
57d4: 7f           ld   a,a
57d5: 00           nop
57d6: 00           nop
57d7: 00           nop
57d8: 00           nop
57d9: 01 01 01     ld   bc,$0101
57dc: 01 01 01     ld   bc,$0101
57df: 01 01 41     ld   bc,$4101
57e2: 41           ld   b,c
57e3: 41           ld   b,c
57e4: 41           ld   b,c
57e5: 00           nop
57e6: 00           nop
57e7: 00           nop
57e8: 00           nop
57e9: 41           ld   b,c
57ea: 63           ld   h,e
57eb: 63           ld   h,e
57ec: 55           ld   d,l
57ed: 55           ld   d,l
57ee: 49           ld   c,c
57ef: 49           ld   c,c
57f0: 41           ld   b,c
57f1: 51           ld   d,c
57f2: 61           ld   h,c
57f3: 61           ld   h,c
57f4: 41           ld   b,c
57f5: 00           nop
57f6: 00           nop
57f7: 00           nop
57f8: 00           nop
57f9: 41           ld   b,c
57fa: 43           ld   b,e
57fb: 43           ld   b,e
57fc: 45           ld   b,l
57fd: 45           ld   b,l
57fe: 49           ld   c,c
57ff: 49           ld   c,c
5800: 51           ld   d,c
5801: 41           ld   b,c
5802: 41           ld   b,c
5803: 22 1c 00     ld   ($001C),hl
5806: 00           nop
5807: 00           nop
5808: 00           nop
5809: 1c           inc  e
580a: 22 41 41     ld   ($4141),hl
580d: 41           ld   b,c
580e: 41           ld   b,c
580f: 41           ld   b,c
5810: 41           ld   b,c
5811: 01 01 01     ld   bc,$0101
5814: 01 00 00     ld   bc,$0000
5817: 00           nop
5818: 00           nop
5819: 1f           rra
581a: 21 41 41     ld   hl,$4141
581d: 41           ld   b,c
581e: 21 1f 01     ld   hl,$011F
5821: 59           ld   e,c
5822: 65           ld   h,l
5823: 22 5c 00     ld   ($005C),hl
5826: 00           nop
5827: 00           nop
5828: 00           nop
5829: 1c           inc  e
582a: 22 41 41     ld   ($4141),hl
582d: 41           ld   b,c
582e: 41           ld   b,c
582f: 41           ld   b,c
5830: 41           ld   b,c
5831: 21 21 41     ld   hl,$4121
5834: 41           ld   b,c
5835: 00           nop
5836: 00           nop
5837: 00           nop
5838: 00           nop
5839: 1f           rra
583a: 21 41 41     ld   hl,$4141
583d: 21 11 0f     ld   hl,$0F11
5840: 11 41 41     ld   de,$4141
5843: 22 1c 00     ld   ($001C),hl
5846: 00           nop
5847: 00           nop
5848: 00           nop
5849: 1c           inc  e
584a: 22 41 41     ld   ($4141),hl
584d: 02           ld   (bc),a
584e: 0c           inc  c
584f: 30 40        jr   nc,$5891
5851: 08           ex   af,af'
5852: 08           ex   af,af'
5853: 08           ex   af,af'
5854: 08           ex   af,af'
5855: 00           nop
5856: 00           nop
5857: 00           nop
5858: 00           nop
5859: 7f           ld   a,a
585a: 08           ex   af,af'
585b: 08           ex   af,af'
585c: 08           ex   af,af'
585d: 08           ex   af,af'
585e: 08           ex   af,af'
585f: 08           ex   af,af'
5860: 08           ex   af,af'
5861: 41           ld   b,c
5862: 41           ld   b,c
5863: 22 1c 00     ld   ($001C),hl
5866: 00           nop
5867: 00           nop
5868: 00           nop
5869: 41           ld   b,c
586a: 41           ld   b,c
586b: 41           ld   b,c
586c: 41           ld   b,c
586d: 41           ld   b,c
586e: 41           ld   b,c
586f: 41           ld   b,c
5870: 41           ld   b,c
5871: 14           inc  d
5872: 14           inc  d
5873: 08           ex   af,af'
5874: 08           ex   af,af'
5875: 00           nop
5876: 00           nop
5877: 00           nop
5878: 00           nop
5879: 41           ld   b,c
587a: 41           ld   b,c
587b: 41           ld   b,c
587c: 41           ld   b,c
587d: 41           ld   b,c
587e: 22 22 22     ld   ($2222),hl
5881: 55           ld   d,l
5882: 55           ld   d,l
5883: 22 22 00     ld   ($0022),hl
5886: 00           nop
5887: 00           nop
5888: 00           nop
5889: 41           ld   b,c
588a: 41           ld   b,c
588b: 41           ld   b,c
588c: 41           ld   b,c
588d: 41           ld   b,c
588e: 49           ld   c,c
588f: 49           ld   c,c
5890: 49           ld   c,c
5891: 22 22 41     ld   ($4122),hl
5894: 41           ld   b,c
5895: 00           nop
5896: 00           nop
5897: 00           nop
5898: 00           nop
5899: 41           ld   b,c
589a: 41           ld   b,c
589b: 22 22 14     ld   ($1422),hl
589e: 08           ex   af,af'
589f: 08           ex   af,af'
58a0: 14           inc  d
58a1: 08           ex   af,af'
58a2: 08           ex   af,af'
58a3: 08           ex   af,af'
58a4: 08           ex   af,af'
58a5: 00           nop
58a6: 00           nop
58a7: 00           nop
58a8: 00           nop
58a9: 41           ld   b,c
58aa: 41           ld   b,c
58ab: 41           ld   b,c
58ac: 22 22 14     ld   ($1422),hl
58af: 14           inc  d
58b0: 08           ex   af,af'
58b1: 04           inc  b
58b2: 04           inc  b
58b3: 02           ld   (bc),a
58b4: 7f           ld   a,a
58b5: 00           nop
58b6: 00           nop
58b7: 00           nop
58b8: 00           nop
58b9: 7f           ld   a,a
58ba: 40           ld   b,b
58bb: 20 20        jr   nz,$58DD
58bd: 10 10        djnz $58CF
58bf: 08           ex   af,af'
58c0: 08           ex   af,af'
58c1: 08           ex   af,af'
58c2: 08           ex   af,af'
58c3: 08           ex   af,af'
58c4: 08           ex   af,af'
58c5: 78           ld   a,b
58c6: 00           nop
58c7: 00           nop
58c8: 00           nop
58c9: 78           ld   a,b
58ca: 08           ex   af,af'
58cb: 08           ex   af,af'
58cc: 08           ex   af,af'
58cd: 08           ex   af,af'
58ce: 08           ex   af,af'
58cf: 08           ex   af,af'
58d0: 08           ex   af,af'
58d1: 10 20        djnz $58F3
58d3: 20 40        jr   nz,$5915
58d5: 40           ld   b,b
58d6: 00           nop
58d7: 00           nop
58d8: 00           nop
58d9: 00           nop
58da: 02           ld   (bc),a
58db: 02           ld   (bc),a
58dc: 04           inc  b
58dd: 04           inc  b
58de: 08           ex   af,af'
58df: 08           ex   af,af'
58e0: 10 08        djnz $58EA
58e2: 08           ex   af,af'
58e3: 08           ex   af,af'
58e4: 08           ex   af,af'
58e5: 0f           rrca
58e6: 00           nop
58e7: 00           nop
58e8: 00           nop
58e9: 0f           rrca
58ea: 08           ex   af,af'
58eb: 08           ex   af,af'
58ec: 08           ex   af,af'
58ed: 08           ex   af,af'
58ee: 08           ex   af,af'
58ef: 08           ex   af,af'
58f0: 08           ex   af,af'
58f1: 00           nop
58f2: 00           nop
58f3: 00           nop
58f4: 00           nop
58f5: 00           nop
58f6: 00           nop
58f7: 00           nop
58f8: 00           nop
58f9: 08           ex   af,af'
58fa: 14           inc  d
58fb: 22 41 00     ld   ($0041),hl
58fe: 00           nop
58ff: 00           nop
5900: 00           nop
5901: 00           nop
5902: 00           nop
5903: 00           nop
5904: 00           nop
5905: 00           nop
5906: ff           rst  $38
5907: 00           nop
5908: 00           nop
5909: 00           nop
590a: 00           nop
590b: 00           nop
590c: 00           nop
590d: 00           nop
590e: 00           nop
590f: 00           nop
5910: 00           nop
5911: 00           nop
5912: 00           nop
5913: 00           nop
5914: 00           nop
5915: 00           nop
5916: 00           nop
5917: 00           nop
5918: 00           nop
5919: 18 18        jr   $5933
591b: 08           ex   af,af'
591c: 10 20        djnz $593E
591e: 00           nop
591f: 00           nop
5920: 00           nop
5921: 42           ld   b,d
5922: 42           ld   b,d
5923: 42           ld   b,d
5924: bc           cp   h
5925: 00           nop
5926: 00           nop
5927: 00           nop
5928: 00           nop
5929: 00           nop
592a: 00           nop
592b: 00           nop
592c: 3c           inc  a
592d: 40           ld   b,b
592e: 40           ld   b,b
592f: 7c           ld   a,h
5930: 42           ld   b,d
5931: 42           ld   b,d
5932: 42           ld   b,d
5933: 26 1a        ld   h,$1A
5935: 00           nop
5936: 00           nop
5937: 00           nop
5938: 00           nop
5939: 02           ld   (bc),a
593a: 02           ld   (bc),a
593b: 02           ld   (bc),a
593c: 1a           ld   a,(de)
593d: 26 42        ld   h,$42
593f: 42           ld   b,d
5940: 42           ld   b,d
5941: 01 41 22     ld   bc,$2241
5944: 1c           inc  e
5945: 00           nop
5946: 00           nop
5947: 00           nop
5948: 00           nop
5949: 00           nop
594a: 00           nop
594b: 00           nop
594c: 1c           inc  e
594d: 22 41 01     ld   ($0141),hl
5950: 01 42 42     ld   bc,$4242
5953: 64           ld   h,h
5954: 58           ld   e,b
5955: 00           nop
5956: 00           nop
5957: 00           nop
5958: 00           nop
5959: 40           ld   b,b
595a: 40           ld   b,b
595b: 40           ld   b,b
595c: 58           ld   e,b
595d: 64           ld   h,h
595e: 42           ld   b,d
595f: 42           ld   b,d
5960: 42           ld   b,d
5961: 01 41 22     ld   bc,$2241
5964: 1c           inc  e
5965: 00           nop
5966: 00           nop
5967: 00           nop
5968: 00           nop
5969: 00           nop
596a: 00           nop
596b: 00           nop
596c: 1c           inc  e
596d: 22 41 41     ld   ($4141),hl
5970: 7f           ld   a,a
5971: 08           ex   af,af'
5972: 08           ex   af,af'
5973: 08           ex   af,af'
5974: 08           ex   af,af'
5975: 00           nop
5976: 00           nop
5977: 00           nop
5978: 00           nop
5979: 30 48        jr   nc,$59C3
597b: 08           ex   af,af'
597c: 08           ex   af,af'
597d: 3e 08        ld   a,$08
597f: 08           ex   af,af'
5980: 08           ex   af,af'
5981: 02           ld   (bc),a
5982: 3e 41        ld   a,$41
5984: 41           ld   b,c
5985: 41           ld   b,c
5986: 3e 00        ld   a,$00
5988: 00           nop
5989: 00           nop
598a: 00           nop
598b: 40           ld   b,b
598c: 5c           ld   e,h
598d: 22 22 22     ld   ($2222),hl
5990: 1c           inc  e
5991: 42           ld   b,d
5992: 42           ld   b,d
5993: 42           ld   b,d
5994: 42           ld   b,d
5995: 00           nop
5996: 00           nop
5997: 00           nop
5998: 00           nop
5999: 02           ld   (bc),a
599a: 02           ld   (bc),a
599b: 02           ld   (bc),a
599c: 3a 46 42     ld   a,($4246)
599f: 42           ld   b,d
59a0: 42           ld   b,d
59a1: 08           ex   af,af'
59a2: 08           ex   af,af'
59a3: 08           ex   af,af'
59a4: 08           ex   af,af'
59a5: 00           nop
59a6: 00           nop
59a7: 00           nop
59a8: 00           nop
59a9: 08           ex   af,af'
59aa: 00           nop
59ab: 00           nop
59ac: 08           ex   af,af'
59ad: 08           ex   af,af'
59ae: 08           ex   af,af'
59af: 08           ex   af,af'
59b0: 08           ex   af,af'
59b1: 10 10        djnz $59C3
59b3: 12           ld   (de),a
59b4: 12           ld   (de),a
59b5: 0c           inc  c
59b6: 00           nop
59b7: 00           nop
59b8: 00           nop
59b9: 10 00        djnz $59BB
59bb: 00           nop
59bc: 10 10        djnz $59CE
59be: 10 10        djnz $59D0
59c0: 10 0a        djnz $59CC
59c2: 12           ld   (de),a
59c3: 22 42 00     ld   ($0042),hl
59c6: 00           nop
59c7: 00           nop
59c8: 00           nop
59c9: 02           ld   (bc),a
59ca: 02           ld   (bc),a
59cb: 02           ld   (bc),a
59cc: 42           ld   b,d
59cd: 22 12 0a     ld   ($0A12),hl
59d0: 06 08        ld   b,$08
59d2: 08           ex   af,af'
59d3: 08           ex   af,af'
59d4: 1c           inc  e
59d5: 00           nop
59d6: 00           nop
59d7: 00           nop
59d8: 00           nop
59d9: 0c           inc  c
59da: 08           ex   af,af'
59db: 08           ex   af,af'
59dc: 08           ex   af,af'
59dd: 08           ex   af,af'
59de: 08           ex   af,af'
59df: 08           ex   af,af'
59e0: 08           ex   af,af'
59e1: 49           ld   c,c
59e2: 49           ld   c,c
59e3: 49           ld   c,c
59e4: 49           ld   c,c
59e5: 00           nop
59e6: 00           nop
59e7: 00           nop
59e8: 00           nop
59e9: 00           nop
59ea: 00           nop
59eb: 00           nop
59ec: 36 49        ld   (hl),$49
59ee: 49           ld   c,c
59ef: 49           ld   c,c
59f0: 49           ld   c,c
59f1: 42           ld   b,d
59f2: 42           ld   b,d
59f3: 42           ld   b,d
59f4: 42           ld   b,d
59f5: 00           nop
59f6: 00           nop
59f7: 00           nop
59f8: 00           nop
59f9: 00           nop
59fa: 00           nop
59fb: 00           nop
59fc: 3a 46 42     ld   a,($4246)
59ff: 42           ld   b,d
5a00: 42           ld   b,d
5a01: 41           ld   b,c
5a02: 41           ld   b,c
5a03: 22 1c 00     ld   ($001C),hl
5a06: 00           nop
5a07: 00           nop
5a08: 00           nop
5a09: 00           nop
5a0a: 00           nop
5a0b: 00           nop
5a0c: 1c           inc  e
5a0d: 22 41 41     ld   ($4141),hl
5a10: 41           ld   b,c
5a11: 42           ld   b,d
5a12: 26 1a        ld   h,$1A
5a14: 02           ld   (bc),a
5a15: 02           ld   (bc),a
5a16: 02           ld   (bc),a
5a17: 02           ld   (bc),a
5a18: 00           nop
5a19: 00           nop
5a1a: 00           nop
5a1b: 00           nop
5a1c: 1a           ld   a,(de)
5a1d: 26 42        ld   h,$42
5a1f: 42           ld   b,d
5a20: 42           ld   b,d
5a21: 42           ld   b,d
5a22: 64           ld   h,h
5a23: 58           ld   e,b
5a24: 40           ld   b,b
5a25: 40           ld   b,b
5a26: 40           ld   b,b
5a27: 40           ld   b,b
5a28: 00           nop
5a29: 00           nop
5a2a: 00           nop
5a2b: 00           nop
5a2c: 58           ld   e,b
5a2d: 64           ld   h,h
5a2e: 42           ld   b,d
5a2f: 42           ld   b,d
5a30: 42           ld   b,d
5a31: 02           ld   (bc),a
5a32: 02           ld   (bc),a
5a33: 02           ld   (bc),a
5a34: 02           ld   (bc),a
5a35: 00           nop
5a36: 00           nop
5a37: 00           nop
5a38: 00           nop
5a39: 00           nop
5a3a: 00           nop
5a3b: 00           nop
5a3c: 32 4a 06     ld   ($064A),a
5a3f: 02           ld   (bc),a
5a40: 02           ld   (bc),a
5a41: 40           ld   b,b
5a42: 40           ld   b,b
5a43: 42           ld   b,d
5a44: 3c           inc  a
5a45: 00           nop
5a46: 00           nop
5a47: 00           nop
5a48: 00           nop
5a49: 00           nop
5a4a: 00           nop
5a4b: 00           nop
5a4c: 3c           inc  a
5a4d: 42           ld   b,d
5a4e: 02           ld   (bc),a
5a4f: 0c           inc  c
5a50: 30 08        jr   nc,$5A5A
5a52: 48           ld   c,b
5a53: 48           ld   c,b
5a54: 30 00        jr   nc,$5A56
5a56: 00           nop
5a57: 00           nop
5a58: 00           nop
5a59: 08           ex   af,af'
5a5a: 08           ex   af,af'
5a5b: 08           ex   af,af'
5a5c: 3e 08        ld   a,$08
5a5e: 08           ex   af,af'
5a5f: 08           ex   af,af'
5a60: 08           ex   af,af'
5a61: 42           ld   b,d
5a62: 42           ld   b,d
5a63: 42           ld   b,d
5a64: bc           cp   h
5a65: 00           nop
5a66: 00           nop
5a67: 00           nop
5a68: 00           nop
5a69: 00           nop
5a6a: 00           nop
5a6b: 00           nop
5a6c: 42           ld   b,d
5a6d: 42           ld   b,d
5a6e: 42           ld   b,d
5a6f: 42           ld   b,d
5a70: 42           ld   b,d
5a71: 14           inc  d
5a72: 14           inc  d
5a73: 08           ex   af,af'
5a74: 08           ex   af,af'
5a75: 00           nop
5a76: 00           nop
5a77: 00           nop
5a78: 00           nop
5a79: 00           nop
5a7a: 00           nop
5a7b: 00           nop
5a7c: 41           ld   b,c
5a7d: 41           ld   b,c
5a7e: 41           ld   b,c
5a7f: 22 22 55     ld   ($5522),hl
5a82: 55           ld   d,l
5a83: 22 22 00     ld   ($0022),hl
5a86: 00           nop
5a87: 00           nop
5a88: 00           nop
5a89: 00           nop
5a8a: 00           nop
5a8b: 00           nop
5a8c: 41           ld   b,c
5a8d: 41           ld   b,c
5a8e: 41           ld   b,c
5a8f: 49           ld   c,c
5a90: 49           ld   c,c
5a91: 24           inc  h
5a92: 24           inc  h
5a93: 42           ld   b,d
5a94: 42           ld   b,d
5a95: 00           nop
5a96: 00           nop
5a97: 00           nop
5a98: 00           nop
5a99: 00           nop
5a9a: 00           nop
5a9b: 00           nop
5a9c: 42           ld   b,d
5a9d: 42           ld   b,d
5a9e: 24           inc  h
5a9f: 24           inc  h
5aa0: 18 14        jr   $5AB6
5aa2: 08           ex   af,af'
5aa3: 08           ex   af,af'
5aa4: 08           ex   af,af'
5aa5: 04           inc  b
5aa6: 04           inc  b
5aa7: 02           ld   (bc),a
5aa8: 00           nop
5aa9: 00           nop
5aaa: 00           nop
5aab: 00           nop
5aac: 41           ld   b,c
5aad: 41           ld   b,c
5aae: 22 22 14     ld   ($1422),hl
5ab1: 04           inc  b
5ab2: 02           ld   (bc),a
5ab3: 01 3f 00     ld   bc,$003F
5ab6: 00           nop
5ab7: 00           nop
5ab8: 00           nop
5ab9: 00           nop
5aba: 00           nop
5abb: 00           nop
5abc: 7e           ld   a,(hl)
5abd: 40           ld   b,b
5abe: 20 10        jr   nz,$5AD0
5ac0: 08           ex   af,af'
5ac1: 10 10        djnz $5AD3
5ac3: 10 10        djnz $5AD5
5ac5: 60           ld   h,b
5ac6: 00           nop
5ac7: 00           nop
5ac8: 00           nop
5ac9: 60           ld   h,b
5aca: 10 10        djnz $5ADC
5acc: 10 10        djnz $5ADE
5ace: 10 0c        djnz $5ADC
5ad0: 10 08        djnz $5ADA
5ad2: 08           ex   af,af'
5ad3: 08           ex   af,af'
5ad4: 08           ex   af,af'
5ad5: 08           ex   af,af'
5ad6: 00           nop
5ad7: 00           nop
5ad8: 00           nop
5ad9: 08           ex   af,af'
5ada: 08           ex   af,af'
5adb: 08           ex   af,af'
5adc: 08           ex   af,af'
5add: 08           ex   af,af'
5ade: 00           nop
5adf: 00           nop
5ae0: 00           nop
5ae1: 04           inc  b
5ae2: 04           inc  b
5ae3: 04           inc  b
5ae4: 04           inc  b
5ae5: 03           inc  bc
5ae6: 00           nop
5ae7: 00           nop
5ae8: 00           nop
5ae9: 03           inc  bc
5aea: 04           inc  b
5aeb: 04           inc  b
5aec: 04           inc  b
5aed: 04           inc  b
5aee: 04           inc  b
5aef: 18 04        jr   $5AF5
5af1: 00           nop
5af2: 00           nop
5af3: 00           nop
5af4: 00           nop
5af5: 00           nop
5af6: 00           nop
5af7: 00           nop
5af8: 00           nop
5af9: 06 49        ld   b,$49
5afb: 30 00        jr   nc,$5AFD
5afd: 00           nop
5afe: 00           nop
5aff: 00           nop
5b00: 00           nop
5b01: 8c           adc  a,h
5b02: f8           ret  m
5b03: 00           nop
5b04: 00           nop
5b05: 00           nop
5b06: 00           nop
5b07: 00           nop
5b08: 00           nop
5b09: 00           nop
5b0a: 00           nop
5b0b: 00           nop
5b0c: f8           ret  m
5b0d: 8c           adc  a,h
5b0e: 52           ld   d,d
5b0f: 21 52 00     ld   hl,$0052
5b12: 00           nop
5b13: 00           nop
5b14: 00           nop
5b15: 00           nop
5b16: 00           nop
5b17: 00           nop
5b18: 00           nop
5b19: 00           nop
5b1a: 00           nop
5b1b: 00           nop
5b1c: 00           nop
5b1d: 00           nop
5b1e: 00           nop
5b1f: 00           nop
5b20: 00           nop
5b21: 00           nop
5b22: 00           nop
5b23: 00           nop
5b24: 00           nop
5b25: 00           nop
5b26: 00           nop
5b27: 00           nop
5b28: 00           nop
5b29: 00           nop
5b2a: 00           nop
5b2b: 00           nop
5b2c: 00           nop
5b2d: 00           nop
5b2e: 00           nop
5b2f: 00           nop
5b30: 00           nop
5b31: 00           nop
5b32: 00           nop
5b33: 00           nop
5b34: 00           nop
5b35: 00           nop
5b36: 00           nop
5b37: 00           nop
5b38: 00           nop
5b39: 00           nop
5b3a: 00           nop
5b3b: 00           nop
5b3c: 00           nop
5b3d: 00           nop
5b3e: 00           nop
5b3f: 00           nop
5b40: 00           nop
5b41: 00           nop
5b42: 00           nop
5b43: 00           nop
5b44: 00           nop
5b45: 00           nop
5b46: 00           nop
5b47: 00           nop
5b48: 00           nop
5b49: 00           nop
5b4a: 00           nop
5b4b: 00           nop
5b4c: 00           nop
5b4d: 00           nop
5b4e: 00           nop
5b4f: 00           nop
5b50: 00           nop
5b51: 00           nop
5b52: 00           nop
5b53: 00           nop
5b54: 00           nop
5b55: 00           nop
5b56: 00           nop
5b57: 00           nop
5b58: 00           nop
5b59: 00           nop
5b5a: 00           nop
5b5b: 00           nop
5b5c: 00           nop
5b5d: 00           nop
5b5e: 00           nop
5b5f: 00           nop
5b60: 00           nop
5b61: 00           nop
5b62: 00           nop
5b63: 00           nop
5b64: 00           nop
5b65: 00           nop
5b66: 00           nop
5b67: 00           nop
5b68: 00           nop
5b69: 00           nop
5b6a: 00           nop
5b6b: 00           nop
5b6c: 00           nop
5b6d: 00           nop
5b6e: 00           nop
5b6f: 00           nop
5b70: 00           nop
5b71: 00           nop
5b72: 00           nop
5b73: 00           nop
5b74: 00           nop
5b75: 00           nop
5b76: 00           nop
5b77: 00           nop
5b78: 00           nop
5b79: 00           nop
5b7a: 00           nop
5b7b: 00           nop
5b7c: 00           nop
5b7d: 00           nop
5b7e: 00           nop
5b7f: 00           nop
5b80: 00           nop
5b81: 00           nop
5b82: 00           nop
5b83: 00           nop
5b84: 00           nop
5b85: 00           nop
5b86: 00           nop
5b87: 00           nop
5b88: 00           nop
5b89: 00           nop
5b8a: 00           nop
5b8b: 00           nop
5b8c: 00           nop
5b8d: 00           nop
5b8e: 00           nop
5b8f: 00           nop
5b90: 00           nop
5b91: 00           nop
5b92: 00           nop
5b93: 00           nop
5b94: 00           nop
5b95: 00           nop
5b96: 00           nop
5b97: 00           nop
5b98: 00           nop
5b99: 00           nop
5b9a: 00           nop
5b9b: 00           nop
5b9c: 00           nop
5b9d: 00           nop
5b9e: 00           nop
5b9f: 00           nop
5ba0: 00           nop
5ba1: 00           nop
5ba2: 00           nop
5ba3: 00           nop
5ba4: 00           nop
5ba5: 00           nop
5ba6: 00           nop
5ba7: 00           nop
5ba8: 00           nop
5ba9: 00           nop
5baa: 00           nop
5bab: 00           nop
5bac: 00           nop
5bad: 00           nop
5bae: 00           nop
5baf: 00           nop
5bb0: 00           nop
5bb1: 00           nop
5bb2: 00           nop
5bb3: 00           nop
5bb4: 00           nop
5bb5: 00           nop
5bb6: 00           nop
5bb7: 00           nop
5bb8: 00           nop
5bb9: 00           nop
5bba: 00           nop
5bbb: 00           nop
5bbc: 00           nop
5bbd: 00           nop
5bbe: 00           nop
5bbf: 00           nop
5bc0: 00           nop
5bc1: 00           nop
5bc2: 00           nop
5bc3: 00           nop
5bc4: 00           nop
5bc5: 00           nop
5bc6: 00           nop
5bc7: 00           nop
5bc8: 00           nop
5bc9: 00           nop
5bca: 00           nop
5bcb: 00           nop
5bcc: 00           nop
5bcd: 00           nop
5bce: 00           nop
5bcf: 00           nop
5bd0: 00           nop
5bd1: 00           nop
5bd2: 00           nop
5bd3: 00           nop
5bd4: 00           nop
5bd5: 00           nop
5bd6: 00           nop
5bd7: 00           nop
5bd8: 00           nop
5bd9: 00           nop
5bda: 00           nop
5bdb: 00           nop
5bdc: 00           nop
5bdd: 00           nop
5bde: 00           nop
5bdf: 00           nop
5be0: 00           nop
5be1: 00           nop
5be2: 00           nop
5be3: 00           nop
5be4: 00           nop
5be5: 00           nop
5be6: 00           nop
5be7: 00           nop
5be8: 00           nop
5be9: 00           nop
5bea: 00           nop
5beb: 00           nop
5bec: 00           nop
5bed: 00           nop
5bee: 00           nop
5bef: 00           nop
5bf0: 00           nop
5bf1: 00           nop
5bf2: 00           nop
5bf3: 00           nop
5bf4: 00           nop
5bf5: 00           nop
5bf6: 00           nop
5bf7: 00           nop
5bf8: 00           nop
5bf9: 00           nop
5bfa: 00           nop
5bfb: 00           nop
5bfc: 00           nop
5bfd: 00           nop
5bfe: 00           nop
5bff: 00           nop
5c00: 00           nop
5c01: 00           nop
5c02: 00           nop
5c03: 00           nop
5c04: 00           nop
5c05: 00           nop
5c06: 00           nop
5c07: 00           nop
5c08: 00           nop
5c09: 00           nop
5c0a: 00           nop
5c0b: 00           nop
5c0c: 00           nop
5c0d: 00           nop
5c0e: 00           nop
5c0f: 00           nop
5c10: 00           nop
5c11: 00           nop
5c12: 00           nop
5c13: 00           nop
5c14: 00           nop
5c15: 00           nop
5c16: 00           nop
5c17: 00           nop
5c18: 00           nop
5c19: 00           nop
5c1a: 00           nop
5c1b: 00           nop
5c1c: 00           nop
5c1d: 00           nop
5c1e: 00           nop
5c1f: 00           nop
5c20: 00           nop
5c21: 00           nop
5c22: 00           nop
5c23: 00           nop
5c24: 00           nop
5c25: 00           nop
5c26: 00           nop
5c27: 00           nop
5c28: 00           nop
5c29: 00           nop
5c2a: 00           nop
5c2b: 00           nop
5c2c: 00           nop
5c2d: 00           nop
5c2e: 00           nop
5c2f: 00           nop
5c30: 00           nop
5c31: 00           nop
5c32: 00           nop
5c33: 00           nop
5c34: 00           nop
5c35: 00           nop
5c36: 00           nop
5c37: 00           nop
5c38: 00           nop
5c39: 00           nop
5c3a: 00           nop
5c3b: 00           nop
5c3c: 00           nop
5c3d: 00           nop
5c3e: 00           nop
5c3f: 00           nop
5c40: 00           nop
5c41: 00           nop
5c42: 00           nop
5c43: 00           nop
5c44: 00           nop
5c45: 00           nop
5c46: 00           nop
5c47: 00           nop
5c48: 00           nop
5c49: 00           nop
5c4a: 00           nop
5c4b: 00           nop
5c4c: 00           nop
5c4d: 00           nop
5c4e: 00           nop
5c4f: 00           nop
5c50: 00           nop
5c51: 00           nop
5c52: 00           nop
5c53: 00           nop
5c54: 00           nop
5c55: 00           nop
5c56: 00           nop
5c57: 00           nop
5c58: 00           nop
5c59: 00           nop
5c5a: 00           nop
5c5b: 00           nop
5c5c: 00           nop
5c5d: 00           nop
5c5e: 00           nop
5c5f: 00           nop
5c60: 00           nop
5c61: 00           nop
5c62: 00           nop
5c63: 00           nop
5c64: 00           nop
5c65: 00           nop
5c66: 00           nop
5c67: 00           nop
5c68: 00           nop
5c69: 00           nop
5c6a: 00           nop
5c6b: 00           nop
5c6c: 00           nop
5c6d: 00           nop
5c6e: 00           nop
5c6f: 00           nop
5c70: 00           nop
5c71: 00           nop
5c72: 00           nop
5c73: 00           nop
5c74: 00           nop
5c75: 00           nop
5c76: 00           nop
5c77: 00           nop
5c78: 00           nop
5c79: 00           nop
5c7a: 00           nop
5c7b: 00           nop
5c7c: 00           nop
5c7d: 00           nop
5c7e: 00           nop
5c7f: 00           nop
5c80: 00           nop
5c81: 00           nop
5c82: 00           nop
5c83: 00           nop
5c84: 00           nop
5c85: 00           nop
5c86: 00           nop
5c87: 00           nop
5c88: 00           nop
5c89: 00           nop
5c8a: 00           nop
5c8b: 00           nop
5c8c: 00           nop
5c8d: 00           nop
5c8e: 00           nop
5c8f: 00           nop
5c90: 00           nop
5c91: 00           nop
5c92: 00           nop
5c93: 00           nop
5c94: 00           nop
5c95: 00           nop
5c96: 00           nop
5c97: 00           nop
5c98: 00           nop
5c99: 00           nop
5c9a: 00           nop
5c9b: 00           nop
5c9c: 00           nop
5c9d: 00           nop
5c9e: 00           nop
5c9f: 00           nop
5ca0: 00           nop
5ca1: 00           nop
5ca2: 00           nop
5ca3: 00           nop
5ca4: 00           nop
5ca5: 00           nop
5ca6: 00           nop
5ca7: 00           nop
5ca8: 00           nop
5ca9: 00           nop
5caa: 00           nop
5cab: 00           nop
5cac: 00           nop
5cad: 00           nop
5cae: 00           nop
5caf: 00           nop
5cb0: 00           nop
5cb1: 00           nop
5cb2: 00           nop
5cb3: 00           nop
5cb4: 00           nop
5cb5: 00           nop
5cb6: 00           nop
5cb7: 00           nop
5cb8: 00           nop
5cb9: 00           nop
5cba: 00           nop
5cbb: 00           nop
5cbc: 00           nop
5cbd: 00           nop
5cbe: 00           nop
5cbf: 00           nop
5cc0: 00           nop
5cc1: 00           nop
5cc2: 00           nop
5cc3: 00           nop
5cc4: 00           nop
5cc5: 00           nop
5cc6: 00           nop
5cc7: 00           nop
5cc8: 00           nop
5cc9: 00           nop
5cca: 00           nop
5ccb: 00           nop
5ccc: 00           nop
5ccd: 00           nop
5cce: 00           nop
5ccf: 00           nop
5cd0: 00           nop
5cd1: 00           nop
5cd2: 00           nop
5cd3: 00           nop
5cd4: 00           nop
5cd5: 00           nop
5cd6: 00           nop
5cd7: 00           nop
5cd8: 00           nop
5cd9: 00           nop
5cda: 00           nop
5cdb: 00           nop
5cdc: 00           nop
5cdd: 00           nop
5cde: 00           nop
5cdf: 00           nop
5ce0: 00           nop
5ce1: 00           nop
5ce2: 00           nop
5ce3: 00           nop
5ce4: 00           nop
5ce5: 00           nop
5ce6: 00           nop
5ce7: 00           nop
5ce8: 00           nop
5ce9: 00           nop
5cea: 00           nop
5ceb: 00           nop
5cec: 00           nop
5ced: 00           nop
5cee: 00           nop
5cef: 00           nop
5cf0: 00           nop
5cf1: 00           nop
5cf2: 00           nop
5cf3: 00           nop
5cf4: 00           nop
5cf5: 00           nop
5cf6: 00           nop
5cf7: 00           nop
5cf8: 00           nop
5cf9: 00           nop
5cfa: 00           nop
5cfb: 00           nop
5cfc: 00           nop
5cfd: 00           nop
5cfe: 00           nop
5cff: 00           nop
5d00: 00           nop
5d01: 00           nop
5d02: 00           nop
5d03: 00           nop
5d04: 00           nop
5d05: 00           nop
5d06: 00           nop
5d07: 00           nop
5d08: 00           nop
5d09: 00           nop
5d0a: 00           nop
5d0b: 00           nop
5d0c: 00           nop
5d0d: 00           nop
5d0e: 00           nop
5d0f: 00           nop
5d10: 00           nop
5d11: 21 21 51     ld   hl,$5121
5d14: 4e           ld   c,(hl)
5d15: 00           nop
5d16: 00           nop
5d17: 00           nop
5d18: 00           nop
5d19: 00           nop
5d1a: 00           nop
5d1b: 00           nop
5d1c: 00           nop
5d1d: 00           nop
5d1e: 40           ld   b,b
5d1f: 5c           ld   e,h
5d20: 22 42 42     ld   ($4242),hl
5d23: 22 1f 01     ld   ($011F),hl
5d26: 01 00 00     ld   bc,$0000
5d29: 00           nop
5d2a: 30 48        jr   nc,$5D74
5d2c: 48           ld   c,b
5d2d: 44           ld   b,h
5d2e: 24           inc  h
5d2f: 3c           inc  a
5d30: 4e           ld   c,(hl)
5d31: 10 10        djnz $5D43
5d33: 10 10        djnz $5D45
5d35: 00           nop
5d36: 00           nop
5d37: 00           nop
5d38: 00           nop
5d39: 00           nop
5d3a: 00           nop
5d3b: 00           nop
5d3c: 46           ld   b,(hl)
5d3d: 29           add  hl,hl
5d3e: 10 10        djnz $5D50
5d40: 10 21        djnz $5D63
5d42: 21 11 0e     ld   hl,$0E11
5d45: 00           nop
5d46: 00           nop
5d47: 00           nop
5d48: 00           nop
5d49: 10 08        djnz $5D53
5d4b: 08           ex   af,af'
5d4c: 08           ex   af,af'
5d4d: 10 10        djnz $5D5F
5d4f: 1c           inc  e
5d50: 22 14 22     ld   ($2214),hl
5d53: 22 41 00     ld   ($0041),hl
5d56: 00           nop
5d57: 00           nop
5d58: 00           nop
5d59: 01 02 02     ld   bc,$0202
5d5c: 04           inc  b
5d5d: 04           inc  b
5d5e: 08           ex   af,af'
5d5f: 08           ex   af,af'
5d60: 14           inc  d
5d61: 44           ld   b,h
5d62: 24           inc  h
5d63: 24           inc  h
5d64: 5a           ld   e,d
5d65: 02           ld   (bc),a
5d66: 01 01 00     ld   bc,$0001
5d69: 00           nop
5d6a: 00           nop
5d6b: 00           nop
5d6c: 00           nop
5d6d: 00           nop
5d6e: 00           nop
5d6f: 48           ld   c,b
5d70: 48           ld   c,b
5d71: 24           inc  h
5d72: 24           inc  h
5d73: 24           inc  h
5d74: 24           inc  h
5d75: 00           nop
5d76: 00           nop
5d77: 00           nop
5d78: 00           nop
5d79: 00           nop
5d7a: 00           nop
5d7b: 00           nop
5d7c: 00           nop
5d7d: 46           ld   b,(hl)
5d7e: 3d           dec  a
5d7f: 24           inc  h
5d80: 24           inc  h
5d81: 21 21 11     ld   hl,$1121
5d84: 0e 00        ld   c,$00
5d86: 00           nop
5d87: 00           nop
5d88: 00           nop
5d89: 00           nop
5d8a: 00           nop
5d8b: 00           nop
5d8c: 00           nop
5d8d: 00           nop
5d8e: 7c           ld   a,h
5d8f: 12           ld   (de),a
5d90: 21 08 04     ld   hl,$0408
5d93: 02           ld   (bc),a
5d94: 7f           ld   a,a
5d95: 00           nop
5d96: 00           nop
5d97: 00           nop
5d98: 00           nop
5d99: 7f           ld   a,a
5d9a: 02           ld   (bc),a
5d9b: 04           inc  b
5d9c: 08           ex   af,af'
5d9d: 10 20        djnz $5DBF
5d9f: 20 10        jr   nz,$5DB1
5da1: 42           ld   b,d
5da2: 42           ld   b,d
5da3: 81           add  a,c
5da4: ff           rst  $38
5da5: 00           nop
5da6: 00           nop
5da7: 00           nop
5da8: 00           nop
5da9: 00           nop
5daa: 00           nop
5dab: 00           nop
5dac: 00           nop
5dad: 18 18        jr   $5DC7
5daf: 24           inc  h
5db0: 24           inc  h
5db1: 41           ld   b,c
5db2: 41           ld   b,c
5db3: 22 1c 00     ld   ($001C),hl
5db6: 00           nop
5db7: 00           nop
5db8: 00           nop
5db9: 1c           inc  e
5dba: 22 41 41     ld   ($4141),hl
5dbd: 41           ld   b,c
5dbe: 7f           ld   a,a
5dbf: 41           ld   b,c
5dc0: 41           ld   b,c
5dc1: 00           nop
5dc2: 00           nop
5dc3: 00           nop
5dc4: 00           nop
5dc5: 00           nop
5dc6: 00           nop
5dc7: 00           nop
5dc8: 00           nop
5dc9: 00           nop
5dca: 36 36        ld   (hl),$36
5dcc: 00           nop
5dcd: 00           nop
5dce: 00           nop
5dcf: 00           nop
5dd0: 00           nop
5dd1: 3e 3e        ld   a,$3E
5dd3: 1c           inc  e
5dd4: 08           ex   af,af'
5dd5: 00           nop
5dd6: 00           nop
5dd7: 00           nop
5dd8: 00           nop
5dd9: 00           nop
5dda: 22 77 77     ld   ($7777),hl
5ddd: 7f           ld   a,a
5dde: 7f           ld   a,a
5ddf: 7f           ld   a,a
5de0: 7f           ld   a,a
5de1: 3e 1c        ld   a,$1C
5de3: 1c           inc  e
5de4: 08           ex   af,af'
5de5: 08           ex   af,af'
5de6: 00           nop
5de7: 00           nop
5de8: 00           nop
5de9: 08           ex   af,af'
5dea: 08           ex   af,af'
5deb: 1c           inc  e
5dec: 1c           inc  e
5ded: 3e 3e        ld   a,$3E
5def: 7f           ld   a,a
5df0: 3e 7f        ld   a,$7F
5df2: 2a 08 08     ld   hl,($0808)
5df5: 3e 00        ld   a,$00
5df7: 00           nop
5df8: 00           nop
5df9: 1c           inc  e
5dfa: 3e 3e        ld   a,$3E
5dfc: 3e 1c        ld   a,$1C
5dfe: 7f           ld   a,a
5dff: 7f           ld   a,a
5e00: 7f           ld   a,a
5e01: 7f           ld   a,a
5e02: 3e 08        ld   a,$08
5e04: 08           ex   af,af'
5e05: 1c           inc  e
5e06: 00           nop
5e07: 00           nop
5e08: 00           nop
5e09: 08           ex   af,af'
5e0a: 1c           inc  e
5e0b: 3e 3e        ld   a,$3E
5e0d: 7f           ld   a,a
5e0e: 7f           ld   a,a
5e0f: 7f           ld   a,a
5e10: 7f           ld   a,a
5e11: 40           ld   b,b
5e12: 00           nop
5e13: 7e           ld   a,(hl)
5e14: 00           nop
5e15: 00           nop
5e16: 00           nop
5e17: 00           nop
5e18: 00           nop
5e19: 00           nop
5e1a: 00           nop
5e1b: 40           ld   b,b
5e1c: 30 0c        jr   nc,$5E2A
5e1e: 02           ld   (bc),a
5e1f: 0c           inc  c
5e20: 30 02        jr   nc,$5E24
5e22: 00           nop
5e23: 7e           ld   a,(hl)
5e24: 00           nop
5e25: 00           nop
5e26: 00           nop
5e27: 00           nop
5e28: 00           nop
5e29: 00           nop
5e2a: 00           nop
5e2b: 02           ld   (bc),a
5e2c: 0c           inc  c
5e2d: 30 40        jr   nc,$5E6F
5e2f: 30 0c        jr   nc,$5E3D
5e31: 46           ld   b,(hl)
5e32: 39           add  hl,sp
5e33: 00           nop
5e34: 00           nop
5e35: 00           nop
5e36: 00           nop
5e37: 00           nop
5e38: 00           nop
5e39: 00           nop
5e3a: 00           nop
5e3b: 00           nop
5e3c: 00           nop
5e3d: 00           nop
5e3e: 46           ld   b,(hl)
5e3f: 39           add  hl,sp
5e40: 00           nop
5e41: 7e           ld   a,(hl)
5e42: 00           nop
5e43: 00           nop
5e44: 00           nop
5e45: 00           nop
5e46: 00           nop
5e47: 00           nop
5e48: 00           nop
5e49: 00           nop
5e4a: 00           nop
5e4b: 00           nop
5e4c: 00           nop
5e4d: 7e           ld   a,(hl)
5e4e: 00           nop
5e4f: 7e           ld   a,(hl)
5e50: 00           nop
5e51: 08           ex   af,af'
5e52: 08           ex   af,af'
5e53: 08           ex   af,af'
5e54: 08           ex   af,af'
5e55: 08           ex   af,af'
5e56: 08           ex   af,af'
5e57: 08           ex   af,af'
5e58: 08           ex   af,af'
5e59: 30 08        jr   nc,$5E63
5e5b: 08           ex   af,af'
5e5c: 08           ex   af,af'
5e5d: 08           ex   af,af'
5e5e: 08           ex   af,af'
5e5f: 08           ex   af,af'
5e60: 08           ex   af,af'
5e61: 08           ex   af,af'
5e62: 08           ex   af,af'
5e63: 08           ex   af,af'
5e64: 08           ex   af,af'
5e65: 08           ex   af,af'
5e66: 08           ex   af,af'
5e67: 08           ex   af,af'
5e68: 06 08        ld   b,$08
5e6a: 08           ex   af,af'
5e6b: 08           ex   af,af'
5e6c: 08           ex   af,af'
5e6d: 08           ex   af,af'
5e6e: 08           ex   af,af'
5e6f: 08           ex   af,af'
5e70: 08           ex   af,af'
5e71: 00           nop
5e72: 00           nop
5e73: 00           nop
5e74: 00           nop
5e75: 00           nop
5e76: 00           nop
5e77: 00           nop
5e78: 00           nop
5e79: 0e 10        ld   c,$10
5e7b: 08           ex   af,af'
5e7c: 04           inc  b
5e7d: 02           ld   (bc),a
5e7e: 1e 00        ld   e,$00
5e80: 00           nop
5e81: 20 11        jr   nz,$5E94
5e83: 12           ld   (de),a
5e84: 14           inc  d
5e85: 08           ex   af,af'
5e86: 00           nop
5e87: 00           nop
5e88: 00           nop
5e89: 80           add  a,b
5e8a: 80           add  a,b
5e8b: 80           add  a,b
5e8c: 40           ld   b,b
5e8d: 40           ld   b,b
5e8e: 40           ld   b,b
5e8f: 20 20        jr   nz,$5EB1
5e91: 00           nop
5e92: 00           nop
5e93: 00           nop
5e94: 00           nop
5e95: 00           nop
5e96: 00           nop
5e97: 00           nop
5e98: 00           nop
5e99: 00           nop
5e9a: 00           nop
5e9b: 00           nop
5e9c: 00           nop
5e9d: 36 49        ld   (hl),$49
5e9f: 49           ld   c,c
5ea0: 36 24        ld   (hl),$24
5ea2: 48           ld   c,b
5ea3: 90           sub  b
5ea4: 00           nop
5ea5: 00           nop
5ea6: 00           nop
5ea7: 00           nop
5ea8: 00           nop
5ea9: 00           nop
5eaa: 00           nop
5eab: 90           sub  b
5eac: 48           ld   c,b
5ead: 24           inc  h
5eae: 12           ld   (de),a
5eaf: 09           add  hl,bc
5eb0: 12           ld   (de),a
5eb1: 24           inc  h
5eb2: 12           ld   (de),a
5eb3: 09           add  hl,bc
5eb4: 00           nop
5eb5: 00           nop
5eb6: 00           nop
5eb7: 00           nop
5eb8: 00           nop
5eb9: 00           nop
5eba: 00           nop
5ebb: 09           add  hl,bc
5ebc: 12           ld   (de),a
5ebd: 24           inc  h
5ebe: 48           ld   c,b
5ebf: 90           sub  b
5ec0: 48           ld   c,b
5ec1: 00           nop
5ec2: 00           nop
5ec3: 7f           ld   a,a
5ec4: 00           nop
5ec5: 00           nop
5ec6: 00           nop
5ec7: 00           nop
5ec8: 00           nop
5ec9: 00           nop
5eca: 08           ex   af,af'
5ecb: 08           ex   af,af'
5ecc: 08           ex   af,af'
5ecd: 7f           ld   a,a
5ece: 08           ex   af,af'
5ecf: 08           ex   af,af'
5ed0: 08           ex   af,af'
5ed1: 00           nop
5ed2: 18 18        jr   $5EEC
5ed4: 00           nop
5ed5: 00           nop
5ed6: 00           nop
5ed7: 00           nop
5ed8: 00           nop
5ed9: 00           nop
5eda: 00           nop
5edb: 18 18        jr   $5EF5
5edd: 00           nop
5ede: 00           nop
5edf: 7e           ld   a,(hl)
5ee0: 00           nop
5ee1: 00           nop
5ee2: 00           nop
5ee3: 00           nop
5ee4: 00           nop
5ee5: 00           nop
5ee6: 00           nop
5ee7: 00           nop
5ee8: 00           nop
5ee9: 00           nop
5eea: 18 24        jr   $5F10
5eec: 24           inc  h
5eed: 18 00        jr   $5EEF
5eef: 00           nop
5ef0: 00           nop
5ef1: 0c           inc  c
5ef2: 10 08        djnz $5EFC
5ef4: 04           inc  b
5ef5: 3c           inc  a
5ef6: 00           nop
5ef7: 00           nop
5ef8: 00           nop
5ef9: 08           ex   af,af'
5efa: 0c           inc  c
5efb: 08           ex   af,af'
5efc: 08           ex   af,af'
5efd: 1c           inc  e
5efe: 00           nop
5eff: 3e 00        ld   a,$00
5f01: 14           inc  d
5f02: 14           inc  d
5f03: 3c           inc  a
5f04: 10 10        djnz $5F16
5f06: 00           nop
5f07: 00           nop
5f08: 00           nop
5f09: 08           ex   af,af'
5f0a: 0c           inc  c
5f0b: 08           ex   af,af'
5f0c: 08           ex   af,af'
5f0d: 1c           inc  e
5f0e: 00           nop
5f0f: 3e 00        ld   a,$00
5f11: 0e 19        ld   c,$19
5f13: 29           add  hl,hl
5f14: 46           ld   b,(hl)
5f15: 00           nop
5f16: 00           nop
5f17: 00           nop
5f18: 00           nop
5f19: 30 48        jr   nc,$5F63
5f1b: 48           ld   c,b
5f1c: 08           ex   af,af'
5f1d: 08           ex   af,af'
5f1e: 3e 08        ld   a,$08
5f20: 08           ex   af,af'
5f21: 7f           ld   a,a
5f22: 08           ex   af,af'
5f23: 08           ex   af,af'
5f24: 08           ex   af,af'
5f25: 00           nop
5f26: 00           nop
5f27: 00           nop
5f28: 00           nop
5f29: 41           ld   b,c
5f2a: 41           ld   b,c
5f2b: 22 22 14     ld   ($1422),hl
5f2e: 7f           ld   a,a
5f2f: 08           ex   af,af'
5f30: 08           ex   af,af'
5f31: 08           ex   af,af'
5f32: 08           ex   af,af'
5f33: 08           ex   af,af'
5f34: 06 00        ld   b,$00
5f36: 00           nop
5f37: 00           nop
5f38: 00           nop
5f39: 30 08        jr   nc,$5F43
5f3b: 08           ex   af,af'
5f3c: 08           ex   af,af'
5f3d: 08           ex   af,af'
5f3e: 08           ex   af,af'
5f3f: 1c           inc  e
5f40: 08           ex   af,af'
5f41: 29           add  hl,hl
5f42: 69           ld   l,c
5f43: 49           ld   c,c
5f44: 69           ld   l,c
5f45: 00           nop
5f46: 00           nop
5f47: 00           nop
5f48: 00           nop
5f49: 0f           rrca
5f4a: 11 11 11     ld   de,$1111
5f4d: 0f           rrca
5f4e: 09           add  hl,bc
5f4f: 1d           dec  e
5f50: 69           ld   l,c
5f51: 49           ld   c,c
5f52: 3e 08        ld   a,$08
5f54: 08           ex   af,af'
5f55: 00           nop
5f56: 00           nop
5f57: 00           nop
5f58: 00           nop
5f59: 00           nop
5f5a: 08           ex   af,af'
5f5b: 08           ex   af,af'
5f5c: 3e 49        ld   a,$49
5f5e: 09           add  hl,bc
5f5f: 09           add  hl,bc
5f60: 09           add  hl,bc
5f61: 41           ld   b,c
5f62: 41           ld   b,c
5f63: 22 1c 00     ld   ($001C),hl
5f66: 00           nop
5f67: 00           nop
5f68: 00           nop
5f69: 08           ex   af,af'
5f6a: 08           ex   af,af'
5f6b: 00           nop
5f6c: 00           nop
5f6d: 08           ex   af,af'
5f6e: 08           ex   af,af'
5f6f: 04           inc  b
5f70: 42           ld   b,d
5f71: 09           add  hl,bc
5f72: 09           add  hl,bc
5f73: 09           add  hl,bc
5f74: 76           halt
5f75: 00           nop
5f76: 00           nop
5f77: 00           nop
5f78: 00           nop
5f79: 00           nop
5f7a: 00           nop
5f7b: 08           ex   af,af'
5f7c: 7e           ld   a,(hl)
5f7d: 09           add  hl,bc
5f7e: 09           add  hl,bc
5f7f: 09           add  hl,bc
5f80: 39           add  hl,sp
5f81: 09           add  hl,bc
5f82: 09           add  hl,bc
5f83: 09           add  hl,bc
5f84: 79           ld   a,c
5f85: 00           nop
5f86: 00           nop
5f87: 00           nop
5f88: 00           nop
5f89: 76           halt
5f8a: 09           add  hl,bc
5f8b: 09           add  hl,bc
5f8c: 09           add  hl,bc
5f8d: 09           add  hl,bc
5f8e: 09           add  hl,bc
5f8f: 7f           ld   a,a
5f90: 09           add  hl,bc
5f91: 04           inc  b
5f92: 00           nop
5f93: 00           nop
5f94: 00           nop
5f95: 00           nop
5f96: 00           nop
5f97: 00           nop
5f98: 00           nop
5f99: 00           nop
5f9a: 00           nop
5f9b: 00           nop
5f9c: 00           nop
5f9d: 04           inc  b
5f9e: 02           ld   (bc),a
5f9f: fd           db   $fd
5fa0: 02           ld   (bc),a
5fa1: 20 00        jr   nz,$5FA3
5fa3: 00           nop
5fa4: 00           nop
5fa5: 00           nop
5fa6: 00           nop
5fa7: 00           nop
5fa8: 00           nop
5fa9: 00           nop
5faa: 00           nop
5fab: 00           nop
5fac: 00           nop
5fad: 20 40        jr   nz,$5FEF
5faf: bf           cp   a
5fb0: 40           ld   b,b
5fb1: 08           ex   af,af'
5fb2: 08           ex   af,af'
5fb3: 08           ex   af,af'
5fb4: 08           ex   af,af'
5fb5: 00           nop
5fb6: 00           nop
5fb7: 00           nop
5fb8: 00           nop
5fb9: 08           ex   af,af'
5fba: 14           inc  d
5fbb: 2a 08 08     ld   hl,($0808)
5fbe: 08           ex   af,af'
5fbf: 08           ex   af,af'
5fc0: 08           ex   af,af'
5fc1: 08           ex   af,af'
5fc2: 2a 14 08     ld   hl,($0814)
5fc5: 00           nop
5fc6: 00           nop
5fc7: 00           nop
5fc8: 00           nop
5fc9: 08           ex   af,af'
5fca: 08           ex   af,af'
5fcb: 08           ex   af,af'
5fcc: 08           ex   af,af'
5fcd: 08           ex   af,af'
5fce: 08           ex   af,af'
5fcf: 08           ex   af,af'
5fd0: 08           ex   af,af'
5fd1: 3f           ccf
5fd2: 3f           ccf
5fd3: 3f           ccf
5fd4: 3f           ccf
5fd5: 00           nop
5fd6: 00           nop
5fd7: 00           nop
5fd8: 00           nop
5fd9: 00           nop
5fda: 3f           ccf
5fdb: 3f           ccf
5fdc: 3f           ccf
5fdd: 3f           ccf
5fde: 3f           ccf
5fdf: 3f           ccf
5fe0: 3f           ccf
5fe1: 21 21 21     ld   hl,$2121
5fe4: 3f           ccf
5fe5: 00           nop
5fe6: 00           nop
5fe7: 00           nop
5fe8: 00           nop
5fe9: 00           nop
5fea: 3f           ccf
5feb: 21 21 21     ld   hl,$2121
5fee: 21 21 21     ld   hl,$2121
5ff1: 7f           ld   a,a
5ff2: 7f           ld   a,a
5ff3: 3e 1c        ld   a,$1C
5ff5: 00           nop
5ff6: 00           nop
5ff7: 00           nop
5ff8: 00           nop
5ff9: 00           nop
5ffa: 1c           inc  e
5ffb: 3e 7f        ld   a,$7F
5ffd: 7f           ld   a,a
5ffe: 7f           ld   a,a
5fff: 7f           ld   a,a
6000: 7f           ld   a,a
6001: 41           ld   b,c
6002: 41           ld   b,c
6003: 22 1c 00     ld   ($001C),hl
6006: 00           nop
6007: 00           nop
6008: 00           nop
6009: 00           nop
600a: 1c           inc  e
600b: 22 41 41     ld   ($4141),hl
600e: 41           ld   b,c
600f: 41           ld   b,c
6010: 41           ld   b,c
6011: 59           ld   e,c
6012: 41           ld   b,c
6013: 22 1c 00     ld   ($001C),hl
6016: 00           nop
6017: 00           nop
6018: 00           nop
6019: 00           nop
601a: 1c           inc  e
601b: 22 41 59     ld   ($5941),hl
601e: 45           ld   b,l
601f: 45           ld   b,l
6020: 45           ld   b,l
6021: 48           ld   c,b
6022: 48           ld   c,b
6023: 48           ld   c,b
6024: 48           ld   c,b
6025: 00           nop
6026: 00           nop
6027: 00           nop
6028: 00           nop
6029: 7e           ld   a,(hl)
602a: 49           ld   c,c
602b: 49           ld   c,c
602c: 49           ld   c,c
602d: 49           ld   c,c
602e: 7e           ld   a,(hl)
602f: 48           ld   c,b
6030: 48           ld   c,b
6031: 1c           inc  e
6032: 20 20        jr   nz,$6054
6034: 1e 00        ld   e,$00
6036: 00           nop
6037: 00           nop
6038: 00           nop
6039: 3c           inc  a
603a: 02           ld   (bc),a
603b: 02           ld   (bc),a
603c: 1c           inc  e
603d: 22 22 22     ld   ($2222),hl
6040: 22 00 00     ld   ($0000),hl
6043: 00           nop
6044: 00           nop
6045: 00           nop
6046: 00           nop
6047: 00           nop
6048: 00           nop
6049: 5e           ld   e,(hl)
604a: 74           ld   (hl),h
604b: 54           ld   d,h
604c: 54           ld   d,h
604d: 54           ld   d,h
604e: 00           nop
604f: 00           nop
6050: 00           nop
6051: 08           ex   af,af'
6052: 08           ex   af,af'
6053: 1c           inc  e
6054: 08           ex   af,af'
6055: 00           nop
6056: 00           nop
6057: 00           nop
6058: 00           nop
6059: 08           ex   af,af'
605a: 1c           inc  e
605b: 08           ex   af,af'
605c: 2a 7f 2a     ld   hl,($2A7F)
605f: 08           ex   af,af'
6060: 08           ex   af,af'
6061: 08           ex   af,af'
6062: 08           ex   af,af'
6063: 08           ex   af,af'
6064: 78           ld   a,b
6065: 00           nop
6066: 00           nop
6067: 00           nop
6068: 00           nop
6069: 00           nop
606a: 3c           inc  a
606b: 02           ld   (bc),a
606c: 01 09 09     ld   bc,$0909
606f: 0a           ld   a,(bc)
6070: 3c           inc  a
6071: 00           nop
6072: 00           nop
6073: 00           nop
6074: 00           nop
6075: 00           nop
6076: 00           nop
6077: 00           nop
6078: 00           nop
6079: 00           nop
607a: 00           nop
607b: 00           nop
607c: 00           nop
607d: 00           nop
607e: 1c           inc  e
607f: 1c           inc  e
6080: 1c           inc  e
6081: 1e 1f        ld   e,$1F
6083: 1f           rra
6084: 1f           rra
6085: 0e 00        ld   c,$00
6087: 00           nop
6088: 00           nop
6089: 30 70        jr   nc,$60FB
608b: d0           ret  nc
608c: 90           sub  b
608d: 10 10        djnz $609F
608f: 10 10        djnz $60A1
6091: cf           rst  $08
6092: 4f           ld   c,a
6093: 46           ld   b,(hl)
6094: 70           ld   (hl),b
6095: 78           ld   a,b
6096: 78           ld   a,b
6097: 30 00        jr   nc,$6099
6099: 00           nop
609a: 08           ex   af,af'
609b: 18 28        jr   $60C5
609d: 48           ld   c,b
609e: d8           ret  c
609f: 68           ld   l,b
60a0: 4e           ld   c,(hl)
60a1: 40           ld   b,b
60a2: 24           inc  h
60a3: 14           inc  d
60a4: 0c           inc  c
60a5: 3c           inc  a
60a6: 00           nop
60a7: 00           nop
60a8: 00           nop
60a9: 00           nop
60aa: 08           ex   af,af'
60ab: 10 20        djnz $60CD
60ad: 20 40        jr   nz,$60EF
60af: 40           ld   b,b
60b0: 40           ld   b,b
60b1: f4 14 14     call p,$1414
60b4: 14           inc  d
60b5: 14           inc  d
60b6: 14           inc  d
60b7: 14           inc  d
60b8: 14           inc  d
60b9: 00           nop
60ba: 00           nop
60bb: 00           nop
60bc: 00           nop
60bd: 00           nop
60be: 00           nop
60bf: fc 04 f4     call m,$F404
60c2: 14           inc  d
60c3: 14           inc  d
60c4: 14           inc  d
60c5: 14           inc  d
60c6: 14           inc  d
60c7: 14           inc  d
60c8: 14           inc  d
60c9: 14           inc  d
60ca: 14           inc  d
60cb: 14           inc  d
60cc: 14           inc  d
60cd: 14           inc  d
60ce: 14           inc  d
60cf: f4 04 fc     call p,$FC04
60d2: 00           nop
60d3: 00           nop
60d4: 00           nop
60d5: 00           nop
60d6: 00           nop
60d7: 00           nop
60d8: 00           nop
60d9: 14           inc  d
60da: 14           inc  d
60db: 14           inc  d
60dc: 14           inc  d
60dd: 14           inc  d
60de: 14           inc  d
60df: f4 04 08     call p,$0804
60e2: 08           ex   af,af'
60e3: 08           ex   af,af'
60e4: 08           ex   af,af'
60e5: 08           ex   af,af'
60e6: 08           ex   af,af'
60e7: 08           ex   af,af'
60e8: 08           ex   af,af'
60e9: 00           nop
60ea: 00           nop
60eb: 00           nop
60ec: 00           nop
60ed: 00           nop
60ee: 00           nop
60ef: 00           nop
60f0: f8           ret  m
60f1: 08           ex   af,af'
60f2: 08           ex   af,af'
60f3: 08           ex   af,af'
60f4: 08           ex   af,af'
60f5: 08           ex   af,af'
60f6: 08           ex   af,af'
60f7: 08           ex   af,af'
60f8: 08           ex   af,af'
60f9: 08           ex   af,af'
60fa: 08           ex   af,af'
60fb: 08           ex   af,af'
60fc: 08           ex   af,af'
60fd: 08           ex   af,af'
60fe: 08           ex   af,af'
60ff: 08           ex   af,af'
6100: f8           ret  m
6101: 00           nop
6102: 00           nop
6103: 00           nop
6104: 00           nop
6105: 00           nop
6106: 00           nop
6107: 00           nop
6108: 00           nop
6109: 08           ex   af,af'
610a: 08           ex   af,af'
610b: 08           ex   af,af'
610c: 08           ex   af,af'
610d: 08           ex   af,af'
610e: 08           ex   af,af'
610f: 08           ex   af,af'
6110: f8           ret  m
6111: ee bb        xor  $BB
6113: ee bb        xor  $BB
6115: ee bb        xor  $BB
6117: ee bb        xor  $BB
6119: ee bb        xor  $BB
611b: ee bb        xor  $BB
611d: ee bb        xor  $BB
611f: ee bb        xor  $BB
6121: 88           adc  a,b
6122: 22 88 22     ld   ($2288),hl
6125: 88           adc  a,b
6126: 22 88 22     ld   ($2288),hl
6129: 88           adc  a,b
612a: 22 88 22     ld   ($2288),hl
612d: 88           adc  a,b
612e: 22 88 22     ld   ($2288),hl
6131: 00           nop
6132: 00           nop
6133: 00           nop
6134: 00           nop
6135: 00           nop
6136: 00           nop
6137: 00           nop
6138: 00           nop
6139: ff           rst  $38
613a: ff           rst  $38
613b: ff           rst  $38
613c: ff           rst  $38
613d: ff           rst  $38
613e: ff           rst  $38
613f: ff           rst  $38
6140: ff           rst  $38
6141: 0f           rrca
6142: 0f           rrca
6143: 0f           rrca
6144: 0f           rrca
6145: 0f           rrca
6146: 0f           rrca
6147: 0f           rrca
6148: 0f           rrca
6149: 0f           rrca
614a: 0f           rrca
614b: 0f           rrca
614c: 0f           rrca
614d: 0f           rrca
614e: 0f           rrca
614f: 0f           rrca
6150: 0f           rrca
6151: c8           ret  z
6152: 24           inc  h
6153: 14           inc  d
6154: 14           inc  d
6155: 14           inc  d
6156: 14           inc  d
6157: 14           inc  d
6158: 14           inc  d
6159: 00           nop
615a: 00           nop
615b: 00           nop
615c: 00           nop
615d: 00           nop
615e: 00           nop
615f: e0           ret  po
6160: 10 e0        djnz $6142
6162: 00           nop
6163: 00           nop
6164: 00           nop
6165: 00           nop
6166: 00           nop
6167: 00           nop
6168: 00           nop
6169: 14           inc  d
616a: 14           inc  d
616b: 14           inc  d
616c: 14           inc  d
616d: 14           inc  d
616e: 24           inc  h
616f: c8           ret  z
6170: 10 20        djnz $6192
6172: 10 08        djnz $617C
6174: 08           ex   af,af'
6175: 08           ex   af,af'
6176: 08           ex   af,af'
6177: 08           ex   af,af'
6178: 08           ex   af,af'
6179: 00           nop
617a: 00           nop
617b: 00           nop
617c: 00           nop
617d: 00           nop
617e: 00           nop
617f: 00           nop
6180: c0           ret  nz
6181: 00           nop
6182: 00           nop
6183: 00           nop
6184: 00           nop
6185: 00           nop
6186: 00           nop
6187: 00           nop
6188: 00           nop
6189: 08           ex   af,af'
618a: 08           ex   af,af'
618b: 08           ex   af,af'
618c: 08           ex   af,af'
618d: 08           ex   af,af'
618e: 10 20        djnz $61B0
6190: c0           ret  nz
6191: 00           nop
6192: 00           nop
6193: 00           nop
6194: 00           nop
6195: 00           nop
6196: 00           nop
6197: 00           nop
6198: 00           nop
6199: 00           nop
619a: 00           nop
619b: 00           nop
619c: 00           nop
619d: 00           nop
619e: 00           nop
619f: 00           nop
61a0: ff           rst  $38
61a1: 08           ex   af,af'
61a2: 08           ex   af,af'
61a3: 08           ex   af,af'
61a4: 08           ex   af,af'
61a5: 08           ex   af,af'
61a6: 08           ex   af,af'
61a7: 08           ex   af,af'
61a8: 08           ex   af,af'
61a9: 08           ex   af,af'
61aa: 08           ex   af,af'
61ab: 08           ex   af,af'
61ac: 08           ex   af,af'
61ad: 08           ex   af,af'
61ae: 08           ex   af,af'
61af: 08           ex   af,af'
61b0: 08           ex   af,af'
61b1: f7           rst  $30
61b2: 14           inc  d
61b3: 14           inc  d
61b4: 14           inc  d
61b5: 14           inc  d
61b6: 14           inc  d
61b7: 14           inc  d
61b8: 14           inc  d
61b9: 00           nop
61ba: 00           nop
61bb: 00           nop
61bc: 00           nop
61bd: 00           nop
61be: 00           nop
61bf: ff           rst  $38
61c0: 00           nop
61c1: f7           rst  $30
61c2: 14           inc  d
61c3: 14           inc  d
61c4: 14           inc  d
61c5: 14           inc  d
61c6: 14           inc  d
61c7: 14           inc  d
61c8: 14           inc  d
61c9: 14           inc  d
61ca: 14           inc  d
61cb: 14           inc  d
61cc: 14           inc  d
61cd: 14           inc  d
61ce: 14           inc  d
61cf: f7           rst  $30
61d0: 00           nop
61d1: ff           rst  $38
61d2: 00           nop
61d3: 00           nop
61d4: 00           nop
61d5: 00           nop
61d6: 00           nop
61d7: 00           nop
61d8: 00           nop
61d9: 14           inc  d
61da: 14           inc  d
61db: 14           inc  d
61dc: 14           inc  d
61dd: 14           inc  d
61de: 14           inc  d
61df: f7           rst  $30
61e0: 00           nop
61e1: 08           ex   af,af'
61e2: 08           ex   af,af'
61e3: 08           ex   af,af'
61e4: 08           ex   af,af'
61e5: 08           ex   af,af'
61e6: 08           ex   af,af'
61e7: 08           ex   af,af'
61e8: 08           ex   af,af'
61e9: 00           nop
61ea: 00           nop
61eb: 00           nop
61ec: 00           nop
61ed: 00           nop
61ee: 00           nop
61ef: 00           nop
61f0: ff           rst  $38
61f1: 08           ex   af,af'
61f2: 08           ex   af,af'
61f3: 08           ex   af,af'
61f4: 08           ex   af,af'
61f5: 08           ex   af,af'
61f6: 08           ex   af,af'
61f7: 08           ex   af,af'
61f8: 08           ex   af,af'
61f9: 08           ex   af,af'
61fa: 08           ex   af,af'
61fb: 08           ex   af,af'
61fc: 08           ex   af,af'
61fd: 08           ex   af,af'
61fe: 08           ex   af,af'
61ff: 08           ex   af,af'
6200: ff           rst  $38
6201: 00           nop
6202: 00           nop
6203: 00           nop
6204: 00           nop
6205: 00           nop
6206: 00           nop
6207: 00           nop
6208: 00           nop
6209: 08           ex   af,af'
620a: 08           ex   af,af'
620b: 08           ex   af,af'
620c: 08           ex   af,af'
620d: 08           ex   af,af'
620e: 08           ex   af,af'
620f: 08           ex   af,af'
6210: ff           rst  $38
6211: ff           rst  $38
6212: ff           rst  $38
6213: ff           rst  $38
6214: ff           rst  $38
6215: ff           rst  $38
6216: ff           rst  $38
6217: ff           rst  $38
6218: ff           rst  $38
6219: ff           rst  $38
621a: ff           rst  $38
621b: ff           rst  $38
621c: ff           rst  $38
621d: ff           rst  $38
621e: ff           rst  $38
621f: ff           rst  $38
6220: ff           rst  $38
6221: aa           xor  d
6222: 55           ld   d,l
6223: aa           xor  d
6224: 55           ld   d,l
6225: aa           xor  d
6226: 55           ld   d,l
6227: aa           xor  d
6228: 55           ld   d,l
6229: aa           xor  d
622a: 55           ld   d,l
622b: aa           xor  d
622c: 55           ld   d,l
622d: aa           xor  d
622e: 55           ld   d,l
622f: aa           xor  d
6230: 55           ld   d,l
6231: ff           rst  $38
6232: ff           rst  $38
6233: ff           rst  $38
6234: ff           rst  $38
6235: ff           rst  $38
6236: ff           rst  $38
6237: ff           rst  $38
6238: ff           rst  $38
6239: 00           nop
623a: 00           nop
623b: 00           nop
623c: 00           nop
623d: 00           nop
623e: 00           nop
623f: 00           nop
6240: 00           nop
6241: f0           ret  p
6242: f0           ret  p
6243: f0           ret  p
6244: f0           ret  p
6245: f0           ret  p
6246: f0           ret  p
6247: f0           ret  p
6248: f0           ret  p
6249: f0           ret  p
624a: f0           ret  p
624b: f0           ret  p
624c: f0           ret  p
624d: f0           ret  p
624e: f0           ret  p
624f: f0           ret  p
6250: f0           ret  p
6251: 13           inc  de
6252: 14           inc  d
6253: 14           inc  d
6254: 14           inc  d
6255: 14           inc  d
6256: 14           inc  d
6257: 14           inc  d
6258: 14           inc  d
6259: 00           nop
625a: 00           nop
625b: 00           nop
625c: 00           nop
625d: 00           nop
625e: 00           nop
625f: 07           rlca
6260: 08           ex   af,af'
6261: 07           rlca
6262: 00           nop
6263: 00           nop
6264: 00           nop
6265: 00           nop
6266: 00           nop
6267: 00           nop
6268: 00           nop
6269: 14           inc  d
626a: 14           inc  d
626b: 14           inc  d
626c: 14           inc  d
626d: 14           inc  d
626e: 14           inc  d
626f: 13           inc  de
6270: 08           ex   af,af'
6271: 02           ld   (bc),a
6272: 04           inc  b
6273: 08           ex   af,af'
6274: 08           ex   af,af'
6275: 08           ex   af,af'
6276: 08           ex   af,af'
6277: 08           ex   af,af'
6278: 08           ex   af,af'
6279: 00           nop
627a: 00           nop
627b: 00           nop
627c: 00           nop
627d: 00           nop
627e: 00           nop
627f: 00           nop
6280: 01 00 00     ld   bc,$0000
6283: 00           nop
6284: 00           nop
6285: 00           nop
6286: 00           nop
6287: 00           nop
6288: 00           nop
6289: 08           ex   af,af'
628a: 08           ex   af,af'
628b: 08           ex   af,af'
628c: 08           ex   af,af'
628d: 08           ex   af,af'
628e: 04           inc  b
628f: 02           ld   (bc),a
6290: 01 ff 00     ld   bc,$00FF
6293: 00           nop
6294: 00           nop
6295: 00           nop
6296: 00           nop
6297: 00           nop
6298: 00           nop
6299: 00           nop
629a: 00           nop
629b: 00           nop
629c: 00           nop
629d: 00           nop
629e: 00           nop
629f: ff           rst  $38
62a0: 00           nop
62a1: 14           inc  d
62a2: 14           inc  d
62a3: 14           inc  d
62a4: 14           inc  d
62a5: 14           inc  d
62a6: 14           inc  d
62a7: 14           inc  d
62a8: 14           inc  d
62a9: 14           inc  d
62aa: 14           inc  d
62ab: 14           inc  d
62ac: 14           inc  d
62ad: 14           inc  d
62ae: 14           inc  d
62af: 14           inc  d
62b0: 14           inc  d
62b1: 17           rla
62b2: 14           inc  d
62b3: 14           inc  d
62b4: 14           inc  d
62b5: 14           inc  d
62b6: 14           inc  d
62b7: 14           inc  d
62b8: 14           inc  d
62b9: 00           nop
62ba: 00           nop
62bb: 00           nop
62bc: 00           nop
62bd: 00           nop
62be: 00           nop
62bf: 1f           rra
62c0: 10 17        djnz $62D9
62c2: 14           inc  d
62c3: 14           inc  d
62c4: 14           inc  d
62c5: 14           inc  d
62c6: 14           inc  d
62c7: 14           inc  d
62c8: 14           inc  d
62c9: 14           inc  d
62ca: 14           inc  d
62cb: 14           inc  d
62cc: 14           inc  d
62cd: 14           inc  d
62ce: 14           inc  d
62cf: 17           rla
62d0: 10 1f        djnz $62F1
62d2: 00           nop
62d3: 00           nop
62d4: 00           nop
62d5: 00           nop
62d6: 00           nop
62d7: 00           nop
62d8: 00           nop
62d9: 14           inc  d
62da: 14           inc  d
62db: 14           inc  d
62dc: 14           inc  d
62dd: 14           inc  d
62de: 14           inc  d
62df: 17           rla
62e0: 10 08        djnz $62EA
62e2: 08           ex   af,af'
62e3: 08           ex   af,af'
62e4: 08           ex   af,af'
62e5: 08           ex   af,af'
62e6: 08           ex   af,af'
62e7: 08           ex   af,af'
62e8: 08           ex   af,af'
62e9: 00           nop
62ea: 00           nop
62eb: 00           nop
62ec: 00           nop
62ed: 00           nop
62ee: 00           nop
62ef: 00           nop
62f0: 0f           rrca
62f1: 08           ex   af,af'
62f2: 08           ex   af,af'
62f3: 08           ex   af,af'
62f4: 08           ex   af,af'
62f5: 08           ex   af,af'
62f6: 08           ex   af,af'
62f7: 08           ex   af,af'
62f8: 08           ex   af,af'
62f9: 08           ex   af,af'
62fa: 08           ex   af,af'
62fb: 08           ex   af,af'
62fc: 08           ex   af,af'
62fd: 08           ex   af,af'
62fe: 08           ex   af,af'
62ff: 08           ex   af,af'
6300: 0f           rrca
6301: 00           nop
6302: 00           nop
6303: 00           nop
6304: 00           nop
6305: 00           nop
6306: 00           nop
6307: 00           nop
6308: 00           nop
6309: 08           ex   af,af'
630a: 08           ex   af,af'
630b: 08           ex   af,af'
630c: 08           ex   af,af'
630d: 08           ex   af,af'
630e: 08           ex   af,af'
630f: 08           ex   af,af'
6310: 0f           rrca
6311: 00           nop
6312: 00           nop
6313: 00           nop
6314: 00           nop
6315: 00           nop
6316: 00           nop
6317: 00           nop
6318: 00           nop
6319: 00           nop
631a: 00           nop
631b: 00           nop
631c: 00           nop
631d: 00           nop
631e: 00           nop
631f: 00           nop
6320: 00           nop
6321: 18 00        jr   $6323
6323: 00           nop
6324: 18 00        jr   $6326
6326: 00           nop
6327: 00           nop
6328: 00           nop
6329: 18 18        jr   $6343
632b: 18 18        jr   $6345
632d: 18 18        jr   $6347
632f: 18 18        jr   $6349
6331: 00           nop
6332: 00           nop
6333: 00           nop
6334: 00           nop
6335: 00           nop
6336: 00           nop
6337: 00           nop
6338: 00           nop
6339: 66           ld   h,(hl)
633a: 66           ld   h,(hl)
633b: 66           ld   h,(hl)
633c: 22 00 00     ld   ($0000),hl
633f: 00           nop
6340: 00           nop
6341: 7f           ld   a,a
6342: 36 36        ld   (hl),$36
6344: 00           nop
6345: 00           nop
6346: 00           nop
6347: 00           nop
6348: 00           nop
6349: 00           nop
634a: 36 36        ld   (hl),$36
634c: 7f           ld   a,a
634d: 7f           ld   a,a
634e: 36 36        ld   (hl),$36
6350: 7f           ld   a,a
6351: 6c           ld   l,h
6352: 6d           ld   l,l
6353: 7f           ld   a,a
6354: 3e 0c        ld   a,$0C
6356: 00           nop
6357: 00           nop
6358: 00           nop
6359: 0c           inc  c
635a: 3e 7f        ld   a,$7F
635c: 4d           ld   c,l
635d: 0d           dec  c
635e: 3f           ccf
635f: 3e 6c        ld   a,$6C
6361: 6c           ld   l,h
6362: f6 f6        or   $F6
6364: 63           ld   h,e
6365: 00           nop
6366: 00           nop
6367: 00           nop
6368: 00           nop
6369: 66           ld   h,(hl)
636a: 6f           ld   l,a
636b: 6f           ld   l,a
636c: 36 30        ld   (hl),$30
636e: 18 18        jr   $6388
6370: 0c           inc  c
6371: 73           ld   (hl),e
6372: 63           ld   h,e
6373: 7e           ld   a,(hl)
6374: 5c           ld   e,h
6375: 00           nop
6376: 00           nop
6377: 00           nop
6378: 00           nop
6379: 1c           inc  e
637a: 36 36        ld   (hl),$36
637c: 1c           inc  e
637d: 0c           inc  c
637e: 1e 1b        ld   e,$1B
6380: 5b           ld   e,e
6381: 00           nop
6382: 00           nop
6383: 00           nop
6384: 00           nop
6385: 00           nop
6386: 00           nop
6387: 00           nop
6388: 00           nop
6389: 1c           inc  e
638a: 1c           inc  e
638b: 18 0c        jr   $6399
638d: 06 00        ld   b,$00
638f: 00           nop
6390: 00           nop
6391: 18 18        jr   $63AB
6393: 30 60        jr   nc,$63F5
6395: 00           nop
6396: 00           nop
6397: 00           nop
6398: 00           nop
6399: 60           ld   h,b
639a: 30 18        jr   nc,$63B4
639c: 18 0c        jr   $63AA
639e: 0c           inc  c
639f: 0c           inc  c
63a0: 0c           inc  c
63a1: 0c           inc  c
63a2: 0c           inc  c
63a3: 06 03        ld   b,$03
63a5: 00           nop
63a6: 00           nop
63a7: 00           nop
63a8: 00           nop
63a9: 03           inc  bc
63aa: 06 0c        ld   b,$0C
63ac: 0c           inc  c
63ad: 18 18        jr   $63C7
63af: 18 18        jr   $63C9
63b1: 18 00        jr   $63B3
63b3: 00           nop
63b4: 00           nop
63b5: 00           nop
63b6: 00           nop
63b7: 00           nop
63b8: 00           nop
63b9: 18 5a        jr   $6415
63bb: 7e           ld   a,(hl)
63bc: 3c           inc  a
63bd: 18 3c        jr   $63FB
63bf: 7e           ld   a,(hl)
63c0: 5a           ld   e,d
63c1: 18 18        jr   $63DB
63c3: 00           nop
63c4: 00           nop
63c5: 00           nop
63c6: 00           nop
63c7: 00           nop
63c8: 00           nop
63c9: 00           nop
63ca: 00           nop
63cb: 18 18        jr   $63E5
63cd: 18 7e        jr   $644D
63cf: 7e           ld   a,(hl)
63d0: 18 1c        jr   $63EE
63d2: 1c           inc  e
63d3: 18 0c        jr   $63E1
63d5: 06 00        ld   b,$00
63d7: 00           nop
63d8: 00           nop
63d9: 00           nop
63da: 00           nop
63db: 00           nop
63dc: 00           nop
63dd: 00           nop
63de: 00           nop
63df: 00           nop
63e0: 00           nop
63e1: 00           nop
63e2: 00           nop
63e3: 00           nop
63e4: 00           nop
63e5: 00           nop
63e6: 00           nop
63e7: 00           nop
63e8: 00           nop
63e9: 00           nop
63ea: 00           nop
63eb: 00           nop
63ec: 00           nop
63ed: 00           nop
63ee: 3e 3e        ld   a,$3E
63f0: 00           nop
63f1: 00           nop
63f2: 1c           inc  e
63f3: 1c           inc  e
63f4: 1c           inc  e
63f5: 00           nop
63f6: 00           nop
63f7: 00           nop
63f8: 00           nop
63f9: 00           nop
63fa: 00           nop
63fb: 00           nop
63fc: 00           nop
63fd: 00           nop
63fe: 00           nop
63ff: 00           nop
6400: 00           nop
6401: 06 03        ld   b,$03
6403: 03           inc  bc
6404: 03           inc  bc
6405: 03           inc  bc
6406: 00           nop
6407: 00           nop
6408: 00           nop
6409: 60           ld   h,b
640a: 30 30        jr   nc,$643C
640c: 18 18        jr   $6426
640e: 0c           inc  c
640f: 0c           inc  c
6410: 06 67        ld   b,$67
6412: 67           ld   h,a
6413: 3e 1c        ld   a,$1C
6415: 00           nop
6416: 00           nop
6417: 00           nop
6418: 00           nop
6419: 1c           inc  e
641a: 3e 73        ld   a,$73
641c: 73           ld   (hl),e
641d: 7b           ld   a,e
641e: 6b           ld   l,e
641f: 6b           ld   l,e
6420: 6f           ld   l,a
6421: 18 18        jr   $643B
6423: 3c           inc  a
6424: 3c           inc  a
6425: 00           nop
6426: 00           nop
6427: 00           nop
6428: 00           nop
6429: 18 1c        jr   $6447
642b: 1e 18        ld   e,$18
642d: 18 18        jr   $6447
642f: 18 18        jr   $6449
6431: 06 03        ld   b,$03
6433: 7f           ld   a,a
6434: 7f           ld   a,a
6435: 00           nop
6436: 00           nop
6437: 00           nop
6438: 00           nop
6439: 1c           inc  e
643a: 3e 63        ld   a,$63
643c: 63           ld   h,e
643d: 60           ld   h,b
643e: 30 18        jr   nc,$6458
6440: 0c           inc  c
6441: 60           ld   h,b
6442: 63           ld   h,e
6443: 3e 1c        ld   a,$1C
6445: 00           nop
6446: 00           nop
6447: 00           nop
6448: 00           nop
6449: 1c           inc  e
644a: 3e 63        ld   a,$63
644c: 60           ld   h,b
644d: 30 1c        jr   nc,$646B
644f: 3c           inc  a
6450: 60           ld   h,b
6451: 7f           ld   a,a
6452: 30 30        jr   nc,$6484
6454: 30 00        jr   nc,$6456
6456: 00           nop
6457: 00           nop
6458: 00           nop
6459: 30 38        jr   nc,$6493
645b: 38 3c        jr   c,$6499
645d: 34           inc  (hl)
645e: 36 36        ld   (hl),$36
6460: 7f           ld   a,a
6461: 60           ld   h,b
6462: 63           ld   h,e
6463: 3f           ccf
6464: 1c           inc  e
6465: 00           nop
6466: 00           nop
6467: 00           nop
6468: 00           nop
6469: 7f           ld   a,a
646a: 7f           ld   a,a
646b: 03           inc  bc
646c: 03           inc  bc
646d: 1f           rra
646e: 3f           ccf
646f: 60           ld   h,b
6470: 60           ld   h,b
6471: 63           ld   h,e
6472: 63           ld   h,e
6473: 3e 1c        ld   a,$1C
6475: 00           nop
6476: 00           nop
6477: 00           nop
6478: 00           nop
6479: 30 18        jr   nc,$6493
647b: 0c           inc  c
647c: 06 06        ld   b,$06
647e: 1f           rra
647f: 3f           ccf
6480: 63           ld   h,e
6481: 0c           inc  c
6482: 0c           inc  c
6483: 06 06        ld   b,$06
6485: 00           nop
6486: 00           nop
6487: 00           nop
6488: 00           nop
6489: 7f           ld   a,a
648a: 7f           ld   a,a
648b: 63           ld   h,e
648c: 60           ld   h,b
648d: 30 30        jr   nc,$64BF
648f: 18 18        jr   $64A9
6491: 63           ld   h,e
6492: 63           ld   h,e
6493: 3e 1c        ld   a,$1C
6495: 00           nop
6496: 00           nop
6497: 00           nop
6498: 00           nop
6499: 1c           inc  e
649a: 3e 63        ld   a,$63
649c: 63           ld   h,e
649d: 22 1c 3e     ld   ($3E1C),hl
64a0: 63           ld   h,e
64a1: 30 18        jr   nc,$64BB
64a3: 0c           inc  c
64a4: 06 00        ld   b,$00
64a6: 00           nop
64a7: 00           nop
64a8: 00           nop
64a9: 1c           inc  e
64aa: 3e 63        ld   a,$63
64ac: 63           ld   h,e
64ad: 63           ld   h,e
64ae: 7e           ld   a,(hl)
64af: 7c           ld   a,h
64b0: 30 00        jr   nc,$64B2
64b2: 1c           inc  e
64b3: 1c           inc  e
64b4: 1c           inc  e
64b5: 00           nop
64b6: 00           nop
64b7: 00           nop
64b8: 00           nop
64b9: 00           nop
64ba: 00           nop
64bb: 00           nop
64bc: 1c           inc  e
64bd: 1c           inc  e
64be: 1c           inc  e
64bf: 00           nop
64c0: 00           nop
64c1: 00           nop
64c2: 1c           inc  e
64c3: 1c           inc  e
64c4: 1c           inc  e
64c5: 06 06        ld   b,$06
64c7: 00           nop
64c8: 00           nop
64c9: 00           nop
64ca: 00           nop
64cb: 00           nop
64cc: 1c           inc  e
64cd: 1c           inc  e
64ce: 1c           inc  e
64cf: 00           nop
64d0: 00           nop
64d1: 0c           inc  c
64d2: 18 30        jr   $6504
64d4: 60           ld   h,b
64d5: 00           nop
64d6: 00           nop
64d7: 00           nop
64d8: 00           nop
64d9: 60           ld   h,b
64da: 30 18        jr   nc,$64F4
64dc: 0c           inc  c
64dd: 06 03        ld   b,$03
64df: 03           inc  bc
64e0: 06 7e        ld   b,$7E
64e2: 00           nop
64e3: 00           nop
64e4: 00           nop
64e5: 00           nop
64e6: 00           nop
64e7: 00           nop
64e8: 00           nop
64e9: 00           nop
64ea: 00           nop
64eb: 00           nop
64ec: 7e           ld   a,(hl)
64ed: 7e           ld   a,(hl)
64ee: 00           nop
64ef: 00           nop
64f0: 7e           ld   a,(hl)
64f1: 18 0c        jr   $64FF
64f3: 06 03        ld   b,$03
64f5: 00           nop
64f6: 00           nop
64f7: 00           nop
64f8: 00           nop
64f9: 03           inc  bc
64fa: 06 0c        ld   b,$0C
64fc: 18 30        jr   $652E
64fe: 60           ld   h,b
64ff: 60           ld   h,b
6500: 30 00        jr   nc,$6502
6502: 00           nop
6503: 0c           inc  c
6504: 0c           inc  c
6505: 00           nop
6506: 00           nop
6507: 00           nop
6508: 00           nop
6509: 1c           inc  e
650a: 3e 63        ld   a,$63
650c: 63           ld   h,e
650d: 30 18        jr   nc,$6527
650f: 0c           inc  c
6510: 0c           inc  c
6511: 3b           dec  sp
6512: 03           inc  bc
6513: 7e           ld   a,(hl)
6514: 3c           inc  a
6515: 00           nop
6516: 00           nop
6517: 00           nop
6518: 00           nop
6519: 1c           inc  e
651a: 3e 63        ld   a,$63
651c: 5b           ld   e,e
651d: 7b           ld   a,e
651e: 6b           ld   l,e
651f: 6b           ld   l,e
6520: 7b           ld   a,e
6521: 63           ld   h,e
6522: 63           ld   h,e
6523: 63           ld   h,e
6524: 63           ld   h,e
6525: 00           nop
6526: 00           nop
6527: 00           nop
6528: 00           nop
6529: 1c           inc  e
652a: 3e 63        ld   a,$63
652c: 63           ld   h,e
652d: 63           ld   h,e
652e: 7f           ld   a,a
652f: 7f           ld   a,a
6530: 63           ld   h,e
6531: 66           ld   h,(hl)
6532: 66           ld   h,(hl)
6533: 3e 1f        ld   a,$1F
6535: 00           nop
6536: 00           nop
6537: 00           nop
6538: 00           nop
6539: 1f           rra
653a: 3e 66        ld   a,$66
653c: 66           ld   h,(hl)
653d: 26 1e        ld   h,$1E
653f: 3e 66        ld   a,$66
6541: 63           ld   h,e
6542: 63           ld   h,e
6543: 3e 1c        ld   a,$1C
6545: 00           nop
6546: 00           nop
6547: 00           nop
6548: 00           nop
6549: 1c           inc  e
654a: 3e 63        ld   a,$63
654c: 63           ld   h,e
654d: 03           inc  bc
654e: 03           inc  bc
654f: 03           inc  bc
6550: 03           inc  bc
6551: 66           ld   h,(hl)
6552: 66           ld   h,(hl)
6553: 3e 1f        ld   a,$1F
6555: 00           nop
6556: 00           nop
6557: 00           nop
6558: 00           nop
6559: 1f           rra
655a: 3e 66        ld   a,$66
655c: 66           ld   h,(hl)
655d: 66           ld   h,(hl)
655e: 66           ld   h,(hl)
655f: 66           ld   h,(hl)
6560: 66           ld   h,(hl)
6561: 03           inc  bc
6562: 03           inc  bc
6563: 7f           ld   a,a
6564: 7f           ld   a,a
6565: 00           nop
6566: 00           nop
6567: 00           nop
6568: 00           nop
6569: 7f           ld   a,a
656a: 7f           ld   a,a
656b: 03           inc  bc
656c: 03           inc  bc
656d: 03           inc  bc
656e: 3f           ccf
656f: 3f           ccf
6570: 03           inc  bc
6571: 03           inc  bc
6572: 03           inc  bc
6573: 03           inc  bc
6574: 03           inc  bc
6575: 00           nop
6576: 00           nop
6577: 00           nop
6578: 00           nop
6579: 7f           ld   a,a
657a: 7f           ld   a,a
657b: 03           inc  bc
657c: 03           inc  bc
657d: 03           inc  bc
657e: 3f           ccf
657f: 3f           ccf
6580: 03           inc  bc
6581: 63           ld   h,e
6582: 63           ld   h,e
6583: 7e           ld   a,(hl)
6584: 5c           ld   e,h
6585: 00           nop
6586: 00           nop
6587: 00           nop
6588: 00           nop
6589: 1c           inc  e
658a: 3e 63        ld   a,$63
658c: 63           ld   h,e
658d: 03           inc  bc
658e: 03           inc  bc
658f: 7b           ld   a,e
6590: 73           ld   (hl),e
6591: 63           ld   h,e
6592: 63           ld   h,e
6593: 63           ld   h,e
6594: 63           ld   h,e
6595: 00           nop
6596: 00           nop
6597: 00           nop
6598: 00           nop
6599: 63           ld   h,e
659a: 63           ld   h,e
659b: 63           ld   h,e
659c: 63           ld   h,e
659d: 63           ld   h,e
659e: 7f           ld   a,a
659f: 7f           ld   a,a
65a0: 63           ld   h,e
65a1: 18 18        jr   $65BB
65a3: 3c           inc  a
65a4: 3c           inc  a
65a5: 00           nop
65a6: 00           nop
65a7: 00           nop
65a8: 00           nop
65a9: 3c           inc  a
65aa: 3c           inc  a
65ab: 18 18        jr   $65C5
65ad: 18 18        jr   $65C7
65af: 18 18        jr   $65C9
65b1: 18 1b        jr   $65CE
65b3: 1f           rra
65b4: 0e 00        ld   c,$00
65b6: 00           nop
65b7: 00           nop
65b8: 00           nop
65b9: 3c           inc  a
65ba: 3c           inc  a
65bb: 18 18        jr   $65D5
65bd: 18 18        jr   $65D7
65bf: 18 18        jr   $65D9
65c1: 1b           dec  de
65c2: 33           inc  sp
65c3: 63           ld   h,e
65c4: 63           ld   h,e
65c5: 00           nop
65c6: 00           nop
65c7: 00           nop
65c8: 00           nop
65c9: 63           ld   h,e
65ca: 63           ld   h,e
65cb: 33           inc  sp
65cc: 1b           dec  de
65cd: 0f           rrca
65ce: 07           rlca
65cf: 07           rlca
65d0: 0f           rrca
65d1: 03           inc  bc
65d2: 03           inc  bc
65d3: 7f           ld   a,a
65d4: 7f           ld   a,a
65d5: 00           nop
65d6: 00           nop
65d7: 00           nop
65d8: 00           nop
65d9: 03           inc  bc
65da: 03           inc  bc
65db: 03           inc  bc
65dc: 03           inc  bc
65dd: 03           inc  bc
65de: 03           inc  bc
65df: 03           inc  bc
65e0: 03           inc  bc
65e1: 63           ld   h,e
65e2: 63           ld   h,e
65e3: 63           ld   h,e
65e4: 63           ld   h,e
65e5: 00           nop
65e6: 00           nop
65e7: 00           nop
65e8: 00           nop
65e9: 63           ld   h,e
65ea: 63           ld   h,e
65eb: 63           ld   h,e
65ec: 77           ld   (hl),a
65ed: 7f           ld   a,a
65ee: 6b           ld   l,e
65ef: 6b           ld   l,e
65f0: 63           ld   h,e
65f1: 73           ld   (hl),e
65f2: 63           ld   h,e
65f3: 63           ld   h,e
65f4: 63           ld   h,e
65f5: 00           nop
65f6: 00           nop
65f7: 00           nop
65f8: 00           nop
65f9: 63           ld   h,e
65fa: 63           ld   h,e
65fb: 63           ld   h,e
65fc: 6f           ld   l,a
65fd: 6f           ld   l,a
65fe: 7b           ld   a,e
65ff: 7b           ld   a,e
6600: 73           ld   (hl),e
6601: 63           ld   h,e
6602: 63           ld   h,e
6603: 3e 1c        ld   a,$1C
6605: 00           nop
6606: 00           nop
6607: 00           nop
6608: 00           nop
6609: 1c           inc  e
660a: 3e 63        ld   a,$63
660c: 63           ld   h,e
660d: 63           ld   h,e
660e: 63           ld   h,e
660f: 63           ld   h,e
6610: 63           ld   h,e
6611: 03           inc  bc
6612: 03           inc  bc
6613: 03           inc  bc
6614: 03           inc  bc
6615: 00           nop
6616: 00           nop
6617: 00           nop
6618: 00           nop
6619: 1f           rra
661a: 3f           ccf
661b: 63           ld   h,e
661c: 63           ld   h,e
661d: 63           ld   h,e
661e: 3f           ccf
661f: 1f           rra
6620: 03           inc  bc
6621: 7f           ld   a,a
6622: 67           ld   h,a
6623: 3e 5c        ld   a,$5C
6625: 00           nop
6626: 00           nop
6627: 00           nop
6628: 00           nop
6629: 1c           inc  e
662a: 3e 63        ld   a,$63
662c: 63           ld   h,e
662d: 63           ld   h,e
662e: 63           ld   h,e
662f: 63           ld   h,e
6630: 7b           ld   a,e
6631: 33           inc  sp
6632: 33           inc  sp
6633: 63           ld   h,e
6634: 63           ld   h,e
6635: 00           nop
6636: 00           nop
6637: 00           nop
6638: 00           nop
6639: 1f           rra
663a: 3f           ccf
663b: 63           ld   h,e
663c: 63           ld   h,e
663d: 63           ld   h,e
663e: 3f           ccf
663f: 1f           rra
6640: 33           inc  sp
6641: 63           ld   h,e
6642: 63           ld   h,e
6643: 3e 1c        ld   a,$1C
6645: 00           nop
6646: 00           nop
6647: 00           nop
6648: 00           nop
6649: 1c           inc  e
664a: 3e 63        ld   a,$63
664c: 63           ld   h,e
664d: 03           inc  bc
664e: 0e 3c        ld   c,$3C
6650: 70           ld   (hl),b
6651: 18 18        jr   $666B
6653: 18 18        jr   $666D
6655: 00           nop
6656: 00           nop
6657: 00           nop
6658: 00           nop
6659: 7f           ld   a,a
665a: 7f           ld   a,a
665b: 18 18        jr   $6675
665d: 18 18        jr   $6677
665f: 18 18        jr   $6679
6661: 63           ld   h,e
6662: 63           ld   h,e
6663: 3e 1c        ld   a,$1C
6665: 00           nop
6666: 00           nop
6667: 00           nop
6668: 00           nop
6669: 63           ld   h,e
666a: 63           ld   h,e
666b: 63           ld   h,e
666c: 63           ld   h,e
666d: 63           ld   h,e
666e: 63           ld   h,e
666f: 63           ld   h,e
6670: 63           ld   h,e
6671: 1c           inc  e
6672: 1c           inc  e
6673: 08           ex   af,af'
6674: 08           ex   af,af'
6675: 00           nop
6676: 00           nop
6677: 00           nop
6678: 00           nop
6679: 63           ld   h,e
667a: 63           ld   h,e
667b: 63           ld   h,e
667c: 63           ld   h,e
667d: 63           ld   h,e
667e: 36 36        ld   (hl),$36
6680: 36 7f        ld   (hl),$7F
6682: 7f           ld   a,a
6683: 36 36        ld   (hl),$36
6685: 00           nop
6686: 00           nop
6687: 00           nop
6688: 00           nop
6689: 63           ld   h,e
668a: 63           ld   h,e
668b: 63           ld   h,e
668c: 63           ld   h,e
668d: 63           ld   h,e
668e: 6b           ld   l,e
668f: 6b           ld   l,e
6690: 6b           ld   l,e
6691: 36 36        ld   (hl),$36
6693: 63           ld   h,e
6694: 63           ld   h,e
6695: 00           nop
6696: 00           nop
6697: 00           nop
6698: 00           nop
6699: 63           ld   h,e
669a: 63           ld   h,e
669b: 36 36        ld   (hl),$36
669d: 1c           inc  e
669e: 1c           inc  e
669f: 1c           inc  e
66a0: 1c           inc  e
66a1: 1c           inc  e
66a2: 1c           inc  e
66a3: 1c           inc  e
66a4: 1c           inc  e
66a5: 00           nop
66a6: 00           nop
66a7: 00           nop
66a8: 00           nop
66a9: 63           ld   h,e
66aa: 63           ld   h,e
66ab: 63           ld   h,e
66ac: 36 36        ld   (hl),$36
66ae: 1c           inc  e
66af: 1c           inc  e
66b0: 1c           inc  e
66b1: 06 06        ld   b,$06
66b3: 7f           ld   a,a
66b4: 7f           ld   a,a
66b5: 00           nop
66b6: 00           nop
66b7: 00           nop
66b8: 00           nop
66b9: 7f           ld   a,a
66ba: 7f           ld   a,a
66bb: 30 30        jr   nc,$66ED
66bd: 18 18        jr   $66D7
66bf: 0c           inc  c
66c0: 0c           inc  c
66c1: 18 18        jr   $66DB
66c3: 18 78        jr   $673D
66c5: 78           ld   a,b
66c6: 00           nop
66c7: 00           nop
66c8: 00           nop
66c9: 78           ld   a,b
66ca: 78           ld   a,b
66cb: 18 18        jr   $66E5
66cd: 18 18        jr   $66E7
66cf: 18 18        jr   $66E9
66d1: 30 30        jr   nc,$6703
66d3: 60           ld   h,b
66d4: 60           ld   h,b
66d5: 00           nop
66d6: 00           nop
66d7: 00           nop
66d8: 00           nop
66d9: 03           inc  bc
66da: 03           inc  bc
66db: 06 06        ld   b,$06
66dd: 0c           inc  c
66de: 0c           inc  c
66df: 18 18        jr   $66F9
66e1: 0c           inc  c
66e2: 0c           inc  c
66e3: 0c           inc  c
66e4: 0f           rrca
66e5: 0f           rrca
66e6: 00           nop
66e7: 00           nop
66e8: 00           nop
66e9: 0f           rrca
66ea: 0f           rrca
66eb: 0c           inc  c
66ec: 0c           inc  c
66ed: 0c           inc  c
66ee: 0c           inc  c
66ef: 0c           inc  c
66f0: 0c           inc  c
66f1: 00           nop
66f2: 00           nop
66f3: 00           nop
66f4: 00           nop
66f5: 00           nop
66f6: 00           nop
66f7: 00           nop
66f8: 00           nop
66f9: 08           ex   af,af'
66fa: 1c           inc  e
66fb: 36 63        ld   (hl),$63
66fd: 41           ld   b,c
66fe: 00           nop
66ff: 00           nop
6700: 00           nop
6701: 00           nop
6702: 00           nop
6703: 00           nop
6704: 00           nop
6705: 00           nop
6706: ff           rst  $38
6707: ff           rst  $38
6708: 00           nop
6709: 00           nop
670a: 00           nop
670b: 00           nop
670c: 00           nop
670d: 00           nop
670e: 00           nop
670f: 00           nop
6710: 00           nop
6711: 00           nop
6712: 00           nop
6713: 00           nop
6714: 00           nop
6715: 00           nop
6716: 00           nop
6717: 00           nop
6718: 00           nop
6719: 38 38        jr   c,$6753
671b: 18 30        jr   $674D
671d: 60           ld   h,b
671e: 00           nop
671f: 00           nop
6720: 00           nop
6721: 33           inc  sp
6722: 33           inc  sp
6723: 3f           ccf
6724: 5e           ld   e,(hl)
6725: 00           nop
6726: 00           nop
6727: 00           nop
6728: 00           nop
6729: 00           nop
672a: 00           nop
672b: 00           nop
672c: 1e 3e        ld   e,$3E
672e: 30 3e        jr   nc,$676E
6730: 3f           ccf
6731: 66           ld   h,(hl)
6732: 66           ld   h,(hl)
6733: 3e 1a        ld   a,$1A
6735: 00           nop
6736: 00           nop
6737: 00           nop
6738: 00           nop
6739: 06 06        ld   b,$06
673b: 06 1e        ld   b,$1E
673d: 3e 66        ld   a,$66
673f: 66           ld   h,(hl)
6740: 66           ld   h,(hl)
6741: 03           inc  bc
6742: 63           ld   h,e
6743: 3e 1c        ld   a,$1C
6745: 00           nop
6746: 00           nop
6747: 00           nop
6748: 00           nop
6749: 00           nop
674a: 00           nop
674b: 00           nop
674c: 1c           inc  e
674d: 3e 63        ld   a,$63
674f: 03           inc  bc
6750: 03           inc  bc
6751: 66           ld   h,(hl)
6752: 66           ld   h,(hl)
6753: 7c           ld   a,h
6754: 58           ld   e,b
6755: 00           nop
6756: 00           nop
6757: 00           nop
6758: 00           nop
6759: 60           ld   h,b
675a: 60           ld   h,b
675b: 60           ld   h,b
675c: 78           ld   a,b
675d: 7c           ld   a,h
675e: 66           ld   h,(hl)
675f: 66           ld   h,(hl)
6760: 66           ld   h,(hl)
6761: 03           inc  bc
6762: 63           ld   h,e
6763: 3e 1c        ld   a,$1C
6765: 00           nop
6766: 00           nop
6767: 00           nop
6768: 00           nop
6769: 00           nop
676a: 00           nop
676b: 00           nop
676c: 1c           inc  e
676d: 3e 63        ld   a,$63
676f: 63           ld   h,e
6770: 7f           ld   a,a
6771: 18 18        jr   $678B
6773: 18 18        jr   $678D
6775: 00           nop
6776: 00           nop
6777: 00           nop
6778: 00           nop
6779: 30 78        jr   nc,$67F3
677b: 18 18        jr   $6795
677d: 3c           inc  a
677e: 3c           inc  a
677f: 18 18        jr   $6799
6781: 06 3e        ld   b,$3E
6783: 7f           ld   a,a
6784: 63           ld   h,e
6785: 7f           ld   a,a
6786: 3e 00        ld   a,$00
6788: 00           nop
6789: 00           nop
678a: 00           nop
678b: 40           ld   b,b
678c: 5c           ld   e,h
678d: 3e 22        ld   a,$22
678f: 3e 1c        ld   a,$1C
6791: 33           inc  sp
6792: 33           inc  sp
6793: 33           inc  sp
6794: 33           inc  sp
6795: 00           nop
6796: 00           nop
6797: 00           nop
6798: 00           nop
6799: 03           inc  bc
679a: 03           inc  bc
679b: 03           inc  bc
679c: 1f           rra
679d: 3f           ccf
679e: 33           inc  sp
679f: 33           inc  sp
67a0: 33           inc  sp
67a1: 18 18        jr   $67BB
67a3: 18 18        jr   $67BD
67a5: 00           nop
67a6: 00           nop
67a7: 00           nop
67a8: 00           nop
67a9: 18 18        jr   $67C3
67ab: 00           nop
67ac: 18 18        jr   $67C6
67ae: 18 18        jr   $67C8
67b0: 18 30        jr   $67E2
67b2: 30 36        jr   nc,$67EA
67b4: 3e 1c        ld   a,$1C
67b6: 00           nop
67b7: 00           nop
67b8: 00           nop
67b9: 30 00        jr   nc,$67BB
67bb: 00           nop
67bc: 30 30        jr   nc,$67EE
67be: 30 30        jr   nc,$67F0
67c0: 30 1e        jr   nc,$67E0
67c2: 36 66        ld   (hl),$66
67c4: 46           ld   b,(hl)
67c5: 00           nop
67c6: 00           nop
67c7: 00           nop
67c8: 00           nop
67c9: 06 06        ld   b,$06
67cb: 46           ld   b,(hl)
67cc: 66           ld   h,(hl)
67cd: 36 1e        ld   (hl),$1E
67cf: 0e 0e        ld   c,$0E
67d1: 18 18        jr   $67EB
67d3: 3c           inc  a
67d4: 3c           inc  a
67d5: 00           nop
67d6: 00           nop
67d7: 00           nop
67d8: 00           nop
67d9: 1c           inc  e
67da: 1c           inc  e
67db: 18 18        jr   $67F5
67dd: 18 18        jr   $67F7
67df: 18 18        jr   $67F9
67e1: 6b           ld   l,e
67e2: 6b           ld   l,e
67e3: 6b           ld   l,e
67e4: 6b           ld   l,e
67e5: 00           nop
67e6: 00           nop
67e7: 00           nop
67e8: 00           nop
67e9: 00           nop
67ea: 00           nop
67eb: 00           nop
67ec: 36 7f        ld   (hl),$7F
67ee: 6b           ld   l,e
67ef: 6b           ld   l,e
67f0: 6b           ld   l,e
67f1: 66           ld   h,(hl)
67f2: 66           ld   h,(hl)
67f3: 66           ld   h,(hl)
67f4: 66           ld   h,(hl)
67f5: 00           nop
67f6: 00           nop
67f7: 00           nop
67f8: 00           nop
67f9: 00           nop
67fa: 00           nop
67fb: 00           nop
67fc: 3a 7e 66     ld   a,($667E)
67ff: 66           ld   h,(hl)
6800: 66           ld   h,(hl)
6801: 63           ld   h,e
6802: 63           ld   h,e
6803: 3e 1c        ld   a,$1C
6805: 00           nop
6806: 00           nop
6807: 00           nop
6808: 00           nop
6809: 00           nop
680a: 00           nop
680b: 00           nop
680c: 1c           inc  e
680d: 3e 63        ld   a,$63
680f: 63           ld   h,e
6810: 63           ld   h,e
6811: 63           ld   h,e
6812: 63           ld   h,e
6813: 3f           ccf
6814: 1f           rra
6815: 03           inc  bc
6816: 03           inc  bc
6817: 03           inc  bc
6818: 00           nop
6819: 00           nop
681a: 00           nop
681b: 00           nop
681c: 1d           dec  e
681d: 3f           ccf
681e: 63           ld   h,e
681f: 63           ld   h,e
6820: 63           ld   h,e
6821: 63           ld   h,e
6822: 63           ld   h,e
6823: 7e           ld   a,(hl)
6824: 7c           ld   a,h
6825: 60           ld   h,b
6826: 60           ld   h,b
6827: 60           ld   h,b
6828: 00           nop
6829: 00           nop
682a: 00           nop
682b: 00           nop
682c: 5c           ld   e,h
682d: 7e           ld   a,(hl)
682e: 63           ld   h,e
682f: 63           ld   h,e
6830: 63           ld   h,e
6831: 06 06        ld   b,$06
6833: 06 06        ld   b,$06
6835: 00           nop
6836: 00           nop
6837: 00           nop
6838: 00           nop
6839: 00           nop
683a: 00           nop
683b: 00           nop
683c: 36 7e        ld   (hl),$7E
683e: 0e 06        ld   c,$06
6840: 06 60        ld   b,$60
6842: 60           ld   h,b
6843: 7e           ld   a,(hl)
6844: 3c           inc  a
6845: 00           nop
6846: 00           nop
6847: 00           nop
6848: 00           nop
6849: 00           nop
684a: 00           nop
684b: 00           nop
684c: 3c           inc  a
684d: 7e           ld   a,(hl)
684e: 06 1c        ld   b,$1C
6850: 38 0c        jr   c,$685E
6852: 2c           inc  l
6853: 3c           inc  a
6854: 18 00        jr   $6856
6856: 00           nop
6857: 00           nop
6858: 00           nop
6859: 0c           inc  c
685a: 0c           inc  c
685b: 0c           inc  c
685c: 1e 1e        ld   e,$1E
685e: 0c           inc  c
685f: 0c           inc  c
6860: 0c           inc  c
6861: 66           ld   h,(hl)
6862: 66           ld   h,(hl)
6863: 7e           ld   a,(hl)
6864: bc           cp   h
6865: 00           nop
6866: 00           nop
6867: 00           nop
6868: 00           nop
6869: 00           nop
686a: 00           nop
686b: 00           nop
686c: 66           ld   h,(hl)
686d: 66           ld   h,(hl)
686e: 66           ld   h,(hl)
686f: 66           ld   h,(hl)
6870: 66           ld   h,(hl)
6871: 1c           inc  e
6872: 1c           inc  e
6873: 08           ex   af,af'
6874: 08           ex   af,af'
6875: 00           nop
6876: 00           nop
6877: 00           nop
6878: 00           nop
6879: 00           nop
687a: 00           nop
687b: 00           nop
687c: 63           ld   h,e
687d: 63           ld   h,e
687e: 63           ld   h,e
687f: 36 36        ld   (hl),$36
6881: 77           ld   (hl),a
6882: 36 36        ld   (hl),$36
6884: 36 00        ld   (hl),$00
6886: 00           nop
6887: 00           nop
6888: 00           nop
6889: 00           nop
688a: 00           nop
688b: 00           nop
688c: 63           ld   h,e
688d: 63           ld   h,e
688e: 6b           ld   l,e
688f: 6b           ld   l,e
6890: 7f           ld   a,a
6891: 3c           inc  a
6892: 3c           inc  a
6893: 66           ld   h,(hl)
6894: 66           ld   h,(hl)
6895: 00           nop
6896: 00           nop
6897: 00           nop
6898: 00           nop
6899: 00           nop
689a: 00           nop
689b: 00           nop
689c: 66           ld   h,(hl)
689d: 66           ld   h,(hl)
689e: 7e           ld   a,(hl)
689f: 3c           inc  a
68a0: 18 3c        jr   $68DE
68a2: 18 18        jr   $68BC
68a4: 18 0c        jr   $68B2
68a6: 0c           inc  c
68a7: 06 00        ld   b,$00
68a9: 00           nop
68aa: 00           nop
68ab: 00           nop
68ac: 63           ld   h,e
68ad: 63           ld   h,e
68ae: 76           halt
68af: 36 3c        ld   (hl),$3C
68b1: 06 03        ld   b,$03
68b3: 3f           ccf
68b4: 3f           ccf
68b5: 00           nop
68b6: 00           nop
68b7: 00           nop
68b8: 00           nop
68b9: 00           nop
68ba: 00           nop
68bb: 00           nop
68bc: 3f           ccf
68bd: 3f           ccf
68be: 30 18        jr   nc,$68D8
68c0: 0c           inc  c
68c1: 30 30        jr   nc,$68F3
68c3: 30 70        jr   nc,$6935
68c5: 60           ld   h,b
68c6: 00           nop
68c7: 00           nop
68c8: 00           nop
68c9: 60           ld   h,b
68ca: 70           ld   (hl),b
68cb: 30 30        jr   nc,$68FD
68cd: 30 30        jr   nc,$68FF
68cf: 0c           inc  c
68d0: 30 18        jr   nc,$68EA
68d2: 18 18        jr   $68EC
68d4: 18 18        jr   $68EE
68d6: 00           nop
68d7: 00           nop
68d8: 00           nop
68d9: 18 18        jr   $68F3
68db: 18 18        jr   $68F5
68dd: 18 00        jr   $68DF
68df: 00           nop
68e0: 00           nop
68e1: 06 06        ld   b,$06
68e3: 06 07        ld   b,$07
68e5: 03           inc  bc
68e6: 00           nop
68e7: 00           nop
68e8: 00           nop
68e9: 03           inc  bc
68ea: 07           rlca
68eb: 06 06        ld   b,$06
68ed: 06 06        ld   b,$06
68ef: 18 06        jr   $68F7
68f1: 00           nop
68f2: 00           nop
68f3: 00           nop
68f4: 00           nop
68f5: 00           nop
68f6: 00           nop
68f7: 00           nop
68f8: 00           nop
68f9: 06 4f        ld   b,$4F
68fb: 79           ld   a,c
68fc: 30 00        jr   nc,$68FE
68fe: 00           nop
68ff: 00           nop
6900: 00           nop
6901: 8c           adc  a,h
6902: f8           ret  m
6903: 00           nop
6904: 00           nop
6905: 00           nop
6906: 00           nop
6907: 00           nop
6908: 00           nop
6909: 00           nop
690a: 00           nop
690b: 00           nop
690c: f8           ret  m
690d: 8c           adc  a,h
690e: 52           ld   d,d
690f: 21 52 f5     ld   hl,$F552
6912: 3a 5d 83     ld   a,($835D)
6915: fe ff        cp   $FF
6917: 28 03        jr   z,$691C
6919: f1           pop  af
691a: af           xor  a
691b: c9           ret
691c: 3e ff        ld   a,$FF
691e: 32 54 12     ld   ($1254),a
6921: f1           pop  af
6922: 08           ex   af,af'
6923: 3a 62 69     ld   a,($6962)
6926: b8           cp   b
6927: da 3c 69     jp   c,$693C
692a: 78           ld   a,b
692b: 80           add  a,b
692c: d9           exx
692d: 5f           ld   e,a
692e: 16 00        ld   d,$00
6930: 21 3e 69     ld   hl,$693E
6933: 19           add  hl,de
6934: 7e           ld   a,(hl)
6935: 23           inc  hl
6936: 66           ld   h,(hl)
6937: 6f           ld   l,a
6938: e5           push hl
6939: d9           exx
693a: 08           ex   af,af'
693b: c9           ret
693c: af           xor  a
693d: c9           ret
693e: 63           ld   h,e
693f: 69           ld   l,c
6940: 6f           ld   l,a
6941: 69           ld   l,c
6942: 1e 6a        ld   e,$6A
6944: 26 6a        ld   h,$6A
6946: 83           add  a,e
6947: 6d           ld   l,l
6948: ec 70 28     call pe,$2870
694b: 78           ld   a,b
694c: b4           or   h
694d: 7a           ld   a,d
694e: d3 7c        out  ($7C),a
6950: 1c           inc  e
6951: 7d           ld   a,l
6952: d2 7d de     jp   nc,$DE7D
6955: 7f           ld   a,a
6956: 85           add  a,l
6957: 69           ld   l,c
6958: 91           sub  c
6959: 69           ld   l,c
695a: 9b           sbc  a,e
695b: 69           ld   l,c
695c: 48           ld   c,b
695d: 81           add  a,c
695e: 4e           ld   c,(hl)
695f: 81           add  a,c
6960: 54           ld   d,h
6961: 81           add  a,c
6962: 12           ld   (de),a
6963: 7d           ld   a,l
6964: e6 03        and  $03
6966: 32 39 81     ld   ($8139),a
6969: f6 20        or   $20
696b: cd 14 82     call $8214
696e: c9           ret
696f: cd bf 69     call $69BF
6972: 22 08 83     ld   ($8308),hl
6975: 32 0a 83     ld   ($830A),a
6978: 3a 39 81     ld   a,($8139)
697b: cd 66 69     call $6966
697e: 21 05 83     ld   hl,$8305
6981: cd 82 81     call $8182
6984: c9           ret
6985: 3a c4 4f     ld   a,($4FC4)
6988: b7           or   a
6989: c8           ret  z
698a: 7d           ld   a,l
698b: e6 07        and  $07
698d: 32 6c 83     ld   ($836C),a
6990: c9           ret
6991: 22 85 82     ld   ($8285),hl
6994: 22 9c 82     ld   ($829C),hl
6997: 22 b5 82     ld   ($82B5),hl
699a: c9           ret
699b: 3a 65 f0     ld   a,($F065)
699e: 4f           ld   c,a
699f: 06 00        ld   b,$00
69a1: e5           push hl
69a2: cd 9b f3     call $F39B
69a5: e1           pop  hl
69a6: 01 08 00     ld   bc,$0008
69a9: 11 b7 69     ld   de,$69B7
69ac: cd a5 f3     call $F3A5
69af: 11 b7 69     ld   de,$69B7
69b2: ed 53 a7 7c  ld   ($7CA7),de
69b6: c9           ret
69b7: 00           nop
69b8: 00           nop
69b9: 00           nop
69ba: 00           nop
69bb: 00           nop
69bc: 00           nop
69bd: 00           nop
69be: 00           nop
69bf: 22 79 83     ld   ($8379),hl
69c2: ed 53 7b 83  ld   ($837B),de
69c6: 3a f9 54     ld   a,($54F9)
69c9: cb 5f        bit  3,a
69cb: c2 0f 6a     jp   nz,$6A0F
69ce: 2a 7b 83     ld   hl,($837B)
69d1: 29           add  hl,hl
69d2: 29           add  hl,hl
69d3: e5           push hl
69d4: 29           add  hl,hl
69d5: 29           add  hl,hl
69d6: c1           pop  bc
69d7: 09           add  hl,bc
69d8: 29           add  hl,hl
69d9: cb 4f        bit  1,a
69db: 20 01        jr   nz,$69DE
69dd: 29           add  hl,hl
69de: e5           push hl
69df: ed 4b 79 83  ld   bc,($8379)
69e3: 79           ld   a,c
69e4: e6 0f        and  $0F
69e6: cb 27        sla  a
69e8: cb 27        sla  a
69ea: cb 27        sla  a
69ec: cb 27        sla  a
69ee: 32 40 82     ld   ($8240),a
69f1: 78           ld   a,b
69f2: 21 7d 83     ld   hl,$837D
69f5: 71           ld   (hl),c
69f6: ed 67        rrd  (hl)
69f8: 4e           ld   c,(hl)
69f9: cb 38        srl  b
69fb: cb 38        srl  b
69fd: cb 38        srl  b
69ff: cb 38        srl  b
6a01: e1           pop  hl
6a02: 09           add  hl,bc
6a03: eb           ex   de,hl
6a04: 2a 5e 83     ld   hl,($835E)
6a07: 19           add  hl,de
6a08: 22 3e 82     ld   ($823E),hl
6a0b: 3a 40 82     ld   a,($8240)
6a0e: c9           ret
6a0f: 3a f5 54     ld   a,($54F5)
6a12: cb 3f        srl  a
6a14: ed 5b 7b 83  ld   de,($837B)
6a18: cd e2 8a     call $8AE2
6a1b: c2 de 69     jp   nz,$69DE
6a1e: 2a 79 83     ld   hl,($8379)
6a21: ed 5b 7b 83  ld   de,($837B)
6a25: c9           ret
6a26: 3e 80        ld   a,$80
6a28: a4           and  h
6a29: c0           ret  nz
6a2a: 3e 80        ld   a,$80
6a2c: a2           and  d
6a2d: c0           ret  nz
6a2e: e5           push hl
6a2f: dd e5        push ix
6a31: e1           pop  hl
6a32: 3e 80        ld   a,$80
6a34: a4           and  h
6a35: c2 59 6a     jp   nz,$6A59
6a38: fd e5        push iy
6a3a: e1           pop  hl
6a3b: 3e 80        ld   a,$80
6a3d: a4           and  h
6a3e: c2 59 6a     jp   nz,$6A59
6a41: e1           pop  hl
6a42: cd 76 6b     call $6B76
6a45: b7           or   a
6a46: c0           ret  nz
6a47: dd e5        push ix
6a49: fd e5        push iy
6a4b: cd bf 69     call $69BF
6a4e: 22 80 82     ld   ($8280),hl
6a51: 32 82 82     ld   ($8282),a
6a54: d1           pop  de
6a55: e1           pop  hl
6a56: c3 5b 6a     jp   $6A5B
6a59: e1           pop  hl
6a5a: c9           ret
6a5b: 22 71 6b     ld   ($6B71),hl
6a5e: ed 53 73 6b  ld   ($6B73),de
6a62: d5           push de
6a63: af           xor  a
6a64: 32 75 6b     ld   ($6B75),a
6a67: ed 5b 79 83  ld   de,($8379)
6a6b: cd 70 6d     call $6D70
6a6e: 22 69 6b     ld   ($6B69),hl
6a71: fa 7c 6a     jp   m,$6A7C
6a74: 3a 75 6b     ld   a,($6B75)
6a77: f6 02        or   $02
6a79: 32 75 6b     ld   ($6B75),a
6a7c: ed 5b 7b 83  ld   de,($837B)
6a80: e1           pop  hl
6a81: cd 70 6d     call $6D70
6a84: 22 6b 6b     ld   ($6B6B),hl
6a87: fa 92 6a     jp   m,$6A92
6a8a: 3a 75 6b     ld   a,($6B75)
6a8d: f6 01        or   $01
6a8f: 32 75 6b     ld   ($6B75),a
6a92: 2a 69 6b     ld   hl,($6B69)
6a95: 7c           ld   a,h
6a96: e6 80        and  $80
6a98: 28 07        jr   z,$6AA1
6a9a: 2b           dec  hl
6a9b: 7c           ld   a,h
6a9c: 2f           cpl
6a9d: 67           ld   h,a
6a9e: 7d           ld   a,l
6a9f: 2f           cpl
6aa0: 6f           ld   l,a
6aa1: 22 6d 6b     ld   ($6B6D),hl
6aa4: ed 5b 6b 6b  ld   de,($6B6B)
6aa8: 7a           ld   a,d
6aa9: e6 80        and  $80
6aab: 28 07        jr   z,$6AB4
6aad: 1b           dec  de
6aae: 7a           ld   a,d
6aaf: 2f           cpl
6ab0: 57           ld   d,a
6ab1: 7b           ld   a,e
6ab2: 2f           cpl
6ab3: 5f           ld   e,a
6ab4: ed 53 6f 6b  ld   ($6B6F),de
6ab8: cd 70 6d     call $6D70
6abb: fa c9 6a     jp   m,$6AC9
6abe: ca 1c 6b     jp   z,$6B1C
6ac1: 3a 75 6b     ld   a,($6B75)
6ac4: f6 04        or   $04
6ac6: 32 75 6b     ld   ($6B75),a
6ac9: 3a 75 6b     ld   a,($6B75)
6acc: 16 00        ld   d,$00
6ace: 5f           ld   e,a
6acf: 21 59 6b     ld   hl,$6B59
6ad2: 19           add  hl,de
6ad3: 19           add  hl,de
6ad4: 7e           ld   a,(hl)
6ad5: f6 08        or   $08
6ad7: 32 89 82     ld   ($8289),a
6ada: 23           inc  hl
6adb: 3e 58        ld   a,$58
6add: be           cp   (hl)
6ade: ca 4f 6b     jp   z,$6B4F
6ae1: 2a 6f 6b     ld   hl,($6B6F)
6ae4: ed 5b 6d 6b  ld   de,($6B6D)
6ae8: e5           push hl
6ae9: 2b           dec  hl
6aea: 3a c5 4f     ld   a,($4FC5)
6aed: b4           or   h
6aee: 67           ld   h,a
6aef: 22 8a 82     ld   ($828A),hl
6af2: e1           pop  hl
6af3: eb           ex   de,hl
6af4: e5           push hl
6af5: d5           push de
6af6: 29           add  hl,hl
6af7: 22 90 82     ld   ($8290),hl
6afa: cd 70 6d     call $6D70
6afd: 22 8c 82     ld   ($828C),hl
6b00: d1           pop  de
6b01: e1           pop  hl
6b02: cd 70 6d     call $6D70
6b05: 29           add  hl,hl
6b06: 22 8e 82     ld   ($828E),hl
6b09: 21 7d 82     ld   hl,$827D
6b0c: cd 82 81     call $8182
6b0f: 2a 71 6b     ld   hl,($6B71)
6b12: 22 79 83     ld   ($8379),hl
6b15: 2a 73 6b     ld   hl,($6B73)
6b18: 22 7b 83     ld   ($837B),hl
6b1b: c9           ret
6b1c: 2a 69 6b     ld   hl,($6B69)
6b1f: 7c           ld   a,h
6b20: b5           or   l
6b21: 20 06        jr   nz,$6B29
6b23: 2a 6b 6b     ld   hl,($6B6B)
6b26: 7c           ld   a,h
6b27: b5           or   l
6b28: c8           ret  z
6b29: 3a 75 6b     ld   a,($6B75)
6b2c: 16 00        ld   d,$00
6b2e: 5f           ld   e,a
6b2f: 21 59 6b     ld   hl,$6B59
6b32: 19           add  hl,de
6b33: 19           add  hl,de
6b34: 7e           ld   a,(hl)
6b35: f6 01        or   $01
6b37: f6 08        or   $08
6b39: 32 89 82     ld   ($8289),a
6b3c: 3a 75 6b     ld   a,($6B75)
6b3f: e6 04        and  $04
6b41: 21 4e 6b     ld   hl,$6B4E
6b44: c2 db 6a     jp   nz,$6ADB
6b47: 21 4d 6b     ld   hl,$6B4D
6b4a: c3 db 6a     jp   $6ADB
6b4d: 59           ld   e,c
6b4e: 58           ld   e,b
6b4f: 2a 6d 6b     ld   hl,($6B6D)
6b52: ed 5b 6f 6b  ld   de,($6B6F)
6b56: c3 e8 6a     jp   $6AE8
6b59: 04           inc  b
6b5a: 59           ld   e,c
6b5b: 07           rlca
6b5c: 59           ld   e,c
6b5d: 03           inc  bc
6b5e: 59           ld   e,c
6b5f: 00           nop
6b60: 59           ld   e,c
6b61: 05           dec  b
6b62: 58           ld   e,b
6b63: 06 58        ld   b,$58
6b65: 02           ld   (bc),a
6b66: 58           ld   e,b
6b67: 01 58 00     ld   bc,$0058
6b6a: 00           nop
6b6b: 00           nop
6b6c: 00           nop
6b6d: 00           nop
6b6e: 00           nop
6b6f: 00           nop
6b70: 00           nop
6b71: 00           nop
6b72: 00           nop
6b73: 00           nop
6b74: 00           nop
6b75: 00           nop
6b76: 22 57 6d     ld   ($6D57),hl
6b79: ed 53 59 6d  ld   ($6D59),de
6b7d: dd 22 5b 6d  ld   ($6D5B),ix
6b81: fd 22 5d 6d  ld   ($6D5D),iy
6b85: 2a 57 6d     ld   hl,($6D57)
6b88: ed 5b 59 6d  ld   de,($6D59)
6b8c: cd db 6b     call $6BDB
6b8f: 32 5f 6d     ld   ($6D5F),a
6b92: 2a 5b 6d     ld   hl,($6D5B)
6b95: ed 5b 5d 6d  ld   de,($6D5D)
6b99: cd db 6b     call $6BDB
6b9c: 32 60 6d     ld   ($6D60),a
6b9f: 47           ld   b,a
6ba0: 3a 5f 6d     ld   a,($6D5F)
6ba3: b0           or   b
6ba4: ca ca 6b     jp   z,$6BCA
6ba7: 3a 5f 6d     ld   a,($6D5F)
6baa: a0           and  b
6bab: c0           ret  nz
6bac: 3a 5f 6d     ld   a,($6D5F)
6baf: 47           ld   b,a
6bb0: e6 01        and  $01
6bb2: c2 fb 6b     jp   nz,$6BFB
6bb5: 78           ld   a,b
6bb6: e6 02        and  $02
6bb8: c2 31 6c     jp   nz,$6C31
6bbb: 3a 60 6d     ld   a,($6D60)
6bbe: 47           ld   b,a
6bbf: e6 01        and  $01
6bc1: c2 67 6c     jp   nz,$6C67
6bc4: 78           ld   a,b
6bc5: e6 02        and  $02
6bc7: c2 9d 6c     jp   nz,$6C9D
6bca: 2a 57 6d     ld   hl,($6D57)
6bcd: ed 5b 59 6d  ld   de,($6D59)
6bd1: dd 2a 5b 6d  ld   ix,($6D5B)
6bd5: fd 2a 5d 6d  ld   iy,($6D5D)
6bd9: af           xor  a
6bda: c9           ret
6bdb: e5           push hl
6bdc: d5           push de
6bdd: af           xor  a
6bde: d5           push de
6bdf: ed 5b 66 83  ld   de,($8366)
6be3: eb           ex   de,hl
6be4: cd 70 6d     call $6D70
6be7: f2 ec 6b     jp   p,$6BEC
6bea: 3e 01        ld   a,$01
6bec: d1           pop  de
6bed: 2a 68 83     ld   hl,($8368)
6bf0: cd 70 6d     call $6D70
6bf3: f2 f8 6b     jp   p,$6BF8
6bf6: cb cf        set  1,a
6bf8: d1           pop  de
6bf9: e1           pop  hl
6bfa: c9           ret
6bfb: 2a 59 6d     ld   hl,($6D59)
6bfe: 22 62 6d     ld   ($6D62),hl
6c01: 22 66 6d     ld   ($6D66),hl
6c04: 2a 5d 6d     ld   hl,($6D5D)
6c07: 22 64 6d     ld   ($6D64),hl
6c0a: 2a 66 83     ld   hl,($8366)
6c0d: 22 68 6d     ld   ($6D68),hl
6c10: 2a 57 6d     ld   hl,($6D57)
6c13: 22 6a 6d     ld   ($6D6A),hl
6c16: 22 6e 6d     ld   ($6D6E),hl
6c19: 2a 5b 6d     ld   hl,($6D5B)
6c1c: 22 6c 6d     ld   ($6D6C),hl
6c1f: cd d3 6c     call $6CD3
6c22: 2a 62 6d     ld   hl,($6D62)
6c25: 22 59 6d     ld   ($6D59),hl
6c28: 2a 66 83     ld   hl,($8366)
6c2b: 22 57 6d     ld   ($6D57),hl
6c2e: c3 85 6b     jp   $6B85
6c31: 2a 57 6d     ld   hl,($6D57)
6c34: 22 62 6d     ld   ($6D62),hl
6c37: 22 66 6d     ld   ($6D66),hl
6c3a: 2a 5b 6d     ld   hl,($6D5B)
6c3d: 22 64 6d     ld   ($6D64),hl
6c40: 2a 68 83     ld   hl,($8368)
6c43: 22 68 6d     ld   ($6D68),hl
6c46: 2a 59 6d     ld   hl,($6D59)
6c49: 22 6a 6d     ld   ($6D6A),hl
6c4c: 22 6e 6d     ld   ($6D6E),hl
6c4f: 2a 5d 6d     ld   hl,($6D5D)
6c52: 22 6c 6d     ld   ($6D6C),hl
6c55: cd d3 6c     call $6CD3
6c58: 2a 62 6d     ld   hl,($6D62)
6c5b: 22 57 6d     ld   ($6D57),hl
6c5e: 2a 68 83     ld   hl,($8368)
6c61: 22 59 6d     ld   ($6D59),hl
6c64: c3 85 6b     jp   $6B85
6c67: 2a 5d 6d     ld   hl,($6D5D)
6c6a: 22 62 6d     ld   ($6D62),hl
6c6d: 22 66 6d     ld   ($6D66),hl
6c70: 2a 59 6d     ld   hl,($6D59)
6c73: 22 64 6d     ld   ($6D64),hl
6c76: 2a 66 83     ld   hl,($8366)
6c79: 22 68 6d     ld   ($6D68),hl
6c7c: 2a 5b 6d     ld   hl,($6D5B)
6c7f: 22 6a 6d     ld   ($6D6A),hl
6c82: 22 6e 6d     ld   ($6D6E),hl
6c85: 2a 57 6d     ld   hl,($6D57)
6c88: 22 6c 6d     ld   ($6D6C),hl
6c8b: cd d3 6c     call $6CD3
6c8e: 2a 62 6d     ld   hl,($6D62)
6c91: 22 5d 6d     ld   ($6D5D),hl
6c94: 2a 66 83     ld   hl,($8366)
6c97: 22 5b 6d     ld   ($6D5B),hl
6c9a: c3 85 6b     jp   $6B85
6c9d: 2a 5b 6d     ld   hl,($6D5B)
6ca0: 22 62 6d     ld   ($6D62),hl
6ca3: 22 66 6d     ld   ($6D66),hl
6ca6: 2a 57 6d     ld   hl,($6D57)
6ca9: 22 64 6d     ld   ($6D64),hl
6cac: 2a 68 83     ld   hl,($8368)
6caf: 22 68 6d     ld   ($6D68),hl
6cb2: 2a 5d 6d     ld   hl,($6D5D)
6cb5: 22 6a 6d     ld   ($6D6A),hl
6cb8: 22 6e 6d     ld   ($6D6E),hl
6cbb: 2a 59 6d     ld   hl,($6D59)
6cbe: 22 6c 6d     ld   ($6D6C),hl
6cc1: cd d3 6c     call $6CD3
6cc4: 2a 62 6d     ld   hl,($6D62)
6cc7: 22 5b 6d     ld   ($6D5B),hl
6cca: 2a 68 83     ld   hl,($8368)
6ccd: 22 5d 6d     ld   ($6D5D),hl
6cd0: c3 85 6b     jp   $6B85
6cd3: af           xor  a
6cd4: 32 61 6d     ld   ($6D61),a
6cd7: 2a 64 6d     ld   hl,($6D64)
6cda: ed 5b 66 6d  ld   de,($6D66)
6cde: ed 52        sbc  hl,de
6ce0: f2 f0 6c     jp   p,$6CF0
6ce3: 3e 01        ld   a,$01
6ce5: f5           push af
6ce6: 2b           dec  hl
6ce7: 7c           ld   a,h
6ce8: 2f           cpl
6ce9: 67           ld   h,a
6cea: 7d           ld   a,l
6ceb: 2f           cpl
6cec: 6f           ld   l,a
6ced: f1           pop  af
6cee: 37           scf
6cef: 3f           ccf
6cf0: e5           push hl
6cf1: 2a 68 6d     ld   hl,($6D68)
6cf4: ed 5b 6a 6d  ld   de,($6D6A)
6cf8: ed 52        sbc  hl,de
6cfa: f2 0c 6d     jp   p,$6D0C
6cfd: f5           push af
6cfe: 2b           dec  hl
6cff: 7c           ld   a,h
6d00: 2f           cpl
6d01: 67           ld   h,a
6d02: 7d           ld   a,l
6d03: 2f           cpl
6d04: 6f           ld   l,a
6d05: f1           pop  af
6d06: 37           scf
6d07: 3f           ccf
6d08: ee 01        xor  $01
6d0a: 44           ld   b,h
6d0b: 4d           ld   c,l
6d0c: b7           or   a
6d0d: 28 05        jr   z,$6D14
6d0f: 3e 01        ld   a,$01
6d11: 32 61 6d     ld   ($6D61),a
6d14: cd 5f 86     call $865F
6d17: e5           push hl
6d18: d5           push de
6d19: af           xor  a
6d1a: 2a 6c 6d     ld   hl,($6D6C)
6d1d: ed 5b 6e 6d  ld   de,($6D6E)
6d21: ed 52        sbc  hl,de
6d23: f2 33 6d     jp   p,$6D33
6d26: f5           push af
6d27: 2b           dec  hl
6d28: 7c           ld   a,h
6d29: 2f           cpl
6d2a: 67           ld   h,a
6d2b: 7d           ld   a,l
6d2c: 2f           cpl
6d2d: 6f           ld   l,a
6d2e: f1           pop  af
6d2f: 37           scf
6d30: 3f           ccf
6d31: 3e 01        ld   a,$01
6d33: 44           ld   b,h
6d34: 4d           ld   c,l
6d35: d1           pop  de
6d36: e1           pop  hl
6d37: f5           push af
6d38: cd a9 87     call $87A9
6d3b: f1           pop  af
6d3c: eb           ex   de,hl
6d3d: e5           push hl
6d3e: 21 61 6d     ld   hl,$6D61
6d41: ae           xor  (hl)
6d42: e1           pop  hl
6d43: 28 09        jr   z,$6D4E
6d45: f5           push af
6d46: 7c           ld   a,h
6d47: 2f           cpl
6d48: 67           ld   h,a
6d49: 7d           ld   a,l
6d4a: 2f           cpl
6d4b: 6f           ld   l,a
6d4c: 23           inc  hl
6d4d: f1           pop  af
6d4e: ed 5b 62 6d  ld   de,($6D62)
6d52: 19           add  hl,de
6d53: 22 62 6d     ld   ($6D62),hl
6d56: c9           ret
6d57: 00           nop
6d58: 00           nop
6d59: 00           nop
6d5a: 00           nop
6d5b: 00           nop
6d5c: 00           nop
6d5d: 00           nop
6d5e: 00           nop
6d5f: 00           nop
6d60: 00           nop
6d61: 00           nop
6d62: 00           nop
6d63: 00           nop
6d64: 00           nop
6d65: 00           nop
6d66: 00           nop
6d67: 00           nop
6d68: 00           nop
6d69: 00           nop
6d6a: 00           nop
6d6b: 00           nop
6d6c: 00           nop
6d6d: 00           nop
6d6e: 00           nop
6d6f: 00           nop
6d70: 32 82 6d     ld   ($6D82),a
6d73: a7           and  a
6d74: 7b           ld   a,e
6d75: 2f           cpl
6d76: 5f           ld   e,a
6d77: 7a           ld   a,d
6d78: 2f           cpl
6d79: 57           ld   d,a
6d7a: 13           inc  de
6d7b: a7           and  a
6d7c: ed 5a        adc  hl,de
6d7e: 3a 82 6d     ld   a,($6D82)
6d81: c9           ret
6d82: 00           nop
6d83: 3a 65 f0     ld   a,($F065)
6d86: 4f           ld   c,a
6d87: 06 00        ld   b,$00
6d89: e5           push hl
6d8a: cd 9b f3     call $F39B
6d8d: 11 10 70     ld   de,$7010
6d90: 01 0a 00     ld   bc,$000A
6d93: e1           pop  hl
6d94: cd a5 f3     call $F3A5
6d97: af           xor  a
6d98: 32 83 70     ld   ($7083),a
6d9b: 32 84 70     ld   ($7084),a
6d9e: cd a7 6f     call $6FA7
6da1: cd cf 6f     call $6FCF
6da4: 3a 83 70     ld   a,($7083)
6da7: 21 84 70     ld   hl,$7084
6daa: be           cp   (hl)
6dab: 20 14        jr   nz,$6DC1
6dad: 2a 18 70     ld   hl,($7018)
6db0: ed 5b 16 70  ld   de,($7016)
6db4: 37           scf
6db5: 3f           ccf
6db6: ed 52        sbc  hl,de
6db8: 3e ff        ld   a,$FF
6dba: fa be 6d     jp   m,$6DBE
6dbd: af           xor  a
6dbe: 32 8b 70     ld   ($708B),a
6dc1: 2a 14 70     ld   hl,($7014)
6dc4: 2b           dec  hl
6dc5: 22 bc 82     ld   ($82BC),hl
6dc8: af           xor  a
6dc9: cb 24        sla  h
6dcb: cb 25        sla  l
6dcd: 8c           adc  a,h
6dce: 67           ld   h,a
6dcf: 22 be 82     ld   ($82BE),hl
6dd2: af           xor  a
6dd3: 32 85 70     ld   ($7085),a
6dd6: 21 30 6e     ld   hl,$6E30
6dd9: 06 00        ld   b,$00
6ddb: 3a 83 70     ld   a,($7083)
6dde: be           cp   (hl)
6ddf: 28 04        jr   z,$6DE5
6de1: 04           inc  b
6de2: 23           inc  hl
6de3: 18 f9        jr   $6DDE
6de5: 78           ld   a,b
6de6: 3d           dec  a
6de7: 32 86 70     ld   ($7086),a
6dea: 3a 85 70     ld   a,($7085)
6ded: b7           or   a
6dee: c2 2f 6e     jp   nz,$6E2F
6df1: 21 30 6e     ld   hl,$6E30
6df4: 3a 86 70     ld   a,($7086)
6df7: c6 01        add  a,$01
6df9: e6 03        and  $03
6dfb: 32 86 70     ld   ($7086),a
6dfe: 5f           ld   e,a
6dff: 16 00        ld   d,$00
6e01: 19           add  hl,de
6e02: 46           ld   b,(hl)
6e03: 3a 84 70     ld   a,($7084)
6e06: a8           xor  b
6e07: c2 15 6e     jp   nz,$6E15
6e0a: 3a 8b 70     ld   a,($708B)
6e0d: b7           or   a
6e0e: 20 05        jr   nz,$6E15
6e10: 3e ff        ld   a,$FF
6e12: 32 85 70     ld   ($7085),a
6e15: 78           ld   a,b
6e16: 32 82 70     ld   ($7082),a
6e19: 3a 86 70     ld   a,($7086)
6e1c: cb 27        sla  a
6e1e: 5f           ld   e,a
6e1f: 16 00        ld   d,$00
6e21: 21 1a 70     ld   hl,$701A
6e24: 19           add  hl,de
6e25: 5e           ld   e,(hl)
6e26: 23           inc  hl
6e27: 56           ld   d,(hl)
6e28: eb           ex   de,hl
6e29: cd 34 6e     call $6E34
6e2c: c3 ea 6d     jp   $6DEA
6e2f: c9           ret
6e30: 03           inc  bc
6e31: 00           nop
6e32: 02           ld   (bc),a
6e33: 01 22 c9     ld   bc,$C922
6e36: 7d           ld   a,l
6e37: e5           push hl
6e38: dd e1        pop  ix
6e3a: af           xor  a
6e3b: 32 80 70     ld   ($7080),a
6e3e: 32 81 70     ld   ($7081),a
6e41: 3a 82 70     ld   a,($7082)
6e44: 21 84 70     ld   hl,$7084
6e47: be           cp   (hl)
6e48: 20 27        jr   nz,$6E71
6e4a: 3a 8b 70     ld   a,($708B)
6e4d: b7           or   a
6e4e: 28 06        jr   z,$6E56
6e50: af           xor  a
6e51: 32 8b 70     ld   ($708B),a
6e54: 18 1b        jr   $6E71
6e56: dd 5e 05     ld   e,(ix+$05)
6e59: dd 56 06     ld   d,(ix+$06)
6e5c: 2a 18 70     ld   hl,($7018)
6e5f: eb           ex   de,hl
6e60: 37           scf
6e61: 3f           ccf
6e62: ed 52        sbc  hl,de
6e64: 3e ff        ld   a,$FF
6e66: f2 6e 6e     jp   p,$6E6E
6e69: 32 81 70     ld   ($7081),a
6e6c: 18 03        jr   $6E71
6e6e: 32 80 70     ld   ($7080),a
6e71: 3a 8e 70     ld   a,($708E)
6e74: b7           or   a
6e75: 3e 00        ld   a,$00
6e77: 32 8e 70     ld   ($708E),a
6e7a: 20 06        jr   nz,$6E82
6e7c: 3a 80 70     ld   a,($7080)
6e7f: cd 98 6e     call $6E98
6e82: 2a c9 7d     ld   hl,($7DC9)
6e85: 11 0b 00     ld   de,$000B
6e88: 19           add  hl,de
6e89: e5           push hl
6e8a: dd e1        pop  ix
6e8c: 3a 80 70     ld   a,($7080)
6e8f: b7           or   a
6e90: c0           ret  nz
6e91: 3a 81 70     ld   a,($7081)
6e94: cd 98 6e     call $6E98
6e97: c9           ret
6e98: b7           or   a
6e99: ed 5b 18 70  ld   de,($7018)
6e9d: 20 06        jr   nz,$6EA5
6e9f: dd 5e 05     ld   e,(ix+$05)
6ea2: dd 56 06     ld   d,(ix+$06)
6ea5: ed 53 7c 70  ld   ($707C),de
6ea9: dd 7e 00     ld   a,(ix+$00)
6eac: 32 b9 82     ld   ($82B9),a
6eaf: dd 5e 01     ld   e,(ix+$01)
6eb2: dd 56 02     ld   d,(ix+$02)
6eb5: ed 53 7e 70  ld   ($707E),de
6eb9: cd c9 6e     call $6EC9
6ebc: cd 03 6f     call $6F03
6ebf: cd 2b 6f     call $6F2B
6ec2: cd 77 6f     call $6F77
6ec5: cd 7e 6f     call $6F7E
6ec8: c9           ret
6ec9: dd 7e 03     ld   a,(ix+$03)
6ecc: fe 03        cp   $03
6ece: 28 02        jr   z,$6ED2
6ed0: 18 0d        jr   $6EDF
6ed2: 2a 7e 70     ld   hl,($707E)
6ed5: ed 5b 7a 70  ld   de,($707A)
6ed9: 37           scf
6eda: 3f           ccf
6edb: ed 52        sbc  hl,de
6edd: 18 0b        jr   $6EEA
6edf: 2a 7c 70     ld   hl,($707C)
6ee2: ed 5b 7e 70  ld   de,($707E)
6ee6: 37           scf
6ee7: 3f           ccf
6ee8: ed 52        sbc  hl,de
6eea: cd 89 6f     call $6F89
6eed: e5           push hl
6eee: 21 7f 00     ld   hl,$007F
6ef1: 37           scf
6ef2: 3f           ccf
6ef3: ed 52        sbc  hl,de
6ef5: e1           pop  hl
6ef6: f2 fa 6e     jp   p,$6EFA
6ef9: 23           inc  hl
6efa: 3a c5 4f     ld   a,($4FC5)
6efd: b4           or   h
6efe: 67           ld   h,a
6eff: 22 ba 82     ld   ($82BA),hl
6f02: c9           ret
6f03: dd 7e 04     ld   a,(ix+$04)
6f06: fe 02        cp   $02
6f08: 28 02        jr   z,$6F0C
6f0a: 18 0d        jr   $6F19
6f0c: 2a 7e 70     ld   hl,($707E)
6f0f: ed 5b 7c 70  ld   de,($707C)
6f13: 37           scf
6f14: 3f           ccf
6f15: ed 52        sbc  hl,de
6f17: 18 0b        jr   $6F24
6f19: 2a 7a 70     ld   hl,($707A)
6f1c: ed 5b 7e 70  ld   de,($707E)
6f20: 37           scf
6f21: 3f           ccf
6f22: ed 52        sbc  hl,de
6f24: cd 89 6f     call $6F89
6f27: 22 c2 82     ld   ($82C2),hl
6f2a: c9           ret
6f2b: 2a 10 70     ld   hl,($7010)
6f2e: dd 7e 09     ld   a,(ix+$09)
6f31: fe 2b        cp   $2B
6f33: cc 58 6f     call z,$6F58
6f36: fe 2d        cp   $2D
6f38: cc 5e 6f     call z,$6F5E
6f3b: e5           push hl
6f3c: ed 5b 12 70  ld   de,($7012)
6f40: dd 7e 0a     ld   a,(ix+$0a)
6f43: fe 2b        cp   $2B
6f45: cc 67 6f     call z,$6F67
6f48: fe 2d        cp   $2D
6f4a: cc 6d 6f     call z,$6F6D
6f4d: e1           pop  hl
6f4e: cd bf 69     call $69BF
6f51: 22 b0 82     ld   ($82B0),hl
6f54: 32 b2 82     ld   ($82B2),a
6f57: c9           ret
6f58: ed 5b 14 70  ld   de,($7014)
6f5c: 19           add  hl,de
6f5d: c9           ret
6f5e: ed 5b 14 70  ld   de,($7014)
6f62: 37           scf
6f63: 3f           ccf
6f64: ed 52        sbc  hl,de
6f66: c9           ret
6f67: 2a 14 70     ld   hl,($7014)
6f6a: 19           add  hl,de
6f6b: eb           ex   de,hl
6f6c: c9           ret
6f6d: 2a 14 70     ld   hl,($7014)
6f70: eb           ex   de,hl
6f71: 37           scf
6f72: 3f           ccf
6f73: ed 52        sbc  hl,de
6f75: eb           ex   de,hl
6f76: c9           ret
6f77: 21 ad 82     ld   hl,$82AD
6f7a: cd 82 81     call $8182
6f7d: c9           ret
6f7e: dd 5e 07     ld   e,(ix+$07)
6f81: dd 56 08     ld   d,(ix+$08)
6f84: ed 53 7a 70  ld   ($707A),de
6f88: c9           ret
6f89: cd 0a 70     call $700A
6f8c: b7           or   a
6f8d: 21 00 00     ld   hl,$0000
6f90: 11 00 00     ld   de,$0000
6f93: 28 11        jr   z,$6FA6
6f95: 2a 14 70     ld   hl,($7014)
6f98: e5           push hl
6f99: 4f           ld   c,a
6f9a: 06 00        ld   b,$00
6f9c: cd 5f 86     call $865F
6f9f: 01 ff 00     ld   bc,$00FF
6fa2: cd a9 87     call $87A9
6fa5: eb           ex   de,hl
6fa6: c9           ret
6fa7: 2a 16 70     ld   hl,($7016)
6faa: 22 7a 70     ld   ($707A),hl
6fad: 22 8c 70     ld   ($708C),hl
6fb0: cd dc 6f     call $6FDC
6fb3: 32 83 70     ld   ($7083),a
6fb6: ed 53 7c 70  ld   ($707C),de
6fba: eb           ex   de,hl
6fbb: 11 2d 00     ld   de,$002D
6fbe: 37           scf
6fbf: 3f           ccf
6fc0: ed 52        sbc  hl,de
6fc2: ed 5b 7a 70  ld   de,($707A)
6fc6: ed 52        sbc  hl,de
6fc8: f0           ret  p
6fc9: 3e ff        ld   a,$FF
6fcb: 32 8e 70     ld   ($708E),a
6fce: c9           ret
6fcf: 2a 18 70     ld   hl,($7018)
6fd2: 22 8c 70     ld   ($708C),hl
6fd5: cd dc 6f     call $6FDC
6fd8: 32 84 70     ld   ($7084),a
6fdb: c9           ret
6fdc: 11 5a 00     ld   de,$005A
6fdf: 37           scf
6fe0: 3f           ccf
6fe1: ed 52        sbc  hl,de
6fe3: 3e 03        ld   a,$03
6fe5: f8           ret  m
6fe6: 2a 8c 70     ld   hl,($708C)
6fe9: 11 b4 00     ld   de,$00B4
6fec: ed 52        sbc  hl,de
6fee: 3e 00        ld   a,$00
6ff0: f8           ret  m
6ff1: 2a 8c 70     ld   hl,($708C)
6ff4: 11 0e 01     ld   de,$010E
6ff7: ed 52        sbc  hl,de
6ff9: 3e 02        ld   a,$02
6ffb: f8           ret  m
6ffc: 2a 8c 70     ld   hl,($708C)
6fff: 11 68 01     ld   de,$0168
7002: ed 52        sbc  hl,de
7004: 3e 01        ld   a,$01
7006: f8           ret  m
7007: 3e ff        ld   a,$FF
7009: c9           ret
700a: 11 91 70     ld   de,$7091
700d: 19           add  hl,de
700e: 7e           ld   a,(hl)
700f: c9           ret
7010: 00           nop
7011: 00           nop
7012: 00           nop
7013: 00           nop
7014: 00           nop
7015: 00           nop
7016: 00           nop
7017: 00           nop
7018: 00           nop
7019: 00           nop
701a: 22 70 38     ld   ($3870),hl
701d: 70           ld   (hl),b
701e: 4e           ld   c,(hl)
701f: 70           ld   (hl),b
7020: 64           ld   h,h
7021: 70           ld   (hl),b
7022: 24           inc  h
7023: 00           nop
7024: 00           nop
7025: 00           nop
7026: 01 2d 00     ld   bc,$002D
7029: 2d           dec  l
702a: 00           nop
702b: 2b           dec  hl
702c: 00           nop
702d: 21 5a 00     ld   hl,$005A
7030: 03           inc  bc
7031: 02           ld   (bc),a
7032: 5a           ld   e,d
7033: 00           nop
7034: 5a           ld   e,d
7035: 00           nop
7036: 00           nop
7037: 2d           dec  l
7038: 26 5a        ld   h,$5A
703a: 00           nop
703b: 00           nop
703c: 01 87 00     ld   bc,$0087
703f: 87           add  a,a
7040: 00           nop
7041: 00           nop
7042: 2d           dec  l
7043: 23           inc  hl
7044: b4           or   h
7045: 00           nop
7046: 03           inc  bc
7047: 02           ld   (bc),a
7048: b4           or   h
7049: 00           nop
704a: b4           or   h
704b: 00           nop
704c: 2d           dec  l
704d: 00           nop
704e: 20 b4        jr   nz,$7004
7050: 00           nop
7051: 00           nop
7052: 01 e1 00     ld   bc,$00E1
7055: e1           pop  hl
7056: 00           nop
7057: 2d           dec  l
7058: 00           nop
7059: 25           dec  h
705a: 0e 01        ld   c,$01
705c: 03           inc  bc
705d: 02           ld   (bc),a
705e: 0e 01        ld   c,$01
7060: 0e 01        ld   c,$01
7062: 00           nop
7063: 2b           dec  hl
7064: 22 0e 01     ld   ($010E),hl
7067: 00           nop
7068: 01 3b 01     ld   bc,$013B
706b: 3b           dec  sp
706c: 01 00 2b     ld   bc,$2B00
706f: 27           daa
7070: 68           ld   l,b
7071: 01 03 02     ld   bc,$0203
7074: 68           ld   l,b
7075: 01 00 00     ld   bc,$0000
7078: 2b           dec  hl
7079: 00           nop
707a: 00           nop
707b: 00           nop
707c: 00           nop
707d: 00           nop
707e: 00           nop
707f: 00           nop
7080: 00           nop
7081: 00           nop
7082: 00           nop
7083: 00           nop
7084: 00           nop
7085: 00           nop
7086: 00           nop
7087: 00           nop
7088: 00           nop
7089: 00           nop
708a: 00           nop
708b: 00           nop
708c: 00           nop
708d: 00           nop
708e: 00           nop
708f: 6a           ld   l,d
7090: 01 00 04     ld   bc,$0400
7093: 09           add  hl,bc
7094: 0d           dec  c
7095: 12           ld   (de),a
7096: 16 1b        ld   d,$1B
7098: 1f           rra
7099: 23           inc  hl
709a: 28 2c        jr   z,$70C8
709c: 31 35 39     ld   sp,$3935
709f: 3e 42        ld   a,$42
70a1: 46           ld   b,(hl)
70a2: 4b           ld   c,e
70a3: 4f           ld   c,a
70a4: 53           ld   d,e
70a5: 57           ld   d,a
70a6: 5b           ld   e,e
70a7: 60           ld   h,b
70a8: 64           ld   h,h
70a9: 68           ld   l,b
70aa: 6c           ld   l,h
70ab: 70           ld   (hl),b
70ac: 74           ld   (hl),h
70ad: 78           ld   a,b
70ae: 7c           ld   a,h
70af: 7f           ld   a,a
70b0: 83           add  a,e
70b1: 87           add  a,a
70b2: 8b           adc  a,e
70b3: 8f           adc  a,a
70b4: 92           sub  d
70b5: 96           sub  (hl)
70b6: 99           sbc  a,c
70b7: 9d           sbc  a,l
70b8: a0           and  b
70b9: a4           and  h
70ba: a7           and  a
70bb: ab           xor  e
70bc: ae           xor  (hl)
70bd: b1           or   c
70be: b4           or   h
70bf: b7           or   a
70c0: ba           cp   d
70c1: be           cp   (hl)
70c2: c0           ret  nz
70c3: c3 c6 c9     jp   $C9C6
70c6: cc ce d1     call z,$D1CE
70c9: d3 d6        out  ($D6),a
70cb: d8           ret  c
70cc: db dd        in   a,($DD)
70ce: df           rst  $18
70cf: e1           pop  hl
70d0: e3           ex   (sp),hl
70d1: e5           push hl
70d2: e7           rst  $20
70d3: e9           jp   (hl)
70d4: eb           ex   de,hl
70d5: ec ee f0     call pe,$F0EE
70d8: f1           pop  af
70d9: f3           di
70da: f4 f5 f6     call p,$F6F5
70dd: f7           rst  $30
70de: f8           ret  m
70df: f9           ld   sp,hl
70e0: fa fb fc     jp   m,$FCFB
70e3: fd           db   $fd
70e4: fd           db   $fd
70e5: fe fe        cp   $FE
70e7: fe ff        cp   $FF
70e9: ff           rst  $38
70ea: ff           rst  $38
70eb: ff           rst  $38
70ec: 32 74 83     ld   ($8374),a
70ef: 3a 65 f0     ld   a,($F065)
70f2: 4f           ld   c,a
70f3: 06 00        ld   b,$00
70f5: e5           push hl
70f6: cd 9b f3     call $F39B
70f9: e1           pop  hl
70fa: 11 15 78     ld   de,$7815
70fd: 01 0a 00     ld   bc,$000A
7100: cd a5 f3     call $F3A5
7103: 21 15 78     ld   hl,$7815
7106: 11 10 70     ld   de,$7010
7109: 01 0a 00     ld   bc,$000A
710c: ed b0        ldir
710e: cd bc 72     call $72BC
7111: 3a 74 83     ld   a,($8374)
7114: e6 02        and  $02
7116: 20 03        jr   nz,$711B
7118: cd 36 79     call $7936
711b: 3a 74 83     ld   a,($8374)
711e: e6 01        and  $01
7120: c0           ret  nz
7121: 2a 15 78     ld   hl,($7815)
7124: ed 5b 17 78  ld   de,($7817)
7128: e5           push hl
7129: d5           push de
712a: cd bf 69     call $69BF
712d: 22 80 82     ld   ($8280),hl
7130: 32 82 82     ld   ($8282),a
7133: 2a 1f 78     ld   hl,($781F)
7136: ed 5b 21 78  ld   de,($7821)
713a: cd 5b 6a     call $6A5B
713d: d1           pop  de
713e: e1           pop  hl
713f: cd bf 69     call $69BF
7142: 22 80 82     ld   ($8280),hl
7145: 32 82 82     ld   ($8282),a
7148: 2a 23 78     ld   hl,($7823)
714b: ed 5b 25 78  ld   de,($7825)
714f: cd 5b 6a     call $6A5B
7152: cd 97 6d     call $6D97
7155: c9           ret
7156: af           xor  a
7157: 32 f2 77     ld   ($77F2),a
715a: 3a f1 77     ld   a,($77F1)
715d: cb af        res  5,a
715f: cb b7        res  6,a
7161: 37           scf
7162: 3f           ccf
7163: 2a 09 78     ld   hl,($7809)
7166: ed 5b 17 78  ld   de,($7817)
716a: ed 52        sbc  hl,de
716c: 22 ff 77     ld   ($77FF),hl
716f: 37           scf
7170: 3f           ccf
7171: 2a 09 78     ld   hl,($7809)
7174: ed 5b 21 78  ld   de,($7821)
7178: ed 52        sbc  hl,de
717a: 22 fb 77     ld   ($77FB),hl
717d: 38 03        jr   c,$7182
717f: cb ef        set  5,a
7181: 37           scf
7182: 3f           ccf
7183: 2a 09 78     ld   hl,($7809)
7186: ed 5b 25 78  ld   de,($7825)
718a: ed 52        sbc  hl,de
718c: 22 fd 77     ld   ($77FD),hl
718f: 38 03        jr   c,$7194
7191: cb f7        set  6,a
7193: 37           scf
7194: 3f           ccf
7195: 32 f1 77     ld   ($77F1),a
7198: 3a f1 77     ld   a,($77F1)
719b: e6 a0        and  $A0
719d: b7           or   a
719e: ca b7 71     jp   z,$71B7
71a1: ee a0        xor  $A0
71a3: ca b7 71     jp   z,$71B7
71a6: 3a f1 77     ld   a,($77F1)
71a9: e6 c0        and  $C0
71ab: b7           or   a
71ac: ca 39 72     jp   z,$7239
71af: ee c0        xor  $C0
71b1: ca 39 72     jp   z,$7239
71b4: c3 b8 72     jp   $72B8
71b7: 3a f2 77     ld   a,($77F2)
71ba: f6 01        or   $01
71bc: 32 f2 77     ld   ($77F2),a
71bf: af           xor  a
71c0: 32 61 6d     ld   ($6D61),a
71c3: ed 4b ff 77  ld   bc,($77FF)
71c7: 78           ld   a,b
71c8: e6 80        and  $80
71ca: 28 10        jr   z,$71DC
71cc: 3e 01        ld   a,$01
71ce: 32 61 6d     ld   ($6D61),a
71d1: f5           push af
71d2: 0b           dec  bc
71d3: 78           ld   a,b
71d4: 2f           cpl
71d5: 47           ld   b,a
71d6: 79           ld   a,c
71d7: 2f           cpl
71d8: 4f           ld   c,a
71d9: f1           pop  af
71da: 37           scf
71db: 3f           ccf
71dc: c5           push bc
71dd: ed 4b f5 77  ld   bc,($77F5)
71e1: 78           ld   a,b
71e2: e6 80        and  $80
71e4: 28 13        jr   z,$71F9
71e6: f5           push af
71e7: 0b           dec  bc
71e8: 78           ld   a,b
71e9: 2f           cpl
71ea: 47           ld   b,a
71eb: 79           ld   a,c
71ec: 2f           cpl
71ed: 4f           ld   c,a
71ee: f1           pop  af
71ef: 37           scf
71f0: 3f           ccf
71f1: 3a 61 6d     ld   a,($6D61)
71f4: ee 01        xor  $01
71f6: 32 61 6d     ld   ($6D61),a
71f9: cd 5f 86     call $865F
71fc: e5           push hl
71fd: d5           push de
71fe: af           xor  a
71ff: ed 4b f3 77  ld   bc,($77F3)
7203: 78           ld   a,b
7204: e6 80        and  $80
7206: 28 0d        jr   z,$7215
7208: f5           push af
7209: 0b           dec  bc
720a: 78           ld   a,b
720b: 2f           cpl
720c: 47           ld   b,a
720d: 79           ld   a,c
720e: 2f           cpl
720f: 4f           ld   c,a
7210: f1           pop  af
7211: 37           scf
7212: 3f           ccf
7213: 3e 01        ld   a,$01
7215: d1           pop  de
7216: e1           pop  hl
7217: f5           push af
7218: cd a9 87     call $87A9
721b: f1           pop  af
721c: eb           ex   de,hl
721d: e5           push hl
721e: 21 61 6d     ld   hl,$6D61
7221: ae           xor  (hl)
7222: e1           pop  hl
7223: 28 09        jr   z,$722E
7225: f5           push af
7226: 7c           ld   a,h
7227: 2f           cpl
7228: 67           ld   h,a
7229: 7d           ld   a,l
722a: 2f           cpl
722b: 6f           ld   l,a
722c: 23           inc  hl
722d: f1           pop  af
722e: ed 5b 15 78  ld   de,($7815)
7232: 19           add  hl,de
7233: 22 01 78     ld   ($7801),hl
7236: c3 a6 71     jp   $71A6
7239: 3a f2 77     ld   a,($77F2)
723c: f6 02        or   $02
723e: 32 f2 77     ld   ($77F2),a
7241: af           xor  a
7242: 32 61 6d     ld   ($6D61),a
7245: ed 4b ff 77  ld   bc,($77FF)
7249: 78           ld   a,b
724a: e6 80        and  $80
724c: 28 10        jr   z,$725E
724e: 3e 01        ld   a,$01
7250: 32 61 6d     ld   ($6D61),a
7253: f5           push af
7254: 0b           dec  bc
7255: 78           ld   a,b
7256: 2f           cpl
7257: 47           ld   b,a
7258: 79           ld   a,c
7259: 2f           cpl
725a: 4f           ld   c,a
725b: f1           pop  af
725c: 37           scf
725d: 3f           ccf
725e: c5           push bc
725f: ed 4b f9 77  ld   bc,($77F9)
7263: 78           ld   a,b
7264: e6 80        and  $80
7266: 28 13        jr   z,$727B
7268: f5           push af
7269: 0b           dec  bc
726a: 78           ld   a,b
726b: 2f           cpl
726c: 47           ld   b,a
726d: 79           ld   a,c
726e: 2f           cpl
726f: 4f           ld   c,a
7270: f1           pop  af
7271: 37           scf
7272: 3f           ccf
7273: 3a 61 6d     ld   a,($6D61)
7276: ee 01        xor  $01
7278: 32 61 6d     ld   ($6D61),a
727b: cd 5f 86     call $865F
727e: e5           push hl
727f: d5           push de
7280: af           xor  a
7281: ed 4b f7 77  ld   bc,($77F7)
7285: 78           ld   a,b
7286: e6 80        and  $80
7288: 28 0d        jr   z,$7297
728a: f5           push af
728b: 0b           dec  bc
728c: 78           ld   a,b
728d: 2f           cpl
728e: 47           ld   b,a
728f: 79           ld   a,c
7290: 2f           cpl
7291: 4f           ld   c,a
7292: f1           pop  af
7293: 37           scf
7294: 3f           ccf
7295: 3e 01        ld   a,$01
7297: d1           pop  de
7298: e1           pop  hl
7299: f5           push af
729a: cd a9 87     call $87A9
729d: f1           pop  af
729e: eb           ex   de,hl
729f: e5           push hl
72a0: 21 61 6d     ld   hl,$6D61
72a3: ae           xor  (hl)
72a4: e1           pop  hl
72a5: 28 09        jr   z,$72B0
72a7: f5           push af
72a8: 7c           ld   a,h
72a9: 2f           cpl
72aa: 67           ld   h,a
72ab: 7d           ld   a,l
72ac: 2f           cpl
72ad: 6f           ld   l,a
72ae: 23           inc  hl
72af: f1           pop  af
72b0: ed 5b 15 78  ld   de,($7815)
72b4: 19           add  hl,de
72b5: 22 05 78     ld   ($7805),hl
72b8: 3a f2 77     ld   a,($77F2)
72bb: c9           ret
72bc: 2a 1b 78     ld   hl,($781B)
72bf: cd d5 73     call $73D5
72c2: 22 25 78     ld   ($7825),hl
72c5: 2a 1b 78     ld   hl,($781B)
72c8: cd 3b 74     call $743B
72cb: 22 23 78     ld   ($7823),hl
72ce: 2a 1d 78     ld   hl,($781D)
72d1: cd d5 73     call $73D5
72d4: 22 21 78     ld   ($7821),hl
72d7: 2a 1d 78     ld   hl,($781D)
72da: cd 3b 74     call $743B
72dd: 22 1f 78     ld   ($781F),hl
72e0: 3e ff        ld   a,$FF
72e2: 32 27 78     ld   ($7827),a
72e5: af           xor  a
72e6: 32 f1 77     ld   ($77F1),a
72e9: 32 13 78     ld   ($7813),a
72ec: 32 14 78     ld   ($7814),a
72ef: 2a 15 78     ld   hl,($7815)
72f2: 22 14 79     ld   ($7914),hl
72f5: 2a 17 78     ld   hl,($7817)
72f8: 22 16 79     ld   ($7916),hl
72fb: 2a 19 78     ld   hl,($7819)
72fe: 22 18 79     ld   ($7918),hl
7301: 2a 21 78     ld   hl,($7821)
7304: ed 5b 17 78  ld   de,($7817)
7308: ed 52        sbc  hl,de
730a: 22 f3 77     ld   ($77F3),hl
730d: 30 03        jr   nc,$7312
730f: cb c7        set  0,a
7311: b7           or   a
7312: 20 07        jr   nz,$731B
7314: f5           push af
7315: 3e ff        ld   a,$FF
7317: 32 13 78     ld   ($7813),a
731a: f1           pop  af
731b: 2a 25 78     ld   hl,($7825)
731e: ed 52        sbc  hl,de
7320: 22 f7 77     ld   ($77F7),hl
7323: 30 05        jr   nc,$732A
7325: 37           scf
7326: 3f           ccf
7327: cb cf        set  1,a
7329: b7           or   a
732a: 20 07        jr   nz,$7333
732c: f5           push af
732d: 3e ff        ld   a,$FF
732f: 32 14 78     ld   ($7814),a
7332: f1           pop  af
7333: 2a 1f 78     ld   hl,($781F)
7336: ed 5b 15 78  ld   de,($7815)
733a: ed 52        sbc  hl,de
733c: 22 f5 77     ld   ($77F5),hl
733f: 30 04        jr   nc,$7345
7341: cb d7        set  2,a
7343: 37           scf
7344: 3f           ccf
7345: 2a 23 78     ld   hl,($7823)
7348: ed 52        sbc  hl,de
734a: 22 f9 77     ld   ($77F9),hl
734d: 30 04        jr   nc,$7353
734f: cb df        set  3,a
7351: 37           scf
7352: 3f           ccf
7353: 32 f1 77     ld   ($77F1),a
7356: cb 47        bit  0,a
7358: 28 1b        jr   z,$7375
735a: cb 4f        bit  1,a
735c: 28 17        jr   z,$7375
735e: 2a 1f 78     ld   hl,($781F)
7361: ed 5b 23 78  ld   de,($7823)
7365: 37           scf
7366: 3f           ccf
7367: ed 52        sbc  hl,de
7369: 38 0a        jr   c,$7375
736b: 3a f1 77     ld   a,($77F1)
736e: cb e7        set  4,a
7370: 32 f1 77     ld   ($77F1),a
7373: 18 20        jr   $7395
7375: 37           scf
7376: 3f           ccf
7377: 3a f1 77     ld   a,($77F1)
737a: cb 47        bit  0,a
737c: 20 17        jr   nz,$7395
737e: cb 4f        bit  1,a
7380: 20 13        jr   nz,$7395
7382: 2a 23 78     ld   hl,($7823)
7385: ed 5b 1f 78  ld   de,($781F)
7389: ed 52        sbc  hl,de
738b: 38 08        jr   c,$7395
738d: 3a f1 77     ld   a,($77F1)
7390: cb e7        set  4,a
7392: 32 f1 77     ld   ($77F1),a
7395: 37           scf
7396: 3f           ccf
7397: 2a 21 78     ld   hl,($7821)
739a: ed 5b 17 78  ld   de,($7817)
739e: ed 52        sbc  hl,de
73a0: 22 f3 77     ld   ($77F3),hl
73a3: 37           scf
73a4: 3f           ccf
73a5: 2a 1f 78     ld   hl,($781F)
73a8: ed 5b 15 78  ld   de,($7815)
73ac: ed 52        sbc  hl,de
73ae: 22 f5 77     ld   ($77F5),hl
73b1: 37           scf
73b2: 3f           ccf
73b3: 2a 25 78     ld   hl,($7825)
73b6: ed 5b 17 78  ld   de,($7817)
73ba: ed 52        sbc  hl,de
73bc: 22 f7 77     ld   ($77F7),hl
73bf: 37           scf
73c0: 3f           ccf
73c1: 2a 23 78     ld   hl,($7823)
73c4: ed 5b 15 78  ld   de,($7815)
73c8: ed 52        sbc  hl,de
73ca: 22 f9 77     ld   ($77F9),hl
73cd: 2a 18 79     ld   hl,($7918)
73d0: 23           inc  hl
73d1: 22 18 79     ld   ($7918),hl
73d4: c9           ret
73d5: cd b6 74     call $74B6
73d8: fe 00        cp   $00
73da: ca ec 73     jp   z,$73EC
73dd: fe 01        cp   $01
73df: ca fc 73     jp   z,$73FC
73e2: fe 02        cp   $02
73e4: ca 14 74     jp   z,$7414
73e7: fe 03        cp   $03
73e9: ca 27 74     jp   z,$7427
73ec: cd 89 6f     call $6F89
73ef: cd a8 74     call $74A8
73f2: ed 5b 17 78  ld   de,($7817)
73f6: eb           ex   de,hl
73f7: 37           scf
73f8: 3f           ccf
73f9: ed 52        sbc  hl,de
73fb: c9           ret
73fc: 11 b4 00     ld   de,$00B4
73ff: eb           ex   de,hl
7400: 37           scf
7401: 3f           ccf
7402: ed 52        sbc  hl,de
7404: cd 89 6f     call $6F89
7407: cd a8 74     call $74A8
740a: ed 5b 17 78  ld   de,($7817)
740e: eb           ex   de,hl
740f: 37           scf
7410: 3f           ccf
7411: ed 52        sbc  hl,de
7413: c9           ret
7414: 11 b4 00     ld   de,$00B4
7417: 37           scf
7418: 3f           ccf
7419: ed 52        sbc  hl,de
741b: cd 89 6f     call $6F89
741e: cd a8 74     call $74A8
7421: ed 5b 17 78  ld   de,($7817)
7425: 19           add  hl,de
7426: c9           ret
7427: 11 68 01     ld   de,$0168
742a: eb           ex   de,hl
742b: 37           scf
742c: 3f           ccf
742d: ed 52        sbc  hl,de
742f: cd 89 6f     call $6F89
7432: cd a8 74     call $74A8
7435: ed 5b 17 78  ld   de,($7817)
7439: 19           add  hl,de
743a: c9           ret
743b: cd b6 74     call $74B6
743e: fe 00        cp   $00
7440: ca 52 74     jp   z,$7452
7443: fe 01        cp   $01
7445: ca 66 74     jp   z,$7466
7448: fe 02        cp   $02
744a: ca 7d 74     jp   z,$747D
744d: fe 03        cp   $03
744f: ca 95 74     jp   z,$7495
7452: 11 5a 00     ld   de,$005A
7455: eb           ex   de,hl
7456: 37           scf
7457: 3f           ccf
7458: ed 52        sbc  hl,de
745a: cd 89 6f     call $6F89
745d: cd a8 74     call $74A8
7460: ed 5b 15 78  ld   de,($7815)
7464: 19           add  hl,de
7465: c9           ret
7466: 11 5a 00     ld   de,$005A
7469: 37           scf
746a: 3f           ccf
746b: ed 52        sbc  hl,de
746d: cd 89 6f     call $6F89
7470: cd a8 74     call $74A8
7473: ed 5b 15 78  ld   de,($7815)
7477: eb           ex   de,hl
7478: 37           scf
7479: 3f           ccf
747a: ed 52        sbc  hl,de
747c: c9           ret
747d: 11 0e 01     ld   de,$010E
7480: eb           ex   de,hl
7481: 37           scf
7482: 3f           ccf
7483: ed 52        sbc  hl,de
7485: cd 89 6f     call $6F89
7488: cd a8 74     call $74A8
748b: ed 5b 15 78  ld   de,($7815)
748f: eb           ex   de,hl
7490: 37           scf
7491: 3f           ccf
7492: ed 52        sbc  hl,de
7494: c9           ret
7495: 11 0e 01     ld   de,$010E
7498: 37           scf
7499: 3f           ccf
749a: ed 52        sbc  hl,de
749c: cd 89 6f     call $6F89
749f: cd a8 74     call $74A8
74a2: ed 5b 15 78  ld   de,($7815)
74a6: 19           add  hl,de
74a7: c9           ret
74a8: e5           push hl
74a9: 21 7f 00     ld   hl,$007F
74ac: 37           scf
74ad: 3f           ccf
74ae: ed 52        sbc  hl,de
74b0: e1           pop  hl
74b1: f2 b5 74     jp   p,$74B5
74b4: 23           inc  hl
74b5: c9           ret
74b6: 44           ld   b,h
74b7: 4d           ld   c,l
74b8: 11 5a 00     ld   de,$005A
74bb: 37           scf
74bc: 3f           ccf
74bd: ed 52        sbc  hl,de
74bf: 3e 00        ld   a,$00
74c1: fa de 74     jp   m,$74DE
74c4: 60           ld   h,b
74c5: 69           ld   l,c
74c6: 11 b4 00     ld   de,$00B4
74c9: ed 52        sbc  hl,de
74cb: 3e 01        ld   a,$01
74cd: fa de 74     jp   m,$74DE
74d0: 60           ld   h,b
74d1: 69           ld   l,c
74d2: 11 0e 01     ld   de,$010E
74d5: ed 52        sbc  hl,de
74d7: 3e 02        ld   a,$02
74d9: fa de 74     jp   m,$74DE
74dc: 3e 03        ld   a,$03
74de: 60           ld   h,b
74df: 69           ld   l,c
74e0: c9           ret
74e1: 2a ac 7a     ld   hl,($7AAC)
74e4: 22 0f 78     ld   ($780F),hl
74e7: ed 5b ae 7a  ld   de,($7AAE)
74eb: ed 53 11 78  ld   ($7811),de
74ef: 2a 15 78     ld   hl,($7815)
74f2: e5           push hl
74f3: ed 5b 0f 78  ld   de,($780F)
74f7: 37           scf
74f8: 3f           ccf
74f9: ed 52        sbc  hl,de
74fb: 22 0d 78     ld   ($780D),hl
74fe: e1           pop  hl
74ff: ed 5a        adc  hl,de
7501: 22 0b 78     ld   ($780B),hl
7504: 2a 17 78     ld   hl,($7817)
7507: ed 5b 11 78  ld   de,($7811)
750b: ed 5a        adc  hl,de
750d: 22 09 78     ld   ($7809),hl
7510: 3a f1 77     ld   a,($77F1)
7513: cb bf        res  7,a
7515: 32 f1 77     ld   ($77F1),a
7518: cd 7a 75     call $757A
751b: 2a 17 78     ld   hl,($7817)
751e: ed 5b 11 78  ld   de,($7811)
7522: 37           scf
7523: 3f           ccf
7524: ed 52        sbc  hl,de
7526: 22 09 78     ld   ($7809),hl
7529: 3a f1 77     ld   a,($77F1)
752c: cb ff        set  7,a
752e: 32 f1 77     ld   ($77F1),a
7531: cd 7a 75     call $757A
7534: 2a 15 78     ld   hl,($7815)
7537: e5           push hl
7538: ed 5b 11 78  ld   de,($7811)
753c: 37           scf
753d: 3f           ccf
753e: ed 52        sbc  hl,de
7540: 22 0d 78     ld   ($780D),hl
7543: e1           pop  hl
7544: ed 5a        adc  hl,de
7546: 22 0b 78     ld   ($780B),hl
7549: 2a 17 78     ld   hl,($7817)
754c: ed 5b 0f 78  ld   de,($780F)
7550: ed 5a        adc  hl,de
7552: 22 09 78     ld   ($7809),hl
7555: 3a f1 77     ld   a,($77F1)
7558: cb bf        res  7,a
755a: 32 f1 77     ld   ($77F1),a
755d: cd 7a 75     call $757A
7560: 2a 17 78     ld   hl,($7817)
7563: ed 5b 0f 78  ld   de,($780F)
7567: 37           scf
7568: 3f           ccf
7569: ed 52        sbc  hl,de
756b: 22 09 78     ld   ($7809),hl
756e: 3a f1 77     ld   a,($77F1)
7571: cb ff        set  7,a
7573: 32 f1 77     ld   ($77F1),a
7576: cd 7a 75     call $757A
7579: c9           ret
757a: cd 56 71     call $7156
757d: 2a 17 78     ld   hl,($7817)
7580: ed 5b 19 78  ld   de,($7819)
7584: 19           add  hl,de
7585: eb           ex   de,hl
7586: 2a 09 78     ld   hl,($7809)
7589: 37           scf
758a: 3f           ccf
758b: ed 52        sbc  hl,de
758d: c8           ret  z
758e: 2a 17 78     ld   hl,($7817)
7591: ed 5b 19 78  ld   de,($7819)
7595: 37           scf
7596: 3f           ccf
7597: ed 52        sbc  hl,de
7599: eb           ex   de,hl
759a: 2a 09 78     ld   hl,($7809)
759d: 37           scf
759e: 3f           ccf
759f: ed 52        sbc  hl,de
75a1: c8           ret  z
75a2: fe 00        cp   $00
75a4: ca b7 75     jp   z,$75B7
75a7: fe 01        cp   $01
75a9: ca 77 76     jp   z,$7677
75ac: fe 02        cp   $02
75ae: ca ad 76     jp   z,$76AD
75b1: fe 03        cp   $03
75b3: ca e3 76     jp   z,$76E3
75b6: c9           ret
75b7: 3a f1 77     ld   a,($77F1)
75ba: cb 47        bit  0,a
75bc: ca fa 75     jp   z,$75FA
75bf: cb 4f        bit  1,a
75c1: ca fa 75     jp   z,$75FA
75c4: cb 67        bit  4,a
75c6: ca e4 75     jp   z,$75E4
75c9: 3a f1 77     ld   a,($77F1)
75cc: cb 6f        bit  5,a
75ce: 28 04        jr   z,$75D4
75d0: cd 70 77     call $7770
75d3: c9           ret
75d4: cb 57        bit  2,a
75d6: 28 06        jr   z,$75DE
75d8: cb 5f        bit  3,a
75da: c4 70 77     call nz,$7770
75dd: c9           ret
75de: cb 5f        bit  3,a
75e0: cc 70 77     call z,$7770
75e3: c9           ret
75e4: 3a f1 77     ld   a,($77F1)
75e7: cb 6f        bit  5,a
75e9: c0           ret  nz
75ea: cb 57        bit  2,a
75ec: 28 06        jr   z,$75F4
75ee: cb 5f        bit  3,a
75f0: cc 70 77     call z,$7770
75f3: c9           ret
75f4: cb 5f        bit  3,a
75f6: c4 70 77     call nz,$7770
75f9: c9           ret
75fa: 3a f1 77     ld   a,($77F1)
75fd: cb 47        bit  0,a
75ff: c2 3f 76     jp   nz,$763F
7602: cb 4f        bit  1,a
7604: c2 3f 76     jp   nz,$763F
7607: 3a f1 77     ld   a,($77F1)
760a: cb 67        bit  4,a
760c: 28 1b        jr   z,$7629
760e: 3a f1 77     ld   a,($77F1)
7611: cb 6f        bit  5,a
7613: 20 04        jr   nz,$7619
7615: cd 70 77     call $7770
7618: c9           ret
7619: cb 57        bit  2,a
761b: 28 06        jr   z,$7623
761d: cb 5f        bit  3,a
761f: c4 70 77     call nz,$7770
7622: c9           ret
7623: cb 5f        bit  3,a
7625: cc 70 77     call z,$7770
7628: c9           ret
7629: 3a f1 77     ld   a,($77F1)
762c: cb 6f        bit  5,a
762e: c8           ret  z
762f: cb 57        bit  2,a
7631: 28 06        jr   z,$7639
7633: cb 5f        bit  3,a
7635: cc 70 77     call z,$7770
7638: c9           ret
7639: cb 5f        bit  3,a
763b: c4 70 77     call nz,$7770
763e: c9           ret
763f: 3a f1 77     ld   a,($77F1)
7642: cb 7f        bit  7,a
7644: ca 5f 76     jp   z,$765F
7647: 3a f1 77     ld   a,($77F1)
764a: e6 07        and  $07
764c: ee 05        xor  $05
764e: 20 04        jr   nz,$7654
7650: cd 70 77     call $7770
7653: c9           ret
7654: 3a f1 77     ld   a,($77F1)
7657: e6 0b        and  $0B
7659: ee 02        xor  $02
765b: cc 70 77     call z,$7770
765e: c9           ret
765f: 3a f1 77     ld   a,($77F1)
7662: e6 0b        and  $0B
7664: ee 09        xor  $09
7666: 20 04        jr   nz,$766C
7668: cd 70 77     call $7770
766b: c9           ret
766c: 3a f1 77     ld   a,($77F1)
766f: e6 07        and  $07
7671: ee 02        xor  $02
7673: cc 70 77     call z,$7770
7676: c9           ret
7677: 3a f1 77     ld   a,($77F1)
767a: cb 47        bit  0,a
767c: 28 15        jr   z,$7693
767e: 2a 01 78     ld   hl,($7801)
7681: 23           inc  hl
7682: ed 5b 09 78  ld   de,($7809)
7686: d5           push de
7687: fd e1        pop  iy
7689: dd 2a 0b 78  ld   ix,($780B)
768d: dd 2b        dec  ix
768f: cd 82 77     call $7782
7692: c9           ret
7693: 3a 13 78     ld   a,($7813)
7696: b7           or   a
7697: c0           ret  nz
7698: 2a 0d 78     ld   hl,($780D)
769b: 23           inc  hl
769c: ed 5b 09 78  ld   de,($7809)
76a0: d5           push de
76a1: fd e1        pop  iy
76a3: dd 2a 01 78  ld   ix,($7801)
76a7: dd 2b        dec  ix
76a9: cd 82 77     call $7782
76ac: c9           ret
76ad: 3a f1 77     ld   a,($77F1)
76b0: cb 4f        bit  1,a
76b2: 28 15        jr   z,$76C9
76b4: 2a 0d 78     ld   hl,($780D)
76b7: 23           inc  hl
76b8: ed 5b 09 78  ld   de,($7809)
76bc: d5           push de
76bd: fd e1        pop  iy
76bf: dd 2a 05 78  ld   ix,($7805)
76c3: dd 2b        dec  ix
76c5: cd 82 77     call $7782
76c8: c9           ret
76c9: 3a 14 78     ld   a,($7814)
76cc: b7           or   a
76cd: c0           ret  nz
76ce: 2a 05 78     ld   hl,($7805)
76d1: 23           inc  hl
76d2: ed 5b 09 78  ld   de,($7809)
76d6: d5           push de
76d7: fd e1        pop  iy
76d9: dd 2a 0b 78  ld   ix,($780B)
76dd: dd 2b        dec  ix
76df: cd 82 77     call $7782
76e2: c9           ret
76e3: 3a f1 77     ld   a,($77F1)
76e6: cb 47        bit  0,a
76e8: ca 2d 77     jp   z,$772D
76eb: cb 67        bit  4,a
76ed: 20 15        jr   nz,$7704
76ef: 2a 01 78     ld   hl,($7801)
76f2: 23           inc  hl
76f3: ed 5b 09 78  ld   de,($7809)
76f7: d5           push de
76f8: fd e1        pop  iy
76fa: dd 2a 05 78  ld   ix,($7805)
76fe: dd 2b        dec  ix
7700: cd 82 77     call $7782
7703: c9           ret
7704: 2a 0d 78     ld   hl,($780D)
7707: 23           inc  hl
7708: ed 5b 09 78  ld   de,($7809)
770c: d5           push de
770d: fd e1        pop  iy
770f: dd 2a 05 78  ld   ix,($7805)
7713: dd 2b        dec  ix
7715: cd 82 77     call $7782
7718: 2a 01 78     ld   hl,($7801)
771b: 23           inc  hl
771c: ed 5b 09 78  ld   de,($7809)
7720: d5           push de
7721: fd e1        pop  iy
7723: dd 2a 0b 78  ld   ix,($780B)
7727: dd 2b        dec  ix
7729: cd 82 77     call $7782
772c: c9           ret
772d: cb 67        bit  4,a
772f: ca 5b 77     jp   z,$775B
7732: 2a 0d 78     ld   hl,($780D)
7735: 23           inc  hl
7736: ed 5b 09 78  ld   de,($7809)
773a: d5           push de
773b: fd e1        pop  iy
773d: dd 2a 01 78  ld   ix,($7801)
7741: dd 2b        dec  ix
7743: cd 82 77     call $7782
7746: 2a 05 78     ld   hl,($7805)
7749: 23           inc  hl
774a: ed 5b 09 78  ld   de,($7809)
774e: d5           push de
774f: fd e1        pop  iy
7751: dd 2a 0b 78  ld   ix,($780B)
7755: dd 2b        dec  ix
7757: cd 82 77     call $7782
775a: c9           ret
775b: 2a 05 78     ld   hl,($7805)
775e: 23           inc  hl
775f: ed 5b 09 78  ld   de,($7809)
7763: d5           push de
7764: fd e1        pop  iy
7766: dd 2a 01 78  ld   ix,($7801)
776a: dd 2b        dec  ix
776c: cd 82 77     call $7782
776f: c9           ret
7770: 2a 0d 78     ld   hl,($780D)
7773: ed 5b 09 78  ld   de,($7809)
7777: d5           push de
7778: fd e1        pop  iy
777a: dd 2a 0b 78  ld   ix,($780B)
777e: cd 82 77     call $7782
7781: c9           ret
7782: e5           push hl
7783: d5           push de
7784: c5           push bc
7785: dd e5        push ix
7787: fd e5        push iy
7789: 22 35 81     ld   ($8135),hl
778c: 7b           ld   a,e
778d: e6 07        and  $07
778f: 5f           ld   e,a
7790: 16 00        ld   d,$00
7792: 2a a7 7c     ld   hl,($7CA7)
7795: 19           add  hl,de
7796: 5e           ld   e,(hl)
7797: 56           ld   d,(hl)
7798: 2a 35 81     ld   hl,($8135)
779b: eb           ex   de,hl
779c: 7b           ld   a,e
779d: cd ae 77     call $77AE
77a0: 22 3e 83     ld   ($833E),hl
77a3: fd e1        pop  iy
77a5: dd e1        pop  ix
77a7: c1           pop  bc
77a8: d1           pop  de
77a9: e1           pop  hl
77aa: cd bc 77     call $77BC
77ad: c9           ret
77ae: e6 07        and  $07
77b0: b7           or   a
77b1: 4f           ld   c,a
77b2: ca ba 77     jp   z,$77BA
77b5: cb 0d        rrc  l
77b7: 0d           dec  c
77b8: 20 fb        jr   nz,$77B5
77ba: 65           ld   h,l
77bb: c9           ret
77bc: e5           push hl
77bd: dd e5        push ix
77bf: cd bf 69     call $69BF
77c2: 22 39 83     ld   ($8339),hl
77c5: 32 3b 83     ld   ($833B),a
77c8: 37           scf
77c9: 3f           ccf
77ca: e1           pop  hl
77cb: d1           pop  de
77cc: ed 52        sbc  hl,de
77ce: c8           ret  z
77cf: d8           ret  c
77d0: e5           push hl
77d1: 2b           dec  hl
77d2: 7c           ld   a,h
77d3: f6 40        or   $40
77d5: 67           ld   h,a
77d6: 22 43 83     ld   ($8343),hl
77d9: e1           pop  hl
77da: f5           push af
77db: 7c           ld   a,h
77dc: 2f           cpl
77dd: 67           ld   h,a
77de: 7d           ld   a,l
77df: 2f           cpl
77e0: 6f           ld   l,a
77e1: 23           inc  hl
77e2: f1           pop  af
77e3: 22 45 83     ld   ($8345),hl
77e6: 29           add  hl,hl
77e7: 22 47 83     ld   ($8347),hl
77ea: 21 36 83     ld   hl,$8336
77ed: cd 82 81     call $8182
77f0: c9           ret
77f1: 00           nop
77f2: 00           nop
77f3: 00           nop
77f4: 00           nop
77f5: 00           nop
77f6: 00           nop
77f7: 00           nop
77f8: 00           nop
77f9: 00           nop
77fa: 00           nop
77fb: 00           nop
77fc: 00           nop
77fd: 00           nop
77fe: 00           nop
77ff: 00           nop
7800: 00           nop
7801: 00           nop
7802: 00           nop
7803: 00           nop
7804: 00           nop
7805: 00           nop
7806: 00           nop
7807: 00           nop
7808: 00           nop
7809: 00           nop
780a: 00           nop
780b: 00           nop
780c: 00           nop
780d: 00           nop
780e: 00           nop
780f: 00           nop
7810: 00           nop
7811: 00           nop
7812: 00           nop
7813: 00           nop
7814: 00           nop
7815: 00           nop
7816: 00           nop
7817: 00           nop
7818: 00           nop
7819: 00           nop
781a: 00           nop
781b: 00           nop
781c: 00           nop
781d: 00           nop
781e: 00           nop
781f: 00           nop
7820: 00           nop
7821: 00           nop
7822: 00           nop
7823: 00           nop
7824: 00           nop
7825: 00           nop
7826: 00           nop
7827: 00           nop
7828: 32 74 83     ld   ($8374),a
782b: 22 14 79     ld   ($7914),hl
782e: ed 53 16 79  ld   ($7916),de
7832: dd 22 18 79  ld   ($7918),ix
7836: af           xor  a
7837: 32 27 78     ld   ($7827),a
783a: 2a 18 79     ld   hl,($7918)
783d: 2b           dec  hl
783e: 22 bc 82     ld   ($82BC),hl
7841: af           xor  a
7842: cb 24        sla  h
7844: cb 25        sla  l
7846: 8c           adc  a,h
7847: 67           ld   h,a
7848: 22 be 82     ld   ($82BE),hl
784b: ed 5b 18 79  ld   de,($7918)
784f: 6a           ld   l,d
7850: 53           ld   d,e
7851: 26 00        ld   h,$00
7853: 1e 00        ld   e,$00
7855: ed 4b 8f 70  ld   bc,($708F)
7859: cd a9 87     call $87A9
785c: eb           ex   de,hl
785d: 3a c5 4f     ld   a,($4FC5)
7860: b7           or   a
7861: 67           ld   h,a
7862: 22 ba 82     ld   ($82BA),hl
7865: 21 00 00     ld   hl,$0000
7868: 22 c2 82     ld   ($82C2),hl
786b: 2a 16 79     ld   hl,($7916)
786e: ed 5b 18 79  ld   de,($7918)
7872: cd 70 6d     call $6D70
7875: 22 20 79     ld   ($7920),hl
7878: 2a 14 79     ld   hl,($7914)
787b: 22 1e 79     ld   ($791E),hl
787e: 22 26 79     ld   ($7926),hl
7881: 2a 14 79     ld   hl,($7914)
7884: ed 5b 18 79  ld   de,($7918)
7888: 19           add  hl,de
7889: 22 22 79     ld   ($7922),hl
788c: 2a 16 79     ld   hl,($7916)
788f: 22 24 79     ld   ($7924),hl
7892: 22 2c 79     ld   ($792C),hl
7895: 2a 16 79     ld   hl,($7916)
7898: ed 5b 18 79  ld   de,($7918)
789c: 19           add  hl,de
789d: 22 28 79     ld   ($7928),hl
78a0: 2a 14 79     ld   hl,($7914)
78a3: ed 5b 18 79  ld   de,($7918)
78a7: cd 70 6d     call $6D70
78aa: 22 2a 79     ld   ($792A),hl
78ad: 06 04        ld   b,$04
78af: 21 2e 79     ld   hl,$792E
78b2: 22 1c 79     ld   ($791C),hl
78b5: 21 1e 79     ld   hl,$791E
78b8: 3a 74 83     ld   a,($8374)
78bb: e6 01        and  $01
78bd: 20 3e        jr   nz,$78FD
78bf: 3a 39 81     ld   a,($8139)
78c2: cd 66 69     call $6966
78c5: c5           push bc
78c6: 4e           ld   c,(hl)
78c7: 23           inc  hl
78c8: 46           ld   b,(hl)
78c9: 23           inc  hl
78ca: 5e           ld   e,(hl)
78cb: 23           inc  hl
78cc: 56           ld   d,(hl)
78cd: 23           inc  hl
78ce: e5           push hl
78cf: c5           push bc
78d0: e1           pop  hl
78d1: e5           push hl
78d2: d5           push de
78d3: cd bf 69     call $69BF
78d6: 22 b0 82     ld   ($82B0),hl
78d9: 32 b2 82     ld   ($82B2),a
78dc: cd 06 79     call $7906
78df: 21 ad 82     ld   hl,$82AD
78e2: cd 82 81     call $8182
78e5: d1           pop  de
78e6: e1           pop  hl
78e7: cd bf 69     call $69BF
78ea: 22 b0 82     ld   ($82B0),hl
78ed: 32 b2 82     ld   ($82B2),a
78f0: cd 06 79     call $7906
78f3: 21 ad 82     ld   hl,$82AD
78f6: cd 82 81     call $8182
78f9: e1           pop  hl
78fa: c1           pop  bc
78fb: 10 c8        djnz $78C5
78fd: 3a 74 83     ld   a,($8374)
7900: e6 02        and  $02
7902: cc 36 79     call z,$7936
7905: c9           ret
7906: 2a 1c 79     ld   hl,($791C)
7909: 7e           ld   a,(hl)
790a: f6 20        or   $20
790c: 32 b9 82     ld   ($82B9),a
790f: 23           inc  hl
7910: 22 1c 79     ld   ($791C),hl
7913: c9           ret
7914: 00           nop
7915: 00           nop
7916: 00           nop
7917: 00           nop
7918: 00           nop
7919: 00           nop
791a: 00           nop
791b: 00           nop
791c: 00           nop
791d: 00           nop
791e: 00           nop
791f: 00           nop
7920: 00           nop
7921: 00           nop
7922: 00           nop
7923: 00           nop
7924: 00           nop
7925: 00           nop
7926: 00           nop
7927: 00           nop
7928: 00           nop
7929: 00           nop
792a: 00           nop
792b: 00           nop
792c: 00           nop
792d: 00           nop
792e: 01 06 04     ld   bc,$0406
7931: 07           rlca
7932: 02           ld   (bc),a
7933: 05           dec  b
7934: 00           nop
7935: 03           inc  bc
7936: 2a 85 82     ld   hl,($8285)
7939: 22 b2 7a     ld   ($7AB2),hl
793c: 2a 18 79     ld   hl,($7918)
793f: 2b           dec  hl
7940: 22 18 79     ld   ($7918),hl
7943: 21 00 00     ld   hl,$0000
7946: 22 ac 7a     ld   ($7AAC),hl
7949: 2a 18 79     ld   hl,($7918)
794c: 22 ae 7a     ld   ($7AAE),hl
794f: cd d4 79     call $79D4
7952: 11 03 00     ld   de,$0003
7955: eb           ex   de,hl
7956: ed 52        sbc  hl,de
7958: 22 b0 7a     ld   ($7AB0),hl
795b: 2a ac 7a     ld   hl,($7AAC)
795e: ed 5b ae 7a  ld   de,($7AAE)
7962: ed 52        sbc  hl,de
7964: ca bd 79     jp   z,$79BD
7967: d2 bd 79     jp   nc,$79BD
796a: cd d9 79     call $79D9
796d: ed 4b b0 7a  ld   bc,($7AB0)
7971: 78           ld   a,b
7972: e6 80        and  $80
7974: ca 91 79     jp   z,$7991
7977: 2a ac 7a     ld   hl,($7AAC)
797a: cd d0 79     call $79D0
797d: 11 06 00     ld   de,$0006
7980: ed 5a        adc  hl,de
7982: ed 4b b0 7a  ld   bc,($7AB0)
7986: ed 4a        adc  hl,bc
7988: 44           ld   b,h
7989: 4d           ld   c,l
798a: ed 43 b0 7a  ld   ($7AB0),bc
798e: c3 b3 79     jp   $79B3
7991: 2a ac 7a     ld   hl,($7AAC)
7994: ed 5b ae 7a  ld   de,($7AAE)
7998: ed 52        sbc  hl,de
799a: cd d0 79     call $79D0
799d: 11 0a 00     ld   de,$000A
79a0: ed 5a        adc  hl,de
79a2: ed 4a        adc  hl,bc
79a4: 44           ld   b,h
79a5: 4d           ld   c,l
79a6: ed 43 b0 7a  ld   ($7AB0),bc
79aa: ed 5b ae 7a  ld   de,($7AAE)
79ae: 1b           dec  de
79af: ed 53 ae 7a  ld   ($7AAE),de
79b3: 2a ac 7a     ld   hl,($7AAC)
79b6: 23           inc  hl
79b7: 22 ac 7a     ld   ($7AAC),hl
79ba: c3 5b 79     jp   $795B
79bd: 2a ac 7a     ld   hl,($7AAC)
79c0: ed 5b ae 7a  ld   de,($7AAE)
79c4: ed 52        sbc  hl,de
79c6: cc d9 79     call z,$79D9
79c9: 2a b2 7a     ld   hl,($7AB2)
79cc: 22 85 82     ld   ($8285),hl
79cf: c9           ret
79d0: cb 25        sla  l
79d2: cb 14        rl   h
79d4: cb 25        sla  l
79d6: cb 14        rl   h
79d8: c9           ret
79d9: 3a 27 78     ld   a,($7827)
79dc: b7           or   a
79dd: c2 e1 74     jp   nz,$74E1
79e0: 2a ac 7a     ld   hl,($7AAC)
79e3: e5           push hl
79e4: ed 5b 14 79  ld   de,($7914)
79e8: 37           scf
79e9: 3f           ccf
79ea: ed 5a        adc  hl,de
79ec: 22 a4 7a     ld   ($7AA4),hl
79ef: e1           pop  hl
79f0: eb           ex   de,hl
79f1: 37           scf
79f2: 3f           ccf
79f3: ed 52        sbc  hl,de
79f5: 22 a8 7a     ld   ($7AA8),hl
79f8: 2a ae 7a     ld   hl,($7AAE)
79fb: ed 5b 16 79  ld   de,($7916)
79ff: 37           scf
7a00: 3f           ccf
7a01: ed 5a        adc  hl,de
7a03: 22 a6 7a     ld   ($7AA6),hl
7a06: 22 aa 7a     ld   ($7AAA),hl
7a09: cd 61 7a     call $7A61
7a0c: 2a 16 79     ld   hl,($7916)
7a0f: ed 5b ae 7a  ld   de,($7AAE)
7a13: 37           scf
7a14: 3f           ccf
7a15: ed 52        sbc  hl,de
7a17: 22 a6 7a     ld   ($7AA6),hl
7a1a: 22 aa 7a     ld   ($7AAA),hl
7a1d: cd 61 7a     call $7A61
7a20: 2a ae 7a     ld   hl,($7AAE)
7a23: e5           push hl
7a24: ed 5b 14 79  ld   de,($7914)
7a28: 37           scf
7a29: 3f           ccf
7a2a: ed 5a        adc  hl,de
7a2c: 22 a4 7a     ld   ($7AA4),hl
7a2f: e1           pop  hl
7a30: eb           ex   de,hl
7a31: 37           scf
7a32: 3f           ccf
7a33: ed 52        sbc  hl,de
7a35: 22 a8 7a     ld   ($7AA8),hl
7a38: 2a ac 7a     ld   hl,($7AAC)
7a3b: ed 5b 16 79  ld   de,($7916)
7a3f: 37           scf
7a40: 3f           ccf
7a41: ed 5a        adc  hl,de
7a43: 22 a6 7a     ld   ($7AA6),hl
7a46: 22 aa 7a     ld   ($7AAA),hl
7a49: cd 61 7a     call $7A61
7a4c: 2a 16 79     ld   hl,($7916)
7a4f: ed 5b ac 7a  ld   de,($7AAC)
7a53: 37           scf
7a54: 3f           ccf
7a55: ed 52        sbc  hl,de
7a57: 22 a6 7a     ld   ($7AA6),hl
7a5a: 22 aa 7a     ld   ($7AAA),hl
7a5d: cd 61 7a     call $7A61
7a60: c9           ret
7a61: ed 5b a6 7a  ld   de,($7AA6)
7a65: 7b           ld   a,e
7a66: e6 07        and  $07
7a68: 5f           ld   e,a
7a69: 16 00        ld   d,$00
7a6b: 2a a7 7c     ld   hl,($7CA7)
7a6e: 19           add  hl,de
7a6f: 5e           ld   e,(hl)
7a70: 56           ld   d,(hl)
7a71: 2a a4 7a     ld   hl,($7AA4)
7a74: eb           ex   de,hl
7a75: 7b           ld   a,e
7a76: cd 96 7a     call $7A96
7a79: 22 85 82     ld   ($8285),hl
7a7c: 2a a4 7a     ld   hl,($7AA4)
7a7f: 2b           dec  hl
7a80: ed 5b a6 7a  ld   de,($7AA6)
7a84: dd 2a a8 7a  ld   ix,($7AA8)
7a88: fd 2a aa 7a  ld   iy,($7AAA)
7a8c: 3a 39 81     ld   a,($8139)
7a8f: cd 66 69     call $6966
7a92: cd 26 6a     call $6A26
7a95: c9           ret
7a96: e6 07        and  $07
7a98: b7           or   a
7a99: 4f           ld   c,a
7a9a: ca a2 7a     jp   z,$7AA2
7a9d: cb 05        rlc  l
7a9f: 0d           dec  c
7aa0: 20 fb        jr   nz,$7A9D
7aa2: 65           ld   h,l
7aa3: c9           ret
7aa4: 00           nop
7aa5: 00           nop
7aa6: 00           nop
7aa7: 00           nop
7aa8: 00           nop
7aa9: 00           nop
7aaa: 00           nop
7aab: 00           nop
7aac: 00           nop
7aad: 00           nop
7aae: 00           nop
7aaf: 00           nop
7ab0: 00           nop
7ab1: 00           nop
7ab2: 00           nop
7ab3: 00           nop
7ab4: 32 74 83     ld   ($8374),a
7ab7: 22 9f 7c     ld   ($7C9F),hl
7aba: ed 53 a3 7c  ld   ($7CA3),de
7abe: dd 22 a1 7c  ld   ($7CA1),ix
7ac2: fd 22 a5 7c  ld   ($7CA5),iy
7ac6: 2a 66 83     ld   hl,($8366)
7ac9: ed 5b 9f 7c  ld   de,($7C9F)
7acd: ed 52        sbc  hl,de
7acf: f2 d8 7a     jp   p,$7AD8
7ad2: 2a 66 83     ld   hl,($8366)
7ad5: 22 9f 7c     ld   ($7C9F),hl
7ad8: 2a 66 83     ld   hl,($8366)
7adb: ed 5b a1 7c  ld   de,($7CA1)
7adf: ed 52        sbc  hl,de
7ae1: f2 ea 7a     jp   p,$7AEA
7ae4: 2a 66 83     ld   hl,($8366)
7ae7: 22 a1 7c     ld   ($7CA1),hl
7aea: 2a 68 83     ld   hl,($8368)
7aed: ed 5b a3 7c  ld   de,($7CA3)
7af1: ed 52        sbc  hl,de
7af3: f2 fc 7a     jp   p,$7AFC
7af6: 2a 68 83     ld   hl,($8368)
7af9: 22 a3 7c     ld   ($7CA3),hl
7afc: 2a 68 83     ld   hl,($8368)
7aff: ed 5b a5 7c  ld   de,($7CA5)
7b03: ed 52        sbc  hl,de
7b05: f2 0e 7b     jp   p,$7B0E
7b08: 2a 68 83     ld   hl,($8368)
7b0b: 22 a5 7c     ld   ($7CA5),hl
7b0e: af           xor  a
7b0f: 2a a1 7c     ld   hl,($7CA1)
7b12: ed 5b 9f 7c  ld   de,($7C9F)
7b16: cd 70 6d     call $6D70
7b19: 22 69 6b     ld   ($6B69),hl
7b1c: ca 9a 7c     jp   z,$7C9A
7b1f: f2 2c 7b     jp   p,$7B2C
7b22: f6 04        or   $04
7b24: f5           push af
7b25: cd 77 7c     call $7C77
7b28: 22 69 6b     ld   ($6B69),hl
7b2b: f1           pop  af
7b2c: 2a 69 6b     ld   hl,($6B69)
7b2f: cd 7f 7c     call $7C7F
7b32: 2a a5 7c     ld   hl,($7CA5)
7b35: ed 5b a3 7c  ld   de,($7CA3)
7b39: cd 70 6d     call $6D70
7b3c: 22 6b 6b     ld   ($6B6B),hl
7b3f: ca 9a 7c     jp   z,$7C9A
7b42: f2 80 7b     jp   p,$7B80
7b45: f5           push af
7b46: cd 77 7c     call $7C77
7b49: 22 6b 6b     ld   ($6B6B),hl
7b4c: cd 7f 7c     call $7C7F
7b4f: f1           pop  af
7b50: fe 04        cp   $04
7b52: 28 16        jr   z,$7B6A
7b54: 3e 42        ld   a,$42
7b56: 32 a0 82     ld   ($82A0),a
7b59: 2a 9f 7c     ld   hl,($7C9F)
7b5c: 23           inc  hl
7b5d: 22 aa 7c     ld   ($7CAA),hl
7b60: 2a a3 7c     ld   hl,($7CA3)
7b63: 2b           dec  hl
7b64: 22 ac 7c     ld   ($7CAC),hl
7b67: c3 b3 7b     jp   $7BB3
7b6a: 3e 44        ld   a,$44
7b6c: 32 a0 82     ld   ($82A0),a
7b6f: 2a 9f 7c     ld   hl,($7C9F)
7b72: 2b           dec  hl
7b73: 22 aa 7c     ld   ($7CAA),hl
7b76: 2a a3 7c     ld   hl,($7CA3)
7b79: 2b           dec  hl
7b7a: 22 ac 7c     ld   ($7CAC),hl
7b7d: c3 d7 7b     jp   $7BD7
7b80: 2a 6b 6b     ld   hl,($6B6B)
7b83: cd 7f 7c     call $7C7F
7b86: fe 04        cp   $04
7b88: 28 16        jr   z,$7BA0
7b8a: 3e 40        ld   a,$40
7b8c: 32 a0 82     ld   ($82A0),a
7b8f: 2a 9f 7c     ld   hl,($7C9F)
7b92: 23           inc  hl
7b93: 22 aa 7c     ld   ($7CAA),hl
7b96: 2a a3 7c     ld   hl,($7CA3)
7b99: 23           inc  hl
7b9a: 22 ac 7c     ld   ($7CAC),hl
7b9d: c3 d7 7b     jp   $7BD7
7ba0: 3e 46        ld   a,$46
7ba2: 32 a0 82     ld   ($82A0),a
7ba5: 2a 9f 7c     ld   hl,($7C9F)
7ba8: 2b           dec  hl
7ba9: 22 aa 7c     ld   ($7CAA),hl
7bac: 2a a3 7c     ld   hl,($7CA3)
7baf: 23           inc  hl
7bb0: 22 ac 7c     ld   ($7CAC),hl
7bb3: 2a 69 6b     ld   hl,($6B69)
7bb6: 2b           dec  hl
7bb7: 22 a3 82     ld   ($82A3),hl
7bba: 22 a9 82     ld   ($82A9),hl
7bbd: 2b           dec  hl
7bbe: 22 77 82     ld   ($8277),hl
7bc1: 22 79 82     ld   ($8279),hl
7bc4: 2a 6b 6b     ld   hl,($6B6B)
7bc7: 2b           dec  hl
7bc8: 22 a5 82     ld   ($82A5),hl
7bcb: 2b           dec  hl
7bcc: 2b           dec  hl
7bcd: 3a c5 4f     ld   a,($4FC5)
7bd0: b4           or   h
7bd1: 67           ld   h,a
7bd2: 22 75 82     ld   ($8275),hl
7bd5: 18 22        jr   $7BF9
7bd7: 2a 6b 6b     ld   hl,($6B6B)
7bda: 2b           dec  hl
7bdb: 22 a3 82     ld   ($82A3),hl
7bde: 22 a9 82     ld   ($82A9),hl
7be1: 2b           dec  hl
7be2: 22 77 82     ld   ($8277),hl
7be5: 22 79 82     ld   ($8279),hl
7be8: 2a 69 6b     ld   hl,($6B69)
7beb: 2b           dec  hl
7bec: 22 a5 82     ld   ($82A5),hl
7bef: 2b           dec  hl
7bf0: 2b           dec  hl
7bf1: 3a c5 4f     ld   a,($4FC5)
7bf4: b4           or   h
7bf5: 67           ld   h,a
7bf6: 22 75 82     ld   ($8275),hl
7bf9: 3a 74 83     ld   a,($8374)
7bfc: e6 01        and  $01
7bfe: 20 22        jr   nz,$7C22
7c00: 2a 9f 7c     ld   hl,($7C9F)
7c03: ed 5b a3 7c  ld   de,($7CA3)
7c07: cd bf 69     call $69BF
7c0a: 22 97 82     ld   ($8297),hl
7c0d: 32 99 82     ld   ($8299),a
7c10: 3a 39 81     ld   a,($8139)
7c13: cd 66 69     call $6966
7c16: 3a c5 4f     ld   a,($4FC5)
7c19: 32 a2 82     ld   ($82A2),a
7c1c: 21 94 82     ld   hl,$8294
7c1f: cd 82 81     call $8182
7c22: 3a 74 83     ld   a,($8374)
7c25: e6 02        and  $02
7c27: c0           ret  nz
7c28: 3a 39 81     ld   a,($8139)
7c2b: cd 66 69     call $6966
7c2e: 2a a7 7c     ld   hl,($7CA7)
7c31: 01 08 00     ld   bc,$0008
7c34: 11 6a 82     ld   de,$826A
7c37: ed b0        ldir
7c39: 3a a0 82     ld   a,($82A0)
7c3c: e6 0f        and  $0F
7c3e: f6 10        or   $10
7c40: 32 74 82     ld   ($8274),a
7c43: 2a aa 7c     ld   hl,($7CAA)
7c46: ed 5b ac 7c  ld   de,($7CAC)
7c4a: cd bf 69     call $69BF
7c4d: 22 65 82     ld   ($8265),hl
7c50: 32 67 82     ld   ($8267),a
7c53: 3a c4 4f     ld   a,($4FC4)
7c56: b7           or   a
7c57: c4 61 7c     call nz,$7C61
7c5a: 21 62 82     ld   hl,$8262
7c5d: cd 82 81     call $8182
7c60: c9           ret
7c61: 3e ff        ld   a,$FF
7c63: 32 3a 82     ld   ($823A),a
7c66: ed 4b 77 82  ld   bc,($8277)
7c6a: ed 43 36 82  ld   ($8236),bc
7c6e: ed 4b a5 82  ld   bc,($82A5)
7c72: ed 43 38 82  ld   ($8238),bc
7c76: c9           ret
7c77: 2b           dec  hl
7c78: 7c           ld   a,h
7c79: 2f           cpl
7c7a: 67           ld   h,a
7c7b: 7d           ld   a,l
7c7c: 2f           cpl
7c7d: 6f           ld   l,a
7c7e: c9           ret
7c7f: f5           push af
7c80: 2b           dec  hl
7c81: 7c           ld   a,h
7c82: b5           or   l
7c83: cc 8e 7c     call z,$7C8E
7c86: 2b           dec  hl
7c87: 7c           ld   a,h
7c88: b5           or   l
7c89: cc 94 7c     call z,$7C94
7c8c: f1           pop  af
7c8d: c9           ret
7c8e: 3a 74 83     ld   a,($8374)
7c91: f6 01        or   $01
7c93: c9           ret
7c94: 3a 74 83     ld   a,($8374)
7c97: f6 02        or   $02
7c99: c9           ret
7c9a: c9           ret
7c9b: 2a a7 7c     ld   hl,($7CA7)
7c9e: c9           ret
7c9f: 00           nop
7ca0: 00           nop
7ca1: 00           nop
7ca2: 00           nop
7ca3: 00           nop
7ca4: 00           nop
7ca5: 00           nop
7ca6: 00           nop
7ca7: 00           nop
7ca8: 00           nop
7ca9: 00           nop
7caa: 00           nop
7cab: 00           nop
7cac: 00           nop
7cad: 00           nop
7cae: ed 4b 14 7d  ld   bc,($7D14)
7cb2: af           xor  a
7cb3: cb 21        sla  c
7cb5: ce 00        adc  a,$00
7cb7: cb 27        sla  a
7cb9: cb 21        sla  c
7cbb: ce 00        adc  a,$00
7cbd: 47           ld   b,a
7cbe: c5           push bc
7cbf: 3a 65 f0     ld   a,($F065)
7cc2: 4f           ld   c,a
7cc3: 06 00        ld   b,$00
7cc5: cd 9b f3     call $F39B
7cc8: 11 80 b1     ld   de,$B180
7ccb: 2a 16 7d     ld   hl,($7D16)
7cce: c1           pop  bc
7ccf: cd a5 f3     call $F3A5
7cd2: c9           ret
7cd3: ed 53 14 7d  ld   ($7D14),de
7cd7: 22 16 7d     ld   ($7D16),hl
7cda: cd ae 7c     call $7CAE
7cdd: 3a 14 7d     ld   a,($7D14)
7ce0: 47           ld   b,a
7ce1: 21 80 b1     ld   hl,$B180
7ce4: 22 c9 7d     ld   ($7DC9),hl
7ce7: c5           push bc
7ce8: cd b8 7d     call $7DB8
7ceb: 22 18 7d     ld   ($7D18),hl
7cee: ed 53 1a 7d  ld   ($7D1A),de
7cf2: c1           pop  bc
7cf3: 05           dec  b
7cf4: c5           push bc
7cf5: cd b8 7d     call $7DB8
7cf8: e5           push hl
7cf9: dd e1        pop  ix
7cfb: d5           push de
7cfc: fd e1        pop  iy
7cfe: 2a 18 7d     ld   hl,($7D18)
7d01: ed 5b 1a 7d  ld   de,($7D1A)
7d05: dd 22 18 7d  ld   ($7D18),ix
7d09: fd 22 1a 7d  ld   ($7D1A),iy
7d0d: cd 26 6a     call $6A26
7d10: c1           pop  bc
7d11: 10 e1        djnz $7CF4
7d13: c9           ret
7d14: 00           nop
7d15: 00           nop
7d16: 00           nop
7d17: 00           nop
7d18: 00           nop
7d19: 00           nop
7d1a: 00           nop
7d1b: 00           nop
7d1c: 32 74 83     ld   ($8374),a
7d1f: ed 53 14 7d  ld   ($7D14),de
7d23: 22 16 7d     ld   ($7D16),hl
7d26: cd ae 7c     call $7CAE
7d29: 3a 14 7d     ld   a,($7D14)
7d2c: 21 80 b1     ld   hl,$B180
7d2f: 22 c9 7d     ld   ($7DC9),hl
7d32: 22 cb 7d     ld   ($7DCB),hl
7d35: fe 01        cp   $01
7d37: 28 63        jr   z,$7D9C
7d39: fe 02        cp   $02
7d3b: 28 65        jr   z,$7DA2
7d3d: 32 d1 7d     ld   ($7DD1),a
7d40: 47           ld   b,a
7d41: c5           push bc
7d42: ed 5b cb 7d  ld   de,($7DCB)
7d46: 3a d1 7d     ld   a,($7DD1)
7d49: 06 00        ld   b,$00
7d4b: 4f           ld   c,a
7d4c: cd 9b 7c     call $7C9B
7d4f: eb           ex   de,hl
7d50: 3a 74 83     ld   a,($8374)
7d53: e6 02        and  $02
7d55: cc a2 83     call z,$83A2
7d58: 3a 74 83     ld   a,($8374)
7d5b: e6 01        and  $01
7d5d: 28 02        jr   z,$7D61
7d5f: c1           pop  bc
7d60: c9           ret
7d61: cd b8 7d     call $7DB8
7d64: 22 79 83     ld   ($8379),hl
7d67: ed 53 7b 83  ld   ($837B),de
7d6b: c1           pop  bc
7d6c: c5           push bc
7d6d: cd b8 7d     call $7DB8
7d70: e5           push hl
7d71: dd e1        pop  ix
7d73: d5           push de
7d74: fd e1        pop  iy
7d76: 2a 79 83     ld   hl,($8379)
7d79: ed 5b 7b 83  ld   de,($837B)
7d7d: dd 22 79 83  ld   ($8379),ix
7d81: fd 22 7b 83  ld   ($837B),iy
7d85: fd e5        push iy
7d87: dd e5        push ix
7d89: cd 26 6a     call $6A26
7d8c: dd e1        pop  ix
7d8e: fd e1        pop  iy
7d90: dd 22 79 83  ld   ($8379),ix
7d94: fd 22 7b 83  ld   ($837B),iy
7d98: c1           pop  bc
7d99: 10 d1        djnz $7D6C
7d9b: c9           ret
7d9c: cd b8 7d     call $7DB8
7d9f: c3 6f 69     jp   $696F
7da2: c5           push bc
7da3: cd b8 7d     call $7DB8
7da6: e5           push hl
7da7: d5           push de
7da8: cd b8 7d     call $7DB8
7dab: e5           push hl
7dac: dd e1        pop  ix
7dae: d5           push de
7daf: fd e1        pop  iy
7db1: d1           pop  de
7db2: e1           pop  hl
7db3: c1           pop  bc
7db4: cd 26 6a     call $6A26
7db7: c9           ret
7db8: 2a c9 7d     ld   hl,($7DC9)
7dbb: 4e           ld   c,(hl)
7dbc: 23           inc  hl
7dbd: 46           ld   b,(hl)
7dbe: 23           inc  hl
7dbf: 5e           ld   e,(hl)
7dc0: 23           inc  hl
7dc1: 56           ld   d,(hl)
7dc2: 23           inc  hl
7dc3: 22 c9 7d     ld   ($7DC9),hl
7dc6: 60           ld   h,b
7dc7: 69           ld   l,c
7dc8: c9           ret
7dc9: 00           nop
7dca: 00           nop
7dcb: 00           nop
7dcc: 00           nop
7dcd: 00           nop
7dce: 00           nop
7dcf: 00           nop
7dd0: 00           nop
7dd1: 00           nop
7dd2: e5           push hl
7dd3: 3a 65 f0     ld   a,($F065)
7dd6: 4f           ld   c,a
7dd7: 06 00        ld   b,$00
7dd9: cd 9b f3     call $F39B
7ddc: 11 da 7e     ld   de,$7EDA
7ddf: e1           pop  hl
7de0: 01 0c 00     ld   bc,$000C
7de3: cd a5 f3     call $F3A5
7de6: 3a da 7e     ld   a,($7EDA)
7de9: e6 01        and  $01
7deb: c2 e6 7e     jp   nz,$7EE6
7dee: ed 4b dc 7e  ld   bc,($7EDC)
7df2: 78           ld   a,b
7df3: b1           or   c
7df4: c8           ret  z
7df5: ed 4b de 7e  ld   bc,($7EDE)
7df9: 78           ld   a,b
7dfa: b1           or   c
7dfb: c8           ret  z
7dfc: 3a c5 4f     ld   a,($4FC5)
7dff: 32 d0 82     ld   ($82D0),a
7e02: ed 4b dc 7e  ld   bc,($7EDC)
7e06: 79           ld   a,c
7e07: e6 0f        and  $0F
7e09: 32 62 83     ld   ($8362),a
7e0c: cd cd 7e     call $7ECD
7e0f: ed 43 60 83  ld   ($8360),bc
7e13: cb 39        srl  c
7e15: 79           ld   a,c
7e16: 32 64 83     ld   ($8364),a
7e19: 3a 62 83     ld   a,($8362)
7e1c: b7           or   a
7e1d: 28 07        jr   z,$7E26
7e1f: 2a 60 83     ld   hl,($8360)
7e22: 23           inc  hl
7e23: 22 60 83     ld   ($8360),hl
7e26: ed 5b de 7e  ld   de,($7EDE)
7e2a: d5           push de
7e2b: ed 5b e2 7e  ld   de,($7EE2)
7e2f: d5           push de
7e30: 2a e0 7e     ld   hl,($7EE0)
7e33: 22 35 81     ld   ($8135),hl
7e36: cd 66 7e     call $7E66
7e39: d1           pop  de
7e3a: 13           inc  de
7e3b: ed 53 e2 7e  ld   ($7EE2),de
7e3f: d1           pop  de
7e40: 1b           dec  de
7e41: 7a           ld   a,d
7e42: b3           or   e
7e43: c8           ret  z
7e44: c3 2a 7e     jp   $7E2A
7e47: 3a 65 f0     ld   a,($F065)
7e4a: 4f           ld   c,a
7e4b: 06 00        ld   b,$00
7e4d: cd 9b f3     call $F39B
7e50: 11 80 b1     ld   de,$B180
7e53: 2a e4 7e     ld   hl,($7EE4)
7e56: ed 4b 60 83  ld   bc,($8360)
7e5a: e5           push hl
7e5b: c5           push bc
7e5c: cd a5 f3     call $F3A5
7e5f: c1           pop  bc
7e60: e1           pop  hl
7e61: 09           add  hl,bc
7e62: 22 e4 7e     ld   ($7EE4),hl
7e65: c9           ret
7e66: cd 47 7e     call $7E47
7e69: 21 80 b1     ld   hl,$B180
7e6c: 3a 64 83     ld   a,($8364)
7e6f: b7           or   a
7e70: 28 34        jr   z,$7EA6
7e72: 47           ld   b,a
7e73: c5           push bc
7e74: 4e           ld   c,(hl)
7e75: 23           inc  hl
7e76: 46           ld   b,(hl)
7e77: ed 43 d9 82  ld   ($82D9),bc
7e7b: e5           push hl
7e7c: 2a 35 81     ld   hl,($8135)
7e7f: ed 5b e2 7e  ld   de,($7EE2)
7e83: cd bf 69     call $69BF
7e86: 22 c9 82     ld   ($82C9),hl
7e89: 32 cb 82     ld   ($82CB),a
7e8c: 3e 0f        ld   a,$0F
7e8e: 32 cf 82     ld   ($82CF),a
7e91: 21 c6 82     ld   hl,$82C6
7e94: cd 82 81     call $8182
7e97: 2a 35 81     ld   hl,($8135)
7e9a: 11 10 00     ld   de,$0010
7e9d: 19           add  hl,de
7e9e: 22 35 81     ld   ($8135),hl
7ea1: e1           pop  hl
7ea2: 23           inc  hl
7ea3: c1           pop  bc
7ea4: 10 cd        djnz $7E73
7ea6: 3a 62 83     ld   a,($8362)
7ea9: b7           or   a
7eaa: c8           ret  z
7eab: 3d           dec  a
7eac: 32 cf 82     ld   ($82CF),a
7eaf: 4e           ld   c,(hl)
7eb0: 23           inc  hl
7eb1: 46           ld   b,(hl)
7eb2: ed 43 d9 82  ld   ($82D9),bc
7eb6: 2a 35 81     ld   hl,($8135)
7eb9: ed 5b e2 7e  ld   de,($7EE2)
7ebd: cd bf 69     call $69BF
7ec0: 22 c9 82     ld   ($82C9),hl
7ec3: 32 cb 82     ld   ($82CB),a
7ec6: 21 c6 82     ld   hl,$82C6
7ec9: cd 82 81     call $8182
7ecc: c9           ret
7ecd: cb 38        srl  b
7ecf: cb 19        rr   c
7ed1: cb 38        srl  b
7ed3: cb 19        rr   c
7ed5: cb 38        srl  b
7ed7: cb 19        rr   c
7ed9: c9           ret
7eda: 00           nop
7edb: 00           nop
7edc: 00           nop
7edd: 00           nop
7ede: 00           nop
7edf: 00           nop
7ee0: 00           nop
7ee1: 00           nop
7ee2: 00           nop
7ee3: 00           nop
7ee4: 00           nop
7ee5: 00           nop
7ee6: 2a 7b 83     ld   hl,($837B)
7ee9: 22 99 7f     ld   ($7F99),hl
7eec: 2a 79 83     ld   hl,($8379)
7eef: 22 97 7f     ld   ($7F97),hl
7ef2: ed 4b dc 7e  ld   bc,($7EDC)
7ef6: cd cd 7e     call $7ECD
7ef9: 78           ld   a,b
7efa: b1           or   c
7efb: c8           ret  z
7efc: ed 43 60 83  ld   ($8360),bc
7f00: 79           ld   a,c
7f01: cb 3f        srl  a
7f03: 30 01        jr   nc,$7F06
7f05: 3c           inc  a
7f06: 32 21 83     ld   ($8321),a
7f09: 3a c5 4f     ld   a,($4FC5)
7f0c: 32 22 83     ld   ($8322),a
7f0f: ed 4b de 7e  ld   bc,($7EDE)
7f13: 78           ld   a,b
7f14: b1           or   c
7f15: c8           ret  z
7f16: ed 43 9b 7f  ld   ($7F9B),bc
7f1a: 2a e0 7e     ld   hl,($7EE0)
7f1d: ed 5b e2 7e  ld   de,($7EE2)
7f21: cd bf 69     call $69BF
7f24: 22 17 83     ld   ($8317),hl
7f27: 32 19 83     ld   ($8319),a
7f2a: 3e 02        ld   a,$02
7f2c: cd e9 81     call $81E9
7f2f: cd 74 7f     call $7F74
7f32: 3a c4 4f     ld   a,($4FC4)
7f35: b7           or   a
7f36: ca 69 7f     jp   z,$7F69
7f39: 2a e0 7e     ld   hl,($7EE0)
7f3c: ed 5b e2 7e  ld   de,($7EE2)
7f40: cd bf 69     call $69BF
7f43: 22 17 83     ld   ($8317),hl
7f46: 32 19 83     ld   ($8319),a
7f49: 3e 01        ld   a,$01
7f4b: cd e9 81     call $81E9
7f4e: cd 74 7f     call $7F74
7f51: 2a e0 7e     ld   hl,($7EE0)
7f54: ed 5b e2 7e  ld   de,($7EE2)
7f58: cd bf 69     call $69BF
7f5b: 22 17 83     ld   ($8317),hl
7f5e: 32 19 83     ld   ($8319),a
7f61: 3e 04        ld   a,$04
7f63: cd e9 81     call $81E9
7f66: cd 74 7f     call $7F74
7f69: 2a 97 7f     ld   hl,($7F97)
7f6c: ed 5b 99 7f  ld   de,($7F99)
7f70: cd bf 69     call $69BF
7f73: c9           ret
7f74: ed 4b 9b 7f  ld   bc,($7F9B)
7f78: c5           push bc
7f79: cd 9d 7f     call $7F9D
7f7c: cd bb 7f     call $7FBB
7f7f: ed 5b 7b 83  ld   de,($837B)
7f83: 13           inc  de
7f84: 2a 79 83     ld   hl,($8379)
7f87: cd bf 69     call $69BF
7f8a: 22 17 83     ld   ($8317),hl
7f8d: 32 19 83     ld   ($8319),a
7f90: c1           pop  bc
7f91: 0b           dec  bc
7f92: 78           ld   a,b
7f93: b1           or   c
7f94: 20 e2        jr   nz,$7F78
7f96: c9           ret
7f97: 00           nop
7f98: 00           nop
7f99: 00           nop
7f9a: 00           nop
7f9b: 00           nop
7f9c: 00           nop
7f9d: 21 14 83     ld   hl,$8314
7fa0: cd 8d 81     call $818D
7fa3: ed 4b 60 83  ld   bc,($8360)
7fa7: 41           ld   b,c
7fa8: 21 80 b1     ld   hl,$B180
7fab: c5           push bc
7fac: cd 2c 82     call $822C
7faf: 77           ld   (hl),a
7fb0: 23           inc  hl
7fb1: c1           pop  bc
7fb2: 10 f7        djnz $7FAB
7fb4: 3a 39 81     ld   a,($8139)
7fb7: cd 66 69     call $6966
7fba: c9           ret
7fbb: 3a 65 f0     ld   a,($F065)
7fbe: 0e 00        ld   c,$00
7fc0: 47           ld   b,a
7fc1: cd 9b f3     call $F39B
7fc4: ed 5b e4 7e  ld   de,($7EE4)
7fc8: ed 4b 60 83  ld   bc,($8360)
7fcc: 21 80 b1     ld   hl,$B180
7fcf: cd a5 f3     call $F3A5
7fd2: 2a e4 7e     ld   hl,($7EE4)
7fd5: ed 4b 60 83  ld   bc,($8360)
7fd9: 09           add  hl,bc
7fda: 22 e4 7e     ld   ($7EE4),hl
7fdd: c9           ret
7fde: 32 3c 81     ld   ($813C),a
7fe1: e6 07        and  $07
7fe3: f5           push af
7fe4: 3a 9a 4f     ld   a,($4F9A)
7fe7: 32 47 81     ld   ($8147),a
7fea: f1           pop  af
7feb: 32 9a 4f     ld   ($4F9A),a
7fee: 22 79 83     ld   ($8379),hl
7ff1: ed 53 7b 83  ld   ($837B),de
7ff5: dd e5        push ix
7ff7: fd e5        push iy
7ff9: e1           pop  hl
7ffa: 3a 65 f0     ld   a,($F065)
7ffd: 4f           ld   c,a
7ffe: 06 00        ld   b,$00
8000: e5           push hl
8001: cd 9b f3     call $F39B
8004: e1           pop  hl
8005: 11 80 b1     ld   de,$B180
8008: c1           pop  bc
8009: c5           push bc
800a: cd a5 f3     call $F3A5
800d: 3a 3c 81     ld   a,($813C)
8010: e6 18        and  $18
8012: 20 06        jr   nz,$801A
8014: cd 59 40     call $4059
8017: 22 72 83     ld   ($8372),hl
801a: c1           pop  bc
801b: 41           ld   b,c
801c: 0e 00        ld   c,$00
801e: fd 21 80 b1  ld   iy,$B180
8022: 3a c5 4f     ld   a,($4FC5)
8025: 32 f1 82     ld   ($82F1),a
8028: 32 02 83     ld   ($8302),a
802b: c5           push bc
802c: fd 7e 00     ld   a,(iy+$00)
802f: fd e5        push iy
8031: 32 3d 81     ld   ($813D),a
8034: 3a 3c 81     ld   a,($813C)
8037: e6 18        and  $18
8039: f5           push af
803a: c4 e6 80     call nz,$80E6
803d: f1           pop  af
803e: 20 03        jr   nz,$8043
8040: cd aa 80     call $80AA
8043: 3a 3c 81     ld   a,($813C)
8046: cb 77        bit  6,a
8048: 28 05        jr   z,$804F
804a: 3e ff        ld   a,$FF
804c: 32 eb 82     ld   ($82EB),a
804f: 3a 3c 81     ld   a,($813C)
8052: cb 7f        bit  7,a
8054: 21 e5 82     ld   hl,$82E5
8057: c4 db 80     call nz,$80DB
805a: 21 f6 82     ld   hl,$82F6
805d: c4 db 80     call nz,$80DB
8060: 3a 39 81     ld   a,($8139)
8063: cd 66 69     call $6966
8066: 2a 79 83     ld   hl,($8379)
8069: ed 5b 7b 83  ld   de,($837B)
806d: cd bf 69     call $69BF
8070: 22 e0 82     ld   ($82E0),hl
8073: 32 e2 82     ld   ($82E2),a
8076: 3e ff        ld   a,$FF
8078: 32 3a 82     ld   ($823A),a
807b: 11 1e 00     ld   de,$001E
807e: ed 53 36 82  ld   ($8236),de
8082: 11 01 00     ld   de,$0001
8085: ed 53 38 82  ld   ($8238),de
8089: 21 dd 82     ld   hl,$82DD
808c: cd 82 81     call $8182
808f: 2a 79 83     ld   hl,($8379)
8092: 11 08 00     ld   de,$0008
8095: 19           add  hl,de
8096: 22 79 83     ld   ($8379),hl
8099: fd e1        pop  iy
809b: fd 23        inc  iy
809d: c1           pop  bc
809e: 10 8b        djnz $802B
80a0: 3a 47 81     ld   a,($8147)
80a3: 32 9a 4f     ld   ($4F9A),a
80a6: cd 59 40     call $4059
80a9: c9           ret
80aa: 3a 3d 81     ld   a,($813D)
80ad: f5           push af
80ae: 21 71 83     ld   hl,$8371
80b1: 96           sub  (hl)
80b2: 32 3d 81     ld   ($813D),a
80b5: 21 3d 81     ld   hl,$813D
80b8: af           xor  a
80b9: ed 6f        rld  (hl)
80bb: 57           ld   d,a
80bc: 5e           ld   e,(hl)
80bd: f1           pop  af
80be: e6 80        and  $80
80c0: 21 11 55     ld   hl,$5511
80c3: 20 03        jr   nz,$80C8
80c5: 2a 72 83     ld   hl,($8372)
80c8: 19           add  hl,de
80c9: 01 08 00     ld   bc,$0008
80cc: 11 e5 82     ld   de,$82E5
80cf: ed b0        ldir
80d1: 01 08 00     ld   bc,$0008
80d4: 11 f6 82     ld   de,$82F6
80d7: ed b0        ldir
80d9: af           xor  a
80da: c9           ret
80db: f5           push af
80dc: 06 08        ld   b,$08
80de: 7e           ld   a,(hl)
80df: 2f           cpl
80e0: 77           ld   (hl),a
80e1: 23           inc  hl
80e2: 10 fa        djnz $80DE
80e4: f1           pop  af
80e5: c9           ret
80e6: 3a 3d 81     ld   a,($813D)
80e9: d6 20        sub  $20
80eb: 32 3d 81     ld   ($813D),a
80ee: cd 28 81     call $8128
80f1: 21 00 bf     ld   hl,$BF00
80f4: 19           add  hl,de
80f5: e5           push hl
80f6: 3a 3c 81     ld   a,($813C)
80f9: cb 67        bit  4,a
80fb: c2 13 81     jp   nz,$8113
80fe: e1           pop  hl
80ff: 11 e5 82     ld   de,$82E5
8102: 01 08 00     ld   bc,$0008
8105: ed b0        ldir
8107: 21 3f 81     ld   hl,$813F
810a: 11 f6 82     ld   de,$82F6
810d: 01 08 00     ld   bc,$0008
8110: ed b0        ldir
8112: c9           ret
8113: e1           pop  hl
8114: 11 f6 82     ld   de,$82F6
8117: 01 08 00     ld   bc,$0008
811a: ed b0        ldir
811c: 21 3f 81     ld   hl,$813F
811f: 11 e5 82     ld   de,$82E5
8122: 01 08 00     ld   bc,$0008
8125: ed b0        ldir
8127: c9           ret
8128: 5f           ld   e,a
8129: af           xor  a
812a: 16 00        ld   d,$00
812c: 06 03        ld   b,$03
812e: cb 23        sla  e
8130: cb 12        rl   d
8132: 10 fa        djnz $812E
8134: c9           ret
8135: 00           nop
8136: 00           nop
8137: 00           nop
8138: 00           nop
8139: 00           nop
813a: 00           nop
813b: ff           rst  $38
813c: 00           nop
813d: 00           nop
813e: 00           nop
813f: 00           nop
8140: 00           nop
8141: 00           nop
8142: 00           nop
8143: 00           nop
8144: 00           nop
8145: 00           nop
8146: 00           nop
8147: 00           nop
8148: 3e 0c        ld   a,$0C
814a: cd 14 82     call $8214
814d: c9           ret
814e: 3e 0d        ld   a,$0D
8150: cd 14 82     call $8214
8153: c9           ret
8154: e5           push hl
8155: 21 00 00     ld   hl,$0000
8158: 11 00 00     ld   de,$0000
815b: cd bf 69     call $69BF
815e: 22 44 82     ld   ($8244),hl
8161: 32 46 82     ld   ($8246),a
8164: e1           pop  hl
8165: 3e 01        ld   a,$01
8167: a5           and  l
8168: 5f           ld   e,a
8169: 16 00        ld   d,$00
816b: 01 80 3e     ld   bc,$3E80
816e: cd 72 81     call $8172
8171: c9           ret
8172: 0b           dec  bc
8173: ed 43 4a 82  ld   ($824A),bc
8177: ed 53 52 82  ld   ($8252),de
817b: 21 41 82     ld   hl,$8241
817e: cd 82 81     call $8182
8181: c9           ret
8182: 3a c4 4f     ld   a,($4FC4)
8185: b7           or   a
8186: c2 ab 81     jp   nz,$81AB
8189: 3e 02        ld   a,$02
818b: d3 2d        out  ($2D),a
818d: 46           ld   b,(hl)
818e: 23           inc  hl
818f: c5           push bc
8190: 7e           ld   a,(hl)
8191: cd 14 82     call $8214
8194: 23           inc  hl
8195: 3e 00        ld   a,$00
8197: be           cp   (hl)
8198: 28 0e        jr   z,$81A8
819a: 7e           ld   a,(hl)
819b: 47           ld   b,a
819c: 0e 38        ld   c,$38
819e: 23           inc  hl
819f: cd 24 82     call $8224
81a2: ed b3        otir
81a4: c1           pop  bc
81a5: 10 e8        djnz $818F
81a7: c9           ret
81a8: 23           inc  hl
81a9: 18 f9        jr   $81A4
81ab: 22 6a 83     ld   ($836A),hl
81ae: 3a 6c 83     ld   a,($836C)
81b1: e6 01        and  $01
81b3: 28 09        jr   z,$81BE
81b5: cd e9 81     call $81E9
81b8: cd 8d 81     call $818D
81bb: cd fa 81     call $81FA
81be: 3a 6c 83     ld   a,($836C)
81c1: e6 02        and  $02
81c3: 28 0c        jr   z,$81D1
81c5: cd e9 81     call $81E9
81c8: 2a 6a 83     ld   hl,($836A)
81cb: cd 8d 81     call $818D
81ce: cd fa 81     call $81FA
81d1: 3a 6c 83     ld   a,($836C)
81d4: e6 04        and  $04
81d6: 28 0c        jr   z,$81E4
81d8: cd e9 81     call $81E9
81db: 2a 6a 83     ld   hl,($836A)
81de: cd 8d 81     call $818D
81e1: cd fa 81     call $81FA
81e4: af           xor  a
81e5: 32 3a 82     ld   ($823A),a
81e8: c9           ret
81e9: f5           push af
81ea: db 38        in   a,($38)
81ec: e6 08        and  $08
81ee: 20 fa        jr   nz,$81EA
81f0: db 38        in   a,($38)
81f2: e6 04        and  $04
81f4: 28 f4        jr   z,$81EA
81f6: f1           pop  af
81f7: d3 2d        out  ($2D),a
81f9: c9           ret
81fa: 3a 3a 82     ld   a,($823A)
81fd: b7           or   a
81fe: c8           ret  z
81ff: ed 4b 36 82  ld   bc,($8236)
8203: c5           push bc
8204: ed 4b 38 82  ld   bc,($8238)
8208: 79           ld   a,c
8209: b0           or   b
820a: 0b           dec  bc
820b: 20 fb        jr   nz,$8208
820d: c1           pop  bc
820e: 0b           dec  bc
820f: 79           ld   a,c
8210: b0           or   b
8211: 20 f0        jr   nz,$8203
8213: c9           ret
8214: cd 1a 82     call $821A
8217: d3 39        out  ($39),a
8219: c9           ret
821a: f5           push af
821b: db 38        in   a,($38)
821d: e6 02        and  $02
821f: c2 1b 82     jp   nz,$821B
8222: f1           pop  af
8223: c9           ret
8224: db 38        in   a,($38)
8226: e6 04        and  $04
8228: ca 24 82     jp   z,$8224
822b: c9           ret
822c: db 38        in   a,($38)
822e: e6 01        and  $01
8230: ca 2c 82     jp   z,$822C
8233: db 39        in   a,($39)
8235: c9           ret
8236: 00           nop
8237: 00           nop
8238: 00           nop
8239: 00           nop
823a: 00           nop
823b: 01 49 03     ld   bc,$0349
823e: 00           nop
823f: 00           nop
8240: 00           nop
8241: 04           inc  b
8242: 49           ld   c,c
8243: 03           inc  bc
8244: 00           nop
8245: 00           nop
8246: 00           nop
8247: 4c           ld   c,h
8248: 03           inc  bc
8249: 02           ld   (bc),a
824a: 00           nop
824b: 00           nop
824c: 4a           ld   c,d
824d: 02           ld   (bc),a
824e: ff           rst  $38
824f: ff           rst  $38
8250: 20 02        jr   nz,$8254
8252: 00           nop
8253: 00           nop
8254: 02           ld   (bc),a
8255: 70           ld   (hl),b
8256: 08           ex   af,af'
8257: 00           nop
8258: 00           nop
8259: 00           nop
825a: 00           nop
825b: 00           nop
825c: 00           nop
825d: 00           nop
825e: 00           nop
825f: 4c           ld   c,h
8260: 01 02 04     ld   bc,$0402
8263: 49           ld   c,c
8264: 03           inc  bc
8265: 00           nop
8266: 00           nop
8267: 00           nop
8268: 78           ld   a,b
8269: 08           ex   af,af'
826a: 00           nop
826b: 00           nop
826c: 00           nop
826d: 00           nop
826e: 00           nop
826f: 00           nop
8270: 00           nop
8271: 00           nop
8272: 4c           ld   c,h
8273: 07           rlca
8274: 00           nop
8275: 00           nop
8276: 00           nop
8277: 00           nop
8278: 00           nop
8279: 00           nop
827a: 00           nop
827b: 68           ld   l,b
827c: 00           nop
827d: 04           inc  b
827e: 49           ld   c,c
827f: 03           inc  bc
8280: 00           nop
8281: 00           nop
8282: 00           nop
8283: 78           ld   a,b
8284: 02           ld   (bc),a
8285: ff           rst  $38
8286: ff           rst  $38
8287: 4c           ld   c,h
8288: 09           add  hl,bc
8289: 00           nop
828a: 00           nop
828b: 00           nop
828c: 00           nop
828d: 00           nop
828e: 00           nop
828f: 00           nop
8290: 00           nop
8291: 00           nop
8292: 6c           ld   l,h
8293: 00           nop
8294: 04           inc  b
8295: 49           ld   c,c
8296: 03           inc  bc
8297: 00           nop
8298: 00           nop
8299: 00           nop
829a: 78           ld   a,b
829b: 02           ld   (bc),a
829c: ff           rst  $38
829d: ff           rst  $38
829e: 4c           ld   c,h
829f: 0b           dec  bc
82a0: 00           nop
82a1: 03           inc  bc
82a2: 40           ld   b,b
82a3: 00           nop
82a4: 00           nop
82a5: 00           nop
82a6: 00           nop
82a7: ff           rst  $38
82a8: ff           rst  $38
82a9: 00           nop
82aa: 00           nop
82ab: 6c           ld   l,h
82ac: 00           nop
82ad: 04           inc  b
82ae: 49           ld   c,c
82af: 03           inc  bc
82b0: 00           nop
82b1: 00           nop
82b2: 00           nop
82b3: 78           ld   a,b
82b4: 02           ld   (bc),a
82b5: ff           rst  $38
82b6: ff           rst  $38
82b7: 4c           ld   c,h
82b8: 0b           dec  bc
82b9: 00           nop
82ba: 00           nop
82bb: 00           nop
82bc: 00           nop
82bd: 00           nop
82be: 00           nop
82bf: 00           nop
82c0: ff           rst  $38
82c1: ff           rst  $38
82c2: 00           nop
82c3: 00           nop
82c4: 6c           ld   l,h
82c5: 00           nop
82c6: 04           inc  b
82c7: 49           ld   c,c
82c8: 03           inc  bc
82c9: 00           nop
82ca: 00           nop
82cb: 00           nop
82cc: 4c           ld   c,h
82cd: 09           add  hl,bc
82ce: 0a           ld   a,(bc)
82cf: 0f           rrca
82d0: 40           ld   b,b
82d1: f1           pop  af
82d2: ff           rst  $38
82d3: e2 ff 00     jp   po,$00FF
82d6: 00           nop
82d7: 78           ld   a,b
82d8: 02           ld   (bc),a
82d9: 00           nop
82da: 00           nop
82db: 6c           ld   l,h
82dc: 00           nop
82dd: 07           rlca
82de: 49           ld   c,c
82df: 03           inc  bc
82e0: 00           nop
82e1: 00           nop
82e2: 00           nop
82e3: 78           ld   a,b
82e4: 08           ex   af,af'
82e5: 00           nop
82e6: 00           nop
82e7: 00           nop
82e8: 00           nop
82e9: 00           nop
82ea: 00           nop
82eb: 00           nop
82ec: 00           nop
82ed: 4c           ld   c,h
82ee: 03           inc  bc
82ef: 12           ld   (de),a
82f0: 07           rlca
82f1: 40           ld   b,b
82f2: 68           ld   l,b
82f3: 00           nop
82f4: 78           ld   a,b
82f5: 08           ex   af,af'
82f6: 00           nop
82f7: 00           nop
82f8: 00           nop
82f9: 00           nop
82fa: 00           nop
82fb: 00           nop
82fc: 00           nop
82fd: 00           nop
82fe: 4c           ld   c,h
82ff: 03           inc  bc
8300: 12           ld   (de),a
8301: 07           rlca
8302: 40           ld   b,b
8303: 68           ld   l,b
8304: 00           nop
8305: 04           inc  b
8306: 49           ld   c,c
8307: 03           inc  bc
8308: 00           nop
8309: 00           nop
830a: 00           nop
830b: 78           ld   a,b
830c: 02           ld   (bc),a
830d: ff           rst  $38
830e: ff           rst  $38
830f: 4c           ld   c,h
8310: 01 02 6c     ld   bc,$6C02
8313: 00           nop
8314: 04           inc  b
8315: 49           ld   c,c
8316: 03           inc  bc
8317: 00           nop
8318: 00           nop
8319: 00           nop
831a: 4a           ld   c,d
831b: 02           ld   (bc),a
831c: ff           rst  $38
831d: ff           rst  $38
831e: 4c           ld   c,h
831f: 03           inc  bc
8320: 02           ld   (bc),a
8321: 00           nop
8322: 40           ld   b,b
8323: a0           and  b
8324: 00           nop
8325: 04           inc  b
8326: 49           ld   c,c
8327: 03           inc  bc
8328: 00           nop
8329: 00           nop
832a: 00           nop
832b: 4a           ld   c,d
832c: 02           ld   (bc),a
832d: 00           nop
832e: 00           nop
832f: 4c           ld   c,h
8330: 03           inc  bc
8331: 02           ld   (bc),a
8332: 00           nop
8333: 40           ld   b,b
8334: 20 00        jr   nz,$8336
8336: 04           inc  b
8337: 49           ld   c,c
8338: 03           inc  bc
8339: 00           nop
833a: 00           nop
833b: 00           nop
833c: 78           ld   a,b
833d: 02           ld   (bc),a
833e: 00           nop
833f: 00           nop
8340: 4c           ld   c,h
8341: 09           add  hl,bc
8342: 0a           ld   a,(bc)
8343: 00           nop
8344: 00           nop
8345: 00           nop
8346: 00           nop
8347: 00           nop
8348: 00           nop
8349: 00           nop
834a: 00           nop
834b: 6c           ld   l,h
834c: 00           nop
834d: 00           nop
834e: 00           nop
834f: 00           nop
8350: 00           nop
8351: 00           nop
8352: 00           nop
8353: 00           nop
8354: 00           nop
8355: ff           rst  $38
8356: ff           rst  $38
8357: ff           rst  $38
8358: ff           rst  $38
8359: ff           rst  $38
835a: ff           rst  $38
835b: ff           rst  $38
835c: ff           rst  $38
835d: 00           nop
835e: 00           nop
835f: 40           ld   b,b
8360: 00           nop
8361: 00           nop
8362: 00           nop
8363: 00           nop
8364: 00           nop
8365: 00           nop
8366: 7f           ld   a,a
8367: 02           ld   (bc),a
8368: 8f           adc  a,a
8369: 01 00 00     ld   bc,$0000
836c: 02           ld   (bc),a
836d: 00           nop
836e: 00           nop
836f: 00           nop
8370: 00           nop
8371: 20 11        jr   nz,$8384
8373: 55           ld   d,l
8374: 00           nop
8375: 00           nop
8376: 00           nop
8377: 00           nop
8378: 00           nop
8379: 00           nop
837a: 00           nop
837b: 00           nop
837c: 00           nop
837d: 00           nop
837e: 00           nop
837f: 00           nop
8380: 00           nop
8381: 00           nop
8382: 00           nop
8383: 00           nop
8384: 00           nop
8385: 00           nop
8386: 00           nop
8387: 00           nop
8388: 00           nop
8389: 00           nop
838a: 00           nop
838b: 00           nop
838c: 00           nop
838d: 00           nop
838e: 00           nop
838f: 00           nop
8390: 00           nop
8391: 00           nop
8392: 00           nop
8393: 00           nop
8394: 00           nop
8395: 00           nop
8396: 00           nop
8397: 00           nop
8398: 00           nop
8399: 00           nop
839a: 00           nop
839b: 00           nop
839c: 00           nop
839d: 00           nop
839e: 00           nop
839f: 00           nop
83a0: 8f           adc  a,a
83a1: 83           add  a,e
83a2: ed 53 08 87  ld   ($8708),de
83a6: 79           ld   a,c
83a7: 32 2e 87     ld   ($872E),a
83aa: 3d           dec  a
83ab: 32 2a 87     ld   ($872A),a
83ae: 32 2c 87     ld   ($872C),a
83b1: 22 0a 87     ld   ($870A),hl
83b4: 11 44 87     ld   de,$8744
83b7: 01 04 00     ld   bc,$0004
83ba: ed b0        ldir
83bc: 2a 0a 87     ld   hl,($870A)
83bf: 11 1a 87     ld   de,$871A
83c2: 01 04 00     ld   bc,$0004
83c5: ed b0        ldir
83c7: 2a 0a 87     ld   hl,($870A)
83ca: 11 1e 87     ld   de,$871E
83cd: 01 04 00     ld   bc,$0004
83d0: ed b0        ldir
83d2: 2a 0a 87     ld   hl,($870A)
83d5: 11 04 00     ld   de,$0004
83d8: 19           add  hl,de
83d9: cd 94 85     call $8594
83dc: 11 04 00     ld   de,$0004
83df: 19           add  hl,de
83e0: 3a 2a 87     ld   a,($872A)
83e3: 3d           dec  a
83e4: 32 2a 87     ld   ($872A),a
83e7: c2 d9 83     jp   nz,$83D9
83ea: eb           ex   de,hl
83eb: 2a 0a 87     ld   hl,($870A)
83ee: 01 04 00     ld   bc,$0004
83f1: ed b0        ldir
83f3: 2a 1c 87     ld   hl,($871C)
83f6: 22 30 87     ld   ($8730),hl
83f9: eb           ex   de,hl
83fa: 2a 20 87     ld   hl,($8720)
83fd: 7d           ld   a,l
83fe: 93           sub  e
83ff: 6f           ld   l,a
8400: 7c           ld   a,h
8401: 9a           sbc  a,d
8402: 67           ld   h,a
8403: 23           inc  hl
8404: 22 22 87     ld   ($8722),hl
8407: af           xor  a
8408: 32 24 87     ld   ($8724),a
840b: 3a 2e 87     ld   a,($872E)
840e: 32 28 87     ld   ($8728),a
8411: 6f           ld   l,a
8412: 2d           dec  l
8413: 26 00        ld   h,$00
8415: 29           add  hl,hl
8416: 29           add  hl,hl
8417: 22 36 87     ld   ($8736),hl
841a: eb           ex   de,hl
841b: 2a 0a 87     ld   hl,($870A)
841e: 19           add  hl,de
841f: 23           inc  hl
8420: 23           inc  hl
8421: e5           push hl
8422: e5           push hl
8423: cd 47 86     call $8647
8426: 32 34 87     ld   ($8734),a
8429: e1           pop  hl
842a: 11 04 00     ld   de,$0004
842d: 19           add  hl,de
842e: cd 47 86     call $8647
8431: 22 38 87     ld   ($8738),hl
8434: 47           ld   b,a
8435: 3a 34 87     ld   a,($8734)
8438: b8           cp   b
8439: e1           pop  hl
843a: ca d1 84     jp   z,$84D1
843d: e5           push hl
843e: cd 83 85     call $8583
8441: 22 32 87     ld   ($8732),hl
8444: d1           pop  de
8445: 7c           ld   a,h
8446: b5           or   l
8447: ca d1 84     jp   z,$84D1
844a: 1b           dec  de
844b: 1b           dec  de
844c: 21 04 00     ld   hl,$0004
844f: 19           add  hl,de
8450: e5           push hl
8451: eb           ex   de,hl
8452: cd 83 85     call $8583
8455: 7c           ld   a,h
8456: e6 80        and  $80
8458: 47           ld   b,a
8459: ca 63 84     jp   z,$8463
845c: 7d           ld   a,l
845d: 2f           cpl
845e: 6f           ld   l,a
845f: 7c           ld   a,h
8460: 2f           cpl
8461: 67           ld   h,a
8462: 23           inc  hl
8463: e5           push hl
8464: 2a 38 87     ld   hl,($8738)
8467: 7c           ld   a,h
8468: e6 80        and  $80
846a: ca 76 84     jp   z,$8476
846d: a8           xor  b
846e: 47           ld   b,a
846f: 7d           ld   a,l
8470: 2f           cpl
8471: 6f           ld   l,a
8472: 7c           ld   a,h
8473: 2f           cpl
8474: 67           ld   h,a
8475: 23           inc  hl
8476: d1           pop  de
8477: c5           push bc
8478: d5           push de
8479: 44           ld   b,h
847a: 4d           ld   c,l
847b: cd 5f 86     call $865F
847e: c1           pop  bc
847f: e5           push hl
8480: 2a 32 87     ld   hl,($8732)
8483: 7c           ld   a,h
8484: e6 80        and  $80
8486: ca 92 84     jp   z,$8492
8489: a8           xor  b
848a: 47           ld   b,a
848b: 7d           ld   a,l
848c: 2f           cpl
848d: 6f           ld   l,a
848e: 7c           ld   a,h
848f: 2f           cpl
8490: 67           ld   h,a
8491: 23           inc  hl
8492: c5           push bc
8493: 44           ld   b,h
8494: 4d           ld   c,l
8495: eb           ex   de,hl
8496: 29           add  hl,hl
8497: eb           ex   de,hl
8498: e1           pop  hl
8499: e3           ex   (sp),hl
849a: 7d           ld   a,l
849b: 8f           adc  a,a
849c: 6f           ld   l,a
849d: 7c           ld   a,h
849e: 8f           adc  a,a
849f: 67           ld   h,a
84a0: 13           inc  de
84a1: cd a9 87     call $87A9
84a4: af           xor  a
84a5: 7a           ld   a,d
84a6: 1f           rra
84a7: 57           ld   d,a
84a8: 7b           ld   a,e
84a9: 1f           rra
84aa: 5f           ld   e,a
84ab: eb           ex   de,hl
84ac: c1           pop  bc
84ad: 78           ld   a,b
84ae: b7           or   a
84af: ca b9 84     jp   z,$84B9
84b2: 7d           ld   a,l
84b3: 2f           cpl
84b4: 6f           ld   l,a
84b5: 7c           ld   a,h
84b6: 2f           cpl
84b7: 67           ld   h,a
84b8: 23           inc  hl
84b9: eb           ex   de,hl
84ba: e1           pop  hl
84bb: 4e           ld   c,(hl)
84bc: 23           inc  hl
84bd: 46           ld   b,(hl)
84be: eb           ex   de,hl
84bf: 09           add  hl,bc
84c0: eb           ex   de,hl
84c1: 2a 24 87     ld   hl,($8724)
84c4: 23           inc  hl
84c5: 22 24 87     ld   ($8724),hl
84c8: 2b           dec  hl
84c9: 29           add  hl,hl
84ca: 01 80 b5     ld   bc,$B580
84cd: 09           add  hl,bc
84ce: 73           ld   (hl),e
84cf: 23           inc  hl
84d0: 72           ld   (hl),d
84d1: 3a 28 87     ld   a,($8728)
84d4: 3d           dec  a
84d5: 32 28 87     ld   ($8728),a
84d8: c2 11 84     jp   nz,$8411
84db: 3a 24 87     ld   a,($8724)
84de: fe 02        cp   $02
84e0: da 6a 85     jp   c,$856A
84e3: cd f7 85     call $85F7
84e6: 21 8f 01     ld   hl,$018F
84e9: ed 5b 1c 87  ld   de,($871C)
84ed: ed 52        sbc  hl,de
84ef: eb           ex   de,hl
84f0: 2a 22 87     ld   hl,($8722)
84f3: ed 52        sbc  hl,de
84f5: fa ff 84     jp   m,$84FF
84f8: ca ff 84     jp   z,$84FF
84fb: ed 53 22 87  ld   ($8722),de
84ff: 3a 24 87     ld   a,($8724)
8502: 3c           inc  a
8503: e6 fe        and  $FE
8505: 0f           rrca
8506: 32 26 87     ld   ($8726),a
8509: 2a 30 87     ld   hl,($8730)
850c: 22 46 87     ld   ($8746),hl
850f: 22 4a 87     ld   ($874A),hl
8512: 7d           ld   a,l
8513: e6 07        and  $07
8515: 6f           ld   l,a
8516: 26 00        ld   h,$00
8518: eb           ex   de,hl
8519: 2a 08 87     ld   hl,($8708)
851c: 19           add  hl,de
851d: 7e           ld   a,(hl)
851e: 32 3a 87     ld   ($873A),a
8521: 67           ld   h,a
8522: 6f           ld   l,a
8523: 22 94 87     ld   ($8794),hl
8526: 21 80 b5     ld   hl,$B580
8529: 5e           ld   e,(hl)
852a: 23           inc  hl
852b: 56           ld   d,(hl)
852c: eb           ex   de,hl
852d: 23           inc  hl
852e: 22 44 87     ld   ($8744),hl
8531: 22 40 87     ld   ($8740),hl
8534: eb           ex   de,hl
8535: 23           inc  hl
8536: 7b           ld   a,e
8537: cd e1 85     call $85E1
853a: 5e           ld   e,(hl)
853b: 23           inc  hl
853c: 56           ld   d,(hl)
853d: 23           inc  hl
853e: e5           push hl
853f: 1b           dec  de
8540: 2a 40 87     ld   hl,($8740)
8543: cd db 85     call $85DB
8546: d2 5f 85     jp   nc,$855F
8549: eb           ex   de,hl
854a: 22 48 87     ld   ($8748),hl
854d: 11 7f 02     ld   de,$027F
8550: ed 52        sbc  hl,de
8552: ca 5c 85     jp   z,$855C
8555: fa 5c 85     jp   m,$855C
8558: ed 53 48 87  ld   ($8748),de
855c: cd 97 86     call $8697
855f: 3a 26 87     ld   a,($8726)
8562: 3d           dec  a
8563: 32 26 87     ld   ($8726),a
8566: e1           pop  hl
8567: c2 29 85     jp   nz,$8529
856a: 2a 30 87     ld   hl,($8730)
856d: 23           inc  hl
856e: 22 30 87     ld   ($8730),hl
8571: 2a 22 87     ld   hl,($8722)
8574: 2b           dec  hl
8575: 22 22 87     ld   ($8722),hl
8578: 7d           ld   a,l
8579: b7           or   a
857a: c2 07 84     jp   nz,$8407
857d: 7c           ld   a,h
857e: b7           or   a
857f: c2 07 84     jp   nz,$8407
8582: c9           ret
8583: 4e           ld   c,(hl)
8584: 23           inc  hl
8585: 46           ld   b,(hl)
8586: 11 03 00     ld   de,$0003
8589: 19           add  hl,de
858a: 5e           ld   e,(hl)
858b: 23           inc  hl
858c: 56           ld   d,(hl)
858d: 79           ld   a,c
858e: 93           sub  e
858f: 6f           ld   l,a
8590: 78           ld   a,b
8591: 9a           sbc  a,d
8592: 67           ld   h,a
8593: c9           ret
8594: e5           push hl
8595: 5e           ld   e,(hl)
8596: 23           inc  hl
8597: 56           ld   d,(hl)
8598: 2a 1a 87     ld   hl,($871A)
859b: cd db 85     call $85DB
859e: da a8 85     jp   c,$85A8
85a1: eb           ex   de,hl
85a2: 22 1a 87     ld   ($871A),hl
85a5: c3 b5 85     jp   $85B5
85a8: 2a 1e 87     ld   hl,($871E)
85ab: cd db 85     call $85DB
85ae: d2 b5 85     jp   nc,$85B5
85b1: eb           ex   de,hl
85b2: 22 1e 87     ld   ($871E),hl
85b5: e1           pop  hl
85b6: e5           push hl
85b7: 23           inc  hl
85b8: 23           inc  hl
85b9: 5e           ld   e,(hl)
85ba: 23           inc  hl
85bb: 56           ld   d,(hl)
85bc: 2a 1c 87     ld   hl,($871C)
85bf: cd db 85     call $85DB
85c2: da cc 85     jp   c,$85CC
85c5: eb           ex   de,hl
85c6: 22 1c 87     ld   ($871C),hl
85c9: c3 d9 85     jp   $85D9
85cc: 2a 20 87     ld   hl,($8720)
85cf: cd db 85     call $85DB
85d2: d2 d9 85     jp   nc,$85D9
85d5: eb           ex   de,hl
85d6: 22 20 87     ld   ($8720),hl
85d9: e1           pop  hl
85da: c9           ret
85db: 7c           ld   a,h
85dc: ba           cp   d
85dd: c0           ret  nz
85de: 7d           ld   a,l
85df: bb           cp   e
85e0: c9           ret
85e1: e6 07        and  $07
85e3: b7           or   a
85e4: 4f           ld   c,a
85e5: 3a 3a 87     ld   a,($873A)
85e8: ca f0 85     jp   z,$85F0
85eb: 0f           rrca
85ec: 0d           dec  c
85ed: c2 eb 85     jp   nz,$85EB
85f0: 32 94 87     ld   ($8794),a
85f3: 32 95 87     ld   ($8795),a
85f6: c9           ret
85f7: 3d           dec  a
85f8: 32 10 87     ld   ($8710),a
85fb: 3e 01        ld   a,$01
85fd: 32 12 87     ld   ($8712),a
8600: 21 80 b5     ld   hl,$B580
8603: 22 14 87     ld   ($8714),hl
8606: 2a 14 87     ld   hl,($8714)
8609: 5e           ld   e,(hl)
860a: 23           inc  hl
860b: 56           ld   d,(hl)
860c: 23           inc  hl
860d: 7e           ld   a,(hl)
860e: 23           inc  hl
860f: 66           ld   h,(hl)
8610: 6f           ld   l,a
8611: cd db 85     call $85DB
8614: d2 28 86     jp   nc,$8628
8617: eb           ex   de,hl
8618: e5           push hl
8619: 2a 14 87     ld   hl,($8714)
861c: 73           ld   (hl),e
861d: 23           inc  hl
861e: 72           ld   (hl),d
861f: 23           inc  hl
8620: d1           pop  de
8621: 73           ld   (hl),e
8622: 23           inc  hl
8623: 72           ld   (hl),d
8624: 2b           dec  hl
8625: c3 2d 86     jp   $862D
8628: 2a 14 87     ld   hl,($8714)
862b: 23           inc  hl
862c: 23           inc  hl
862d: 22 14 87     ld   ($8714),hl
8630: 3a 12 87     ld   a,($8712)
8633: 3c           inc  a
8634: 32 12 87     ld   ($8712),a
8637: 47           ld   b,a
8638: 3a 10 87     ld   a,($8710)
863b: b8           cp   b
863c: d2 06 86     jp   nc,$8606
863f: 3d           dec  a
8640: 32 10 87     ld   ($8710),a
8643: c2 fb 85     jp   nz,$85FB
8646: c9           ret
8647: e5           push hl
8648: 2a 30 87     ld   hl,($8730)
864b: eb           ex   de,hl
864c: e1           pop  hl
864d: 4e           ld   c,(hl)
864e: 23           inc  hl
864f: 46           ld   b,(hl)
8650: 7b           ld   a,e
8651: 91           sub  c
8652: 6f           ld   l,a
8653: 7a           ld   a,d
8654: 98           sbc  a,b
8655: 67           ld   h,a
8656: d2 5b 86     jp   nc,$865B
8659: 26 ff        ld   h,$FF
865b: 1f           rra
865c: e6 80        and  $80
865e: c9           ret
865f: e1           pop  hl
8660: e3           ex   (sp),hl
8661: e5           push hl
8662: 3e 10        ld   a,$10
8664: 32 0e 87     ld   ($870E),a
8667: af           xor  a
8668: 21 00 00     ld   hl,$0000
866b: 11 00 00     ld   de,$0000
866e: 78           ld   a,b
866f: 1f           rra
8670: 47           ld   b,a
8671: 79           ld   a,c
8672: 1f           rra
8673: 4f           ld   c,a
8674: d2 7e 86     jp   nc,$867E
8677: eb           ex   de,hl
8678: e3           ex   (sp),hl
8679: eb           ex   de,hl
867a: 19           add  hl,de
867b: eb           ex   de,hl
867c: e3           ex   (sp),hl
867d: eb           ex   de,hl
867e: 7c           ld   a,h
867f: 1f           rra
8680: 67           ld   h,a
8681: 7d           ld   a,l
8682: 1f           rra
8683: 6f           ld   l,a
8684: 7a           ld   a,d
8685: 1f           rra
8686: 57           ld   d,a
8687: 7b           ld   a,e
8688: 1f           rra
8689: 5f           ld   e,a
868a: 3a 0e 87     ld   a,($870E)
868d: 3d           dec  a
868e: 32 0e 87     ld   ($870E),a
8691: c2 6e 86     jp   nz,$866E
8694: 33           inc  sp
8695: 33           inc  sp
8696: c9           ret
8697: 2a 44 87     ld   hl,($8744)
869a: 23           inc  hl
869b: ed 5b 46 87  ld   de,($8746)
869f: cd bf 69     call $69BF
86a2: 22 8f 87     ld   ($878F),hl
86a5: 32 91 87     ld   ($8791),a
86a8: 2a 48 87     ld   hl,($8748)
86ab: ed 5b 44 87  ld   de,($8744)
86af: 13           inc  de
86b0: cd 70 6d     call $6D70
86b3: 7c           ld   a,h
86b4: e6 80        and  $80
86b6: 3e 09        ld   a,$09
86b8: 28 09        jr   z,$86C3
86ba: 2b           dec  hl
86bb: 7d           ld   a,l
86bc: 2f           cpl
86bd: 6f           ld   l,a
86be: 7c           ld   a,h
86bf: 2f           cpl
86c0: 67           ld   h,a
86c1: 3e 0e        ld   a,$0E
86c3: 32 98 87     ld   ($8798),a
86c6: e5           push hl
86c7: 2b           dec  hl
86c8: 7c           ld   a,h
86c9: cb 7f        bit  7,a
86cb: 20 1e        jr   nz,$86EB
86cd: 3a c5 4f     ld   a,($4FC5)
86d0: b4           or   h
86d1: 67           ld   h,a
86d2: 22 99 87     ld   ($8799),hl
86d5: e1           pop  hl
86d6: 7d           ld   a,l
86d7: 2f           cpl
86d8: 6f           ld   l,a
86d9: 7c           ld   a,h
86da: 2f           cpl
86db: 67           ld   h,a
86dc: 23           inc  hl
86dd: 22 9b 87     ld   ($879B),hl
86e0: 29           add  hl,hl
86e1: 22 9d 87     ld   ($879D),hl
86e4: 21 8c 87     ld   hl,$878C
86e7: cd 82 81     call $8182
86ea: c9           ret
86eb: e1           pop  hl
86ec: c9           ret
86ed: 00           nop
86ee: 00           nop
86ef: d5           push de
86f0: eb           ex   de,hl
86f1: 21 05 87     ld   hl,$8705
86f4: af           xor  a
86f5: 73           ld   (hl),e
86f6: 7a           ld   a,d
86f7: ed 67        rrd  (hl)
86f9: 5e           ld   e,(hl)
86fa: cb 3a        srl  d
86fc: cb 3a        srl  d
86fe: cb 3a        srl  d
8700: cb 3a        srl  d
8702: eb           ex   de,hl
8703: d1           pop  de
8704: c9           ret
8705: 00           nop
8706: 00           nop
8707: 00           nop
8708: 00           nop
8709: 00           nop
870a: 00           nop
870b: 00           nop
870c: 00           nop
870d: 00           nop
870e: 00           nop
870f: 00           nop
8710: 00           nop
8711: 00           nop
8712: 00           nop
8713: 00           nop
8714: 00           nop
8715: 00           nop
8716: 00           nop
8717: 00           nop
8718: 00           nop
8719: 00           nop
871a: 00           nop
871b: 00           nop
871c: 00           nop
871d: 00           nop
871e: 00           nop
871f: 00           nop
8720: 00           nop
8721: 00           nop
8722: 00           nop
8723: 00           nop
8724: 00           nop
8725: 00           nop
8726: 00           nop
8727: 00           nop
8728: 00           nop
8729: 00           nop
872a: 00           nop
872b: 00           nop
872c: 00           nop
872d: 00           nop
872e: 00           nop
872f: 00           nop
8730: 00           nop
8731: 00           nop
8732: 00           nop
8733: 00           nop
8734: 00           nop
8735: 00           nop
8736: 00           nop
8737: 00           nop
8738: 00           nop
8739: 00           nop
873a: 00           nop
873b: 00           nop
873c: 00           nop
873d: 00           nop
873e: 00           nop
873f: 00           nop
8740: 00           nop
8741: 00           nop
8742: 00           nop
8743: 00           nop
8744: 00           nop
8745: 00           nop
8746: 00           nop
8747: 00           nop
8748: 00           nop
8749: 00           nop
874a: 00           nop
874b: 00           nop
874c: ff           rst  $38
874d: ff           rst  $38
874e: 7f           ld   a,a
874f: ff           rst  $38
8750: 3f           ccf
8751: ff           rst  $38
8752: 1f           rra
8753: ff           rst  $38
8754: 0f           rrca
8755: ff           rst  $38
8756: 07           rlca
8757: ff           rst  $38
8758: 03           inc  bc
8759: ff           rst  $38
875a: 00           nop
875b: ff           rst  $38
875c: 00           nop
875d: 7f           ld   a,a
875e: 00           nop
875f: 3f           ccf
8760: 00           nop
8761: 1f           rra
8762: 00           nop
8763: 0f           rrca
8764: 00           nop
8765: 07           rlca
8766: 00           nop
8767: 03           inc  bc
8768: 00           nop
8769: 01 00 00     ld   bc,$0000
876c: ff           rst  $38
876d: ff           rst  $38
876e: ff           rst  $38
876f: ff           rst  $38
8770: ff           rst  $38
8771: ff           rst  $38
8772: ff           rst  $38
8773: ff           rst  $38
8774: ff           rst  $38
8775: ff           rst  $38
8776: ff           rst  $38
8777: ff           rst  $38
8778: ff           rst  $38
8779: ff           rst  $38
877a: ff           rst  $38
877b: ff           rst  $38
877c: ff           rst  $38
877d: ff           rst  $38
877e: ff           rst  $38
877f: ff           rst  $38
8780: ff           rst  $38
8781: ff           rst  $38
8782: ff           rst  $38
8783: ff           rst  $38
8784: ff           rst  $38
8785: ff           rst  $38
8786: ff           rst  $38
8787: ff           rst  $38
8788: ff           rst  $38
8789: ff           rst  $38
878a: ff           rst  $38
878b: ff           rst  $38
878c: 04           inc  b
878d: 49           ld   c,c
878e: 03           inc  bc
878f: 00           nop
8790: 00           nop
8791: 00           nop
8792: 78           ld   a,b
8793: 02           ld   (bc),a
8794: 00           nop
8795: 00           nop
8796: 4c           ld   c,h
8797: 09           add  hl,bc
8798: 00           nop
8799: 00           nop
879a: 00           nop
879b: 00           nop
879c: 00           nop
879d: 00           nop
879e: 00           nop
879f: 00           nop
87a0: 00           nop
87a1: 6c           ld   l,h
87a2: 00           nop
87a3: 00           nop
87a4: 00           nop
87a5: eb           ex   de,hl
87a6: 21 00 00     ld   hl,$0000
87a9: af           xor  a
87aa: 32 a3 87     ld   ($87A3),a
87ad: 79           ld   a,c
87ae: b0           or   b
87af: c2 b5 87     jp   nz,$87B5
87b2: c3 ee 87     jp   $87EE
87b5: 78           ld   a,b
87b6: 2f           cpl
87b7: 47           ld   b,a
87b8: 79           ld   a,c
87b9: 2f           cpl
87ba: 4f           ld   c,a
87bb: 03           inc  bc
87bc: 3e 11        ld   a,$11
87be: 3d           dec  a
87bf: c2 c6 87     jp   nz,$87C6
87c2: eb           ex   de,hl
87c3: c3 ec 87     jp   $87EC
87c6: 29           add  hl,hl
87c7: da e0 87     jp   c,$87E0
87ca: eb           ex   de,hl
87cb: 29           add  hl,hl
87cc: eb           ex   de,hl
87cd: d2 d1 87     jp   nc,$87D1
87d0: 2c           inc  l
87d1: e5           push hl
87d2: 09           add  hl,bc
87d3: da da 87     jp   c,$87DA
87d6: e1           pop  hl
87d7: c3 be 87     jp   $87BE
87da: 1c           inc  e
87db: 33           inc  sp
87dc: 33           inc  sp
87dd: c3 be 87     jp   $87BE
87e0: eb           ex   de,hl
87e1: 29           add  hl,hl
87e2: eb           ex   de,hl
87e3: d2 e7 87     jp   nc,$87E7
87e6: 2c           inc  l
87e7: 09           add  hl,bc
87e8: 1c           inc  e
87e9: c3 be 87     jp   $87BE
87ec: eb           ex   de,hl
87ed: c9           ret
87ee: c9           ret
87ef: af           xor  a
87f0: 32 a3 87     ld   ($87A3),a
87f3: b1           or   c
87f4: c2 00 88     jp   nz,$8800
87f7: b0           or   b
87f8: ca 65 88     jp   z,$8865
87fb: ee 80        xor  $80
87fd: ca 65 88     jp   z,$8865
8800: 78           ld   a,b
8801: a7           and  a
8802: fa 2d 88     jp   m,$882D
8805: b2           or   d
8806: fa 0e 88     jp   m,$880E
8809: eb           ex   de,hl
880a: cd a5 87     call $87A5
880d: c9           ret
880e: 7d           ld   a,l
880f: fe 01        cp   $01
8811: ca 26 88     jp   z,$8826
8814: 7b           ld   a,e
8815: 2f           cpl
8816: 6f           ld   l,a
8817: 7a           ld   a,d
8818: 2f           cpl
8819: 67           ld   h,a
881a: 23           inc  hl
881b: cd a5 87     call $87A5
881e: 7b           ld   a,e
881f: 2f           cpl
8820: 5f           ld   e,a
8821: 7a           ld   a,d
8822: 2f           cpl
8823: 57           ld   d,a
8824: 13           inc  de
8825: c9           ret
8826: 21 ff ff     ld   hl,$FFFF
8829: cd a9 87     call $87A9
882c: c9           ret
882d: af           xor  a
882e: 91           sub  c
882f: 4f           ld   c,a
8830: 3e 00        ld   a,$00
8832: 98           sbc  a,b
8833: 47           ld   b,a
8834: 7a           ld   a,d
8835: a7           and  a
8836: fa 53 88     jp   m,$8853
8839: c2 40 88     jp   nz,$8840
883c: b3           or   e
883d: ca 53 88     jp   z,$8853
8840: eb           ex   de,hl
8841: cd a5 87     call $87A5
8844: 7b           ld   a,e
8845: 2f           cpl
8846: 5f           ld   e,a
8847: 7a           ld   a,d
8848: 2f           cpl
8849: 57           ld   d,a
884a: 13           inc  de
884b: 7d           ld   a,l
884c: 91           sub  c
884d: 6f           ld   l,a
884e: 7c           ld   a,h
884f: 98           sbc  a,b
8850: 67           ld   h,a
8851: 23           inc  hl
8852: c9           ret
8853: af           xor  a
8854: 93           sub  e
8855: 6f           ld   l,a
8856: 3e 00        ld   a,$00
8858: 9a           sbc  a,d
8859: 67           ld   h,a
885a: cd a5 87     call $87A5
885d: af           xor  a
885e: 95           sub  l
885f: 6f           ld   l,a
8860: 3e 00        ld   a,$00
8862: 9c           sbc  a,h
8863: 67           ld   h,a
8864: c9           ret
8865: c3 ee 87     jp   $87EE
8868: 3e 01        ld   a,$01
886a: 32 a3 87     ld   ($87A3),a
886d: 11 ff ff     ld   de,$FFFF
8870: 21 00 00     ld   hl,$0000
8873: c9           ret
8874: e1           pop  hl
8875: c1           pop  bc
8876: d1           pop  de
8877: e5           push hl
8878: 2e 00        ld   l,$00
887a: cd ef 87     call $87EF
887d: e1           pop  hl
887e: d5           push de
887f: e9           jp   (hl)
8880: e1           pop  hl
8881: c1           pop  bc
8882: d1           pop  de
8883: e5           push hl
8884: 2e 01        ld   l,$01
8886: cd ef 87     call $87EF
8889: e3           ex   (sp),hl
888a: e9           jp   (hl)
888b: d1           pop  de
888c: c1           pop  bc
888d: e1           pop  hl
888e: d5           push de
888f: cd a5 87     call $87A5
8892: eb           ex   de,hl
8893: e3           ex   (sp),hl
8894: e9           jp   (hl)
8895: d1           pop  de
8896: c1           pop  bc
8897: e1           pop  hl
8898: d5           push de
8899: cd a5 87     call $87A5
889c: e3           ex   (sp),hl
889d: e9           jp   (hl)
889e: c9           ret
889f: dd 21 b9 88  ld   ix,$88B9
88a3: dd 6e 00     ld   l,(ix+$00)
88a6: dd 66 01     ld   h,(ix+$01)
88a9: dd 7e 02     ld   a,(ix+$02)
88ac: dd 4e 04     ld   c,(ix+$04)
88af: dd 46 05     ld   b,(ix+$05)
88b2: dd 5e 06     ld   e,(ix+$06)
88b5: dd 56 07     ld   d,(ix+$07)
88b8: c9           ret
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
88d9: cd 9f 88     call $889F
88dc: 06 00        ld   b,$00
88de: b7           or   a
88df: 28 09        jr   z,$88EA
88e1: f5           push af
88e2: 7d           ld   a,l
88e3: fe 01        cp   $01
88e5: 38 0a        jr   c,$88F1
88e7: f1           pop  af
88e8: 06 00        ld   b,$00
88ea: 65           ld   h,l
88eb: 2e 01        ld   l,$01
88ed: cd 00 52     call $5200
88f0: c9           ret
88f1: f1           pop  af
88f2: 06 00        ld   b,$00
88f4: 18 f4        jr   $88EA
88f6: cd 9f 88     call $889F
88f9: ed 43 5c 89  ld   ($895C),bc
88fd: ed 53 5a 89  ld   ($895A),de
8901: af           xor  a
8902: 62           ld   h,d
8903: 6b           ld   l,e
8904: 11 18 00     ld   de,$0018
8907: ed 52        sbc  hl,de
8909: 3e ff        ld   a,$FF
890b: 30 01        jr   nc,$890E
890d: af           xor  a
890e: 32 59 89     ld   ($8959),a
8911: 3a 38 27     ld   a,($2738)
8914: b7           or   a
8915: 21 18 00     ld   hl,$0018
8918: 22 64 89     ld   ($8964),hl
891b: 2a d1 38     ld   hl,($38D1)
891e: 28 09        jr   z,$8929
8920: 21 19 00     ld   hl,$0019
8923: 22 64 89     ld   ($8964),hl
8926: 2a b2 4f     ld   hl,($4FB2)
8929: ed 5b 5a 89  ld   de,($895A)
892d: cd 3d 89     call $893D
8930: 2a 60 89     ld   hl,($8960)
8933: 65           ld   h,l
8934: ed 5b 5c 89  ld   de,($895C)
8938: 6b           ld   l,e
8939: cd e6 12     call $12E6
893c: c9           ret
893d: 22 5e 89     ld   ($895E),hl
8940: 21 00 00     ld   hl,$0000
8943: ed 4b 64 89  ld   bc,($8964)
8947: cd a9 87     call $87A9
894a: 22 60 89     ld   ($8960),hl
894d: 7b           ld   a,e
894e: ed 5b 5e 89  ld   de,($895E)
8952: cd e2 8a     call $8AE2
8955: 22 62 89     ld   ($8962),hl
8958: c9           ret
8959: 00           nop
895a: 00           nop
895b: 00           nop
895c: 00           nop
895d: 00           nop
895e: 00           nop
895f: 00           nop
8960: 00           nop
8961: 00           nop
8962: 00           nop
8963: 00           nop
8964: 00           nop
8965: 00           nop
8966: cd 9f 88     call $889F
8969: 22 e3 89     ld   ($89E3),hl
896c: 21 00 00     ld   hl,$0000
896f: ed 43 df 89  ld   ($89DF),bc
8973: ed 53 e1 89  ld   ($89E1),de
8977: 3a 38 27     ld   a,($2738)
897a: b7           or   a
897b: 3a f5 54     ld   a,($54F5)
897e: 28 02        jr   z,$8982
8980: cb 3f        srl  a
8982: cd e2 8a     call $8AE2
8985: 22 e1 89     ld   ($89E1),hl
8988: 3e 70        ld   a,$70
898a: 32 0b 8b     ld   ($8B0B),a
898d: 3e 02        ld   a,$02
898f: 32 0c 8b     ld   ($8B0C),a
8992: 21 3f 8b     ld   hl,$8B3F
8995: 22 0d 8b     ld   ($8B0D),hl
8998: ed 4b df 89  ld   bc,($89DF)
899c: 2a e1 89     ld   hl,($89E1)
899f: 09           add  hl,bc
89a0: e5           push hl
89a1: 3a 38 27     ld   a,($2738)
89a4: b7           or   a
89a5: 28 08        jr   z,$89AF
89a7: ed 5b aa 4f  ld   de,($4FAA)
89ab: 19           add  hl,de
89ac: 22 aa 4f     ld   ($4FAA),hl
89af: e1           pop  hl
89b0: ed 5b e3 89  ld   de,($89E3)
89b4: 7b           ld   a,e
89b5: b7           or   a
89b6: 20 05        jr   nz,$89BD
89b8: 22 3f 8b     ld   ($8B3F),hl
89bb: 18 0e        jr   $89CB
89bd: 22 43 8b     ld   ($8B43),hl
89c0: 21 43 8b     ld   hl,$8B43
89c3: 22 0d 8b     ld   ($8B0D),hl
89c6: 3e 74        ld   a,$74
89c8: 32 0b 8b     ld   ($8B0B),a
89cb: cd 0f 8b     call $8B0F
89ce: 21 00 00     ld   hl,$0000
89d1: cd e6 12     call $12E6
89d4: 3a 38 27     ld   a,($2738)
89d7: b7           or   a
89d8: cc 9e 88     call z,$889E
89db: c4 9e 88     call nz,$889E
89de: c9           ret
89df: 00           nop
89e0: 00           nop
89e1: 00           nop
89e2: 00           nop
89e3: 00           nop
89e4: 00           nop
89e5: cd 9f 88     call $889F
89e8: 3e 10        ld   a,$10
89ea: cd e2 8a     call $8AE2
89ed: 22 7f 8a     ld   ($8A7F),hl
89f0: eb           ex   de,hl
89f1: 21 90 01     ld   hl,$0190
89f4: ed 52        sbc  hl,de
89f6: 22 81 8a     ld   ($8A81),hl
89f9: 2a 7f 8a     ld   hl,($8A7F)
89fc: cb 25        sla  l
89fe: cb 25        sla  l
8a00: cb 25        sla  l
8a02: cb 25        sla  l
8a04: 7d           ld   a,l
8a05: 32 41 8b     ld   ($8B41),a
8a08: 2a 7f 8a     ld   hl,($8A7F)
8a0b: cb 3d        srl  l
8a0d: cb 3d        srl  l
8a0f: cb 3d        srl  l
8a11: cb 3d        srl  l
8a13: cb 24        sla  h
8a15: cb 24        sla  h
8a17: cb 24        sla  h
8a19: cb 24        sla  h
8a1b: 7d           ld   a,l
8a1c: b4           or   h
8a1d: 67           ld   h,a
8a1e: 3a 38 27     ld   a,($2738)
8a21: b7           or   a
8a22: 28 02        jr   z,$8A26
8a24: cb f4        set  6,h
8a26: 7c           ld   a,h
8a27: 32 42 8b     ld   ($8B42),a
8a2a: 2a 81 8a     ld   hl,($8A81)
8a2d: cb 25        sla  l
8a2f: cb 25        sla  l
8a31: cb 25        sla  l
8a33: cb 25        sla  l
8a35: 7d           ld   a,l
8a36: 32 45 8b     ld   ($8B45),a
8a39: 2a 81 8a     ld   hl,($8A81)
8a3c: cb 3d        srl  l
8a3e: cb 3d        srl  l
8a40: cb 3d        srl  l
8a42: cb 3d        srl  l
8a44: cb 24        sla  h
8a46: cb 24        sla  h
8a48: cb 24        sla  h
8a4a: cb 24        sla  h
8a4c: 7d           ld   a,l
8a4d: b4           or   h
8a4e: 67           ld   h,a
8a4f: 3a 38 27     ld   a,($2738)
8a52: b7           or   a
8a53: 28 02        jr   z,$8A57
8a55: cb f4        set  6,h
8a57: 7c           ld   a,h
8a58: 32 46 8b     ld   ($8B46),a
8a5b: 3e 70        ld   a,$70
8a5d: 32 0b 8b     ld   ($8B0B),a
8a60: 3e 08        ld   a,$08
8a62: 32 0c 8b     ld   ($8B0C),a
8a65: 21 3f 8b     ld   hl,$8B3F
8a68: 22 0d 8b     ld   ($8B0D),hl
8a6b: cd 0f 8b     call $8B0F
8a6e: 21 00 00     ld   hl,$0000
8a71: cd e6 12     call $12E6
8a74: 3a 38 27     ld   a,($2738)
8a77: b7           or   a
8a78: cc 9e 88     call z,$889E
8a7b: c4 9e 88     call nz,$889E
8a7e: c9           ret
8a7f: 00           nop
8a80: 00           nop
8a81: 00           nop
8a82: 00           nop
8a83: cd 9f 88     call $889F
8a86: ed 43 b2 8a  ld   ($8AB2),bc
8a8a: ed 53 b4 8a  ld   ($8AB4),de
8a8e: 79           ld   a,c
8a8f: d3 3a        out  ($3A),a
8a91: cb 21        sla  c
8a93: cb 21        sla  c
8a95: cb 21        sla  c
8a97: cb 21        sla  c
8a99: 79           ld   a,c
8a9a: b3           or   e
8a9b: 32 e1 8a     ld   ($8AE1),a
8a9e: cd d4 8a     call $8AD4
8aa1: 21 00 00     ld   hl,$0000
8aa4: cd e6 12     call $12E6
8aa7: 3a 38 27     ld   a,($2738)
8aaa: b7           or   a
8aab: cc 9e 88     call z,$889E
8aae: c4 9e 88     call nz,$889E
8ab1: c9           ret
8ab2: 00           nop
8ab3: 00           nop
8ab4: 00           nop
8ab5: 00           nop
8ab6: db 38        in   a,($38)
8ab8: e6 04        and  $04
8aba: 28 fa        jr   z,$8AB6
8abc: c9           ret
8abd: db 38        in   a,($38)
8abf: e6 01        and  $01
8ac1: 28 fa        jr   z,$8ABD
8ac3: c9           ret
8ac4: cd b6 8a     call $8AB6
8ac7: 3e 0d        ld   a,$0D
8ac9: d3 39        out  ($39),a
8acb: c9           ret
8acc: cd b6 8a     call $8AB6
8acf: 3e 0c        ld   a,$0C
8ad1: d3 39        out  ($39),a
8ad3: c9           ret
8ad4: cd b6 8a     call $8AB6
8ad7: 3e 46        ld   a,$46
8ad9: d3 39        out  ($39),a
8adb: 3a e1 8a     ld   a,($8AE1)
8ade: d3 38        out  ($38),a
8ae0: c9           ret
8ae1: 00           nop
8ae2: 21 00 00     ld   hl,$0000
8ae5: 06 08        ld   b,$08
8ae7: 29           add  hl,hl
8ae8: 07           rlca
8ae9: 30 01        jr   nc,$8AEC
8aeb: 19           add  hl,de
8aec: 05           dec  b
8aed: 20 f8        jr   nz,$8AE7
8aef: c9           ret
8af0: 7c           ld   a,h
8af1: 4d           ld   c,l
8af2: 21 00 00     ld   hl,$0000
8af5: 06 10        ld   b,$10
8af7: cb 11        rl   c
8af9: 17           rla
8afa: ed 6a        adc  hl,hl
8afc: ed 52        sbc  hl,de
8afe: 30 01        jr   nc,$8B01
8b00: 19           add  hl,de
8b01: 3f           ccf
8b02: 10 f3        djnz $8AF7
8b04: cb 11        rl   c
8b06: 17           rla
8b07: eb           ex   de,hl
8b08: 67           ld   h,a
8b09: 69           ld   l,c
8b0a: c9           ret
8b0b: 70           ld   (hl),b
8b0c: 00           nop
8b0d: 3f           ccf
8b0e: 8b           adc  a,e
8b0f: db 38        in   a,($38)
8b11: e6 20        and  $20
8b13: 28 fa        jr   z,$8B0F
8b15: 3a c4 4f     ld   a,($4FC4)
8b18: b7           or   a
8b19: 28 10        jr   z,$8B2B
8b1b: 3a 42 8b     ld   a,($8B42)
8b1e: cb b7        res  6,a
8b20: 32 42 8b     ld   ($8B42),a
8b23: 3a 46 8b     ld   a,($8B46)
8b26: cb b7        res  6,a
8b28: 32 46 8b     ld   ($8B46),a
8b2b: cd b6 8a     call $8AB6
8b2e: 3a 0b 8b     ld   a,($8B0B)
8b31: d3 39        out  ($39),a
8b33: 2a 0d 8b     ld   hl,($8B0D)
8b36: 0e 38        ld   c,$38
8b38: 3a 0c 8b     ld   a,($8B0C)
8b3b: 47           ld   b,a
8b3c: ed b3        otir
8b3e: c9           ret
8b3f: 00           nop
8b40: 00           nop
8b41: 00           nop
8b42: 00           nop
8b43: 00           nop
8b44: 00           nop
8b45: 00           nop
8b46: 00           nop
8b47: 00           nop
8b48: 00           nop
8b49: 00           nop
8b4a: 00           nop
8b4b: 00           nop
8b4c: 00           nop
8b4d: 00           nop
8b4e: 00           nop
8b4f: 00           nop
8b50: 3a c4 4f     ld   a,($4FC4)
8b53: b7           or   a
8b54: 28 08        jr   z,$8B5E
8b56: 3a 73 8b     ld   a,($8B73)
8b59: cb b7        res  6,a
8b5b: 32 73 8b     ld   ($8B73),a
8b5e: cd b6 8a     call $8AB6
8b61: 3e 4c        ld   a,$4C
8b63: d3 39        out  ($39),a
8b65: 21 71 8b     ld   hl,$8B71
8b68: 3a 4f 8b     ld   a,($8B4F)
8b6b: 47           ld   b,a
8b6c: 0e 38        ld   c,$38
8b6e: ed b3        otir
8b70: c9           ret
8b71: 00           nop
8b72: 00           nop
8b73: 00           nop
8b74: 08           ex   af,af'
8b75: 00           nop
8b76: 08           ex   af,af'
8b77: 00           nop
8b78: 00           nop
8b79: 00           nop
8b7a: 00           nop
8b7b: 00           nop
8b7c: 2f           cpl
8b7d: 00           nop
8b7e: b4           or   h
8b7f: 21 b5 21     ld   hl,$21B5
8b82: bc           cp   h
8b83: 2f           cpl
8b84: c5           push bc
8b85: 3f           ccf
8b86: cc 2a cd     call z,$CD2A
8b89: 4f           ld   c,a
8b8a: ce 2a        adc  a,$2A
8b8c: cf           rst  $08
8b8d: 4f           ld   c,a
8b8e: d0           ret  nc
8b8f: 63           ld   h,e
8b90: da 2c db     jp   c,$DB2C
8b93: 21 dc 27     ld   hl,$27DC
8b96: dd 2c        inc  ixl
8b98: de 21        sbc  a,$21
8b9a: df           rst  $18
8b9b: 27           daa
8b9c: e0           ret  po
8b9d: 2a e1 2a     ld   hl,($2AE1)
8ba0: e2 2a e3     jp   po,$E32A
8ba3: 2a e4 2c     ld   hl,($2CE4)
8ba6: e5           push hl
8ba7: 27           daa
8ba8: e6 27        and  $27
8baa: e7           rst  $20
8bab: 27           daa
8bac: e8           ret  pe
8bad: 2d           dec  l
8bae: e9           jp   (hl)
8baf: 21 ea 2d     ld   hl,$2DEA
8bb2: eb           ex   de,hl
8bb3: 2b           dec  hl
8bb4: ec 2d ed     call pe,$ED2D
8bb7: 2d           dec  l
8bb8: ee 2b        xor  $2B
8bba: ef           rst  $28
8bbb: 2d           dec  l
8bbc: f0           ret  p
8bbd: 2a f1 2a     ld   hl,($2AF1)
8bc0: f2 2a f3     jp   p,$F32A
8bc3: 2a f4 2c     ld   hl,($2CF4)
8bc6: f5           push af
8bc7: 27           daa
8bc8: f6 2c        or   $2C
8bca: f7           rst  $30
8bcb: 27           daa
8bcc: f8           ret  m
8bcd: 2d           dec  l
8bce: f9           ld   sp,hl
8bcf: 21 fa 2c     ld   hl,$2CFA
8bd2: fb           ei
8bd3: 21 fc 27     ld   hl,$27FC
8bd6: fd 2c        inc  iyl
8bd8: fe 21        cp   $21
8bda: ff           rst  $38
8bdb: 27           daa
8bdc: 00           nop
8bdd: 01 0c 01     ld   bc,$010C
8be0: 0d           dec  c
8be1: 02           ld   (bc),a
8be2: 0d           dec  c
8be3: 0a           ld   a,(bc)
8be4: 03           inc  bc
8be5: 1b           dec  de
8be6: 33           inc  sp
8be7: 18 02        jr   $8BEB
8be9: 1b           dec  de
8bea: 40           ld   b,b
8beb: 00           nop
8bec: 00           nop
8bed: 50           ld   d,b
8bee: 18 05        jr   $8BF5
8bf0: 1b           dec  de
8bf1: 2a 04 00     ld   hl,($0004)
8bf4: 00           nop
8bf5: 04           inc  b
8bf6: 1b           dec  de
8bf7: 4c           ld   c,h
8bf8: 00           nop
8bf9: 00           nop
8bfa: 00           nop
8bfb: 00           nop
8bfc: 00           nop
8bfd: 00           nop
8bfe: 00           nop
8bff: 00           nop
8c00: 00           nop
8c01: 00           nop
8c02: 00           nop
8c03: 00           nop
8c04: 00           nop
8c05: 00           nop
8c06: 00           nop
8c07: 00           nop
8c08: 00           nop
8c09: 00           nop
8c0a: 00           nop
8c0b: 00           nop
8c0c: 00           nop
8c0d: 00           nop
8c0e: 00           nop
8c0f: 00           nop
8c10: 00           nop
8c11: 00           nop
8c12: 00           nop
8c13: 00           nop
8c14: 5e           ld   e,(hl)
8c15: a1           and  c
8c16: 5e           ld   e,(hl)
8c17: 9c           sbc  a,h
8c18: de 9e        sbc  a,$9E
8c1a: dd e5        push ix
8c1c: fd e5        push iy
8c1e: e5           push hl
8c1f: d5           push de
8c20: c5           push bc
8c21: f5           push af
8c22: 3a 67 f0     ld   a,($F067)
8c25: a7           and  a
8c26: c2 9e 8c     jp   nz,$8C9E
8c29: 3d           dec  a
8c2a: 32 67 f0     ld   ($F067),a
8c2d: 3a 3e 27     ld   a,($273E)
8c30: 47           ld   b,a
8c31: 3a 3d 27     ld   a,($273D)
8c34: a7           and  a
8c35: c2 ac 8c     jp   nz,$8CAC
8c38: 3a 36 27     ld   a,($2736)
8c3b: a7           and  a
8c3c: ca 9a 8c     jp   z,$8C9A
8c3f: fe 03        cp   $03
8c41: dc 27 8d     call c,$8D27
8c44: dc 3f 8d     call c,$8D3F
8c47: fe 09        cp   $09
8c49: ca 70 8c     jp   z,$8C70
8c4c: fe 07        cp   $07
8c4e: 20 0a        jr   nz,$8C5A
8c50: cb 78        bit  7,b
8c52: cc 27 8d     call z,$8D27
8c55: cc 3f 8d     call z,$8D3F
8c58: 18 16        jr   $8C70
8c5a: fe 08        cp   $08
8c5c: 20 0a        jr   nz,$8C68
8c5e: cb 78        bit  7,b
8c60: cc 27 8d     call z,$8D27
8c63: cc 3f 8d     call z,$8D3F
8c66: 18 08        jr   $8C70
8c68: fe 0a        cp   $0A
8c6a: d4 27 8d     call nc,$8D27
8c6d: d4 3f 8d     call nc,$8D3F
8c70: 3a f6 54     ld   a,($54F6)
8c73: a7           and  a
8c74: c4 17 8d     call nz,$8D17
8c77: 78           ld   a,b
8c78: 32 dc 8b     ld   ($8BDC),a
8c7b: cb 6f        bit  5,a
8c7d: 3e 18        ld   a,$18
8c7f: c2 83 8c     jp   nz,$8C83
8c82: 3c           inc  a
8c83: 32 ee 8b     ld   ($8BEE),a
8c86: cd ab 8f     call $8FAB
8c89: cd e3 12     call $12E3
8c8c: e5           push hl
8c8d: cd 45 8d     call $8D45
8c90: e1           pop  hl
8c91: cd e6 12     call $12E6
8c94: cd c8 8f     call $8FC8
8c97: cd b8 8f     call $8FB8
8c9a: 97           sub  a
8c9b: 32 67 f0     ld   ($F067),a
8c9e: 21 66 f0     ld   hl,$F066
8ca1: cb 86        res  0,(hl)
8ca3: f1           pop  af
8ca4: c1           pop  bc
8ca5: d1           pop  de
8ca6: e1           pop  hl
8ca7: fd e1        pop  iy
8ca9: dd e1        pop  ix
8cab: c9           ret
8cac: 11 bd 8c     ld   de,$8CBD
8caf: 01 b5 f2     ld   bc,$F2B5
8cb2: 3e 03        ld   a,$03
8cb4: 21 00 01     ld   hl,$0100
8cb7: cd b5 f2     call $F2B5
8cba: c3 9a 8c     jp   $8C9A
8cbd: c3 a7 12     jp   $12A7
8cc0: c3 c3 8c     jp   $8CC3
8cc3: d5           push de
8cc4: c5           push bc
8cc5: cd db 8c     call $8CDB
8cc8: c1           pop  bc
8cc9: e5           push hl
8cca: 41           ld   b,c
8ccb: 0e 00        ld   c,$00
8ccd: cd 9b f3     call $F39B
8cd0: e1           pop  hl
8cd1: d1           pop  de
8cd2: 01 00 05     ld   bc,$0500
8cd5: cd a5 f3     call $F3A5
8cd8: c9           ret
8cd9: 00           nop
8cda: 00           nop
8cdb: 21 5e 9c     ld   hl,$9C5E
8cde: 22 d9 8c     ld   ($8CD9),hl
8ce1: c5           push bc
8ce2: cd e3 12     call $12E3
8ce5: e3           ex   (sp),hl
8ce6: 2e 00        ld   l,$00
8ce8: 06 50        ld   b,$50
8cea: e5           push hl
8ceb: c5           push bc
8cec: cd e9 12     call $12E9
8cef: cd ff 8c     call $8CFF
8cf2: c1           pop  bc
8cf3: e1           pop  hl
8cf4: 2c           inc  l
8cf5: 10 f3        djnz $8CEA
8cf7: e1           pop  hl
8cf8: cd e6 12     call $12E6
8cfb: 21 5e 9c     ld   hl,$9C5E
8cfe: c9           ret
8cff: eb           ex   de,hl
8d00: 2a d9 8c     ld   hl,($8CD9)
8d03: 23           inc  hl
8d04: 22 d9 8c     ld   ($8CD9),hl
8d07: 2b           dec  hl
8d08: 01 50 00     ld   bc,$0050
8d0b: d9           exx
8d0c: 06 10        ld   b,$10
8d0e: d9           exx
8d0f: 1a           ld   a,(de)
8d10: 77           ld   (hl),a
8d11: 13           inc  de
8d12: 09           add  hl,bc
8d13: d9           exx
8d14: 10 f8        djnz $8D0E
8d16: c9           ret
8d17: cd 3f 8d     call $8D3F
8d1a: cd 3c 8d     call $8D3C
8d1d: cd 42 8d     call $8D42
8d20: cb 40        bit  0,b
8d22: c8           ret  z
8d23: e1           pop  hl
8d24: c3 9a 8c     jp   $8C9A
8d27: cb c0        set  0,b
8d29: c9           ret
8d2a: cb c8        set  1,b
8d2c: c9           ret
8d2d: cb d0        set  2,b
8d2f: c9           ret
8d30: cb d8        set  3,b
8d32: c9           ret
8d33: cb e0        set  4,b
8d35: c9           ret
8d36: cb 80        res  0,b
8d38: c9           ret
8d39: cb 88        res  1,b
8d3b: c9           ret
8d3c: cb 90        res  2,b
8d3e: c9           ret
8d3f: cb 98        res  3,b
8d41: c9           ret
8d42: cb a0        res  4,b
8d44: c9           ret
8d45: 97           sub  a
8d46: 32 ec 8b     ld   ($8BEC),a
8d49: cd 64 8f     call $8F64
8d4c: 97           sub  a
8d4d: 32 eb 8b     ld   ($8BEB),a
8d50: 2a eb 8b     ld   hl,($8BEB)
8d53: cd e9 12     call $12E9
8d56: cd 79 8d     call $8D79
8d59: 21 ed 8b     ld   hl,$8BED
8d5c: 3a eb 8b     ld   a,($8BEB)
8d5f: 3c           inc  a
8d60: 32 eb 8b     ld   ($8BEB),a
8d63: be           cp   (hl)
8d64: c2 50 8d     jp   nz,$8D50
8d67: cd f1 8d     call $8DF1
8d6a: 21 ee 8b     ld   hl,$8BEE
8d6d: 3a ec 8b     ld   a,($8BEC)
8d70: 3c           inc  a
8d71: 32 ec 8b     ld   ($8BEC),a
8d74: be           cp   (hl)
8d75: c2 49 8d     jp   nz,$8D49
8d78: c9           ret
8d79: e5           push hl
8d7a: 16 20        ld   d,$20
8d7c: 97           sub  a
8d7d: b0           or   b
8d7e: c2 82 8d     jp   nz,$8D82
8d81: 42           ld   b,d
8d82: 3a dc 8b     ld   a,($8BDC)
8d85: 5f           ld   e,a
8d86: cb 53        bit  2,e
8d88: 28 06        jr   z,$8D90
8d8a: cb 51        bit  2,c
8d8c: c2 90 8d     jp   nz,$8D90
8d8f: 42           ld   b,d
8d90: cb 63        bit  4,e
8d92: 28 05        jr   z,$8D99
8d94: cb 71        bit  6,c
8d96: 28 01        jr   z,$8D99
8d98: 42           ld   b,d
8d99: cb 43        bit  0,e
8d9b: 28 22        jr   z,$8DBF
8d9d: cb 78        bit  7,b
8d9f: c2 a8 8d     jp   nz,$8DA8
8da2: 78           ld   a,b
8da3: fe 7f        cp   $7F
8da5: fa bf 8d     jp   m,$8DBF
8da8: c5           push bc
8da9: 78           ld   a,b
8daa: ed 4b 7c 8b  ld   bc,($8B7C)
8dae: 21 7e 8b     ld   hl,$8B7E
8db1: ed a1        cpi
8db3: 28 08        jr   z,$8DBD
8db5: 23           inc  hl
8db6: ea b1 8d     jp   pe,$8DB1
8db9: c1           pop  bc
8dba: 42           ld   b,d
8dbb: 18 02        jr   $8DBF
8dbd: c1           pop  bc
8dbe: 46           ld   b,(hl)
8dbf: 2a 14 8c     ld   hl,($8C14)
8dc2: 70           ld   (hl),b
8dc3: 23           inc  hl
8dc4: 71           ld   (hl),c
8dc5: 23           inc  hl
8dc6: 22 14 8c     ld   ($8C14),hl
8dc9: e1           pop  hl
8dca: cb 43        bit  0,e
8dcc: c2 f0 8d     jp   nz,$8DF0
8dcf: cb 59        bit  3,c
8dd1: c2 d4 8d     jp   nz,$8DD4
8dd4: ed 5b 16 8c  ld   de,($8C16)
8dd8: ed 4b 18 8c  ld   bc,($8C18)
8ddc: cd 81 8f     call $8F81
8ddf: 11 08 00     ld   de,$0008
8de2: 2a 16 8c     ld   hl,($8C16)
8de5: 19           add  hl,de
8de6: 22 16 8c     ld   ($8C16),hl
8de9: 2a 18 8c     ld   hl,($8C18)
8dec: 19           add  hl,de
8ded: 22 18 8c     ld   ($8C18),hl
8df0: c9           ret
8df1: 3a dc 8b     ld   a,($8BDC)
8df4: cb 47        bit  0,a
8df6: c2 48 8f     jp   nz,$8F48
8df9: cb 5f        bit  3,a
8dfb: c2 0b 8e     jp   nz,$8E0B
8dfe: cd 5c 8e     call $8E5C
8e01: cd e9 8f     call $8FE9
8e04: cd 6c 8e     call $8E6C
8e07: cd e9 8f     call $8FE9
8e0a: c9           ret
8e0b: cd 5c 8e     call $8E5C
8e0e: cd 2a 8e     call $8E2A
8e11: cd 5c 8e     call $8E5C
8e14: cd 5c 8e     call $8E5C
8e17: cd e9 8f     call $8FE9
8e1a: cd 6c 8e     call $8E6C
8e1d: cd 31 8e     call $8E31
8e20: cd 6c 8e     call $8E6C
8e23: cd 6c 8e     call $8E6C
8e26: cd e9 8f     call $8FE9
8e29: c9           ret
8e2a: dd 21 5e 9c  ld   ix,$9C5E
8e2e: c3 35 8e     jp   $8E35
8e31: dd 21 de 9e  ld   ix,$9EDE
8e35: fd 21 5e a1  ld   iy,$A15E
8e39: 0e 50        ld   c,$50
8e3b: 06 08        ld   b,$08
8e3d: fd 23        inc  iy
8e3f: fd 7e 00     ld   a,(iy+$00)
8e42: fd 23        inc  iy
8e44: 5f           ld   e,a
8e45: 97           sub  a
8e46: cb 5b        bit  3,e
8e48: c2 50 8e     jp   nz,$8E50
8e4b: cb 53        bit  2,e
8e4d: c2 53 8e     jp   nz,$8E53
8e50: dd 77 00     ld   (ix+$00),a
8e53: dd 23        inc  ix
8e55: 10 ef        djnz $8E46
8e57: 0d           dec  c
8e58: c2 3b 8e     jp   nz,$8E3B
8e5b: c9           ret
8e5c: 21 dd 9e     ld   hl,$9EDD
8e5f: cd 59 8f     call $8F59
8e62: 21 5e 9c     ld   hl,$9C5E
8e65: c4 7c 8e     call nz,$8E7C
8e68: cd e2 8f     call $8FE2
8e6b: c9           ret
8e6c: 21 5d a1     ld   hl,$A15D
8e6f: cd 59 8f     call $8F59
8e72: 21 de 9e     ld   hl,$9EDE
8e75: c4 7c 8e     call nz,$8E7C
8e78: cd e2 8f     call $8FE2
8e7b: c9           ret
8e7c: 03           inc  bc
8e7d: 3a 36 27     ld   a,($2736)
8e80: fe 07        cp   $07
8e82: ca b3 8e     jp   z,$8EB3
8e85: fe 08        cp   $08
8e87: ca b3 8e     jp   z,$8EB3
8e8a: ed 43 f3 8b  ld   ($8BF3),bc
8e8e: e5           push hl
8e8f: fe 09        cp   $09
8e91: c2 9c 8e     jp   nz,$8E9C
8e94: 3a dc 8b     ld   a,($8BDC)
8e97: cb 77        bit  6,a
8e99: c2 d4 8e     jp   nz,$8ED4
8e9c: 21 ef 8b     ld   hl,$8BEF
8e9f: cd d5 8f     call $8FD5
8ea2: e1           pop  hl
8ea3: ed 4b f3 8b  ld   bc,($8BF3)
8ea7: 7e           ld   a,(hl)
8ea8: 23           inc  hl
8ea9: cd f0 8f     call $8FF0
8eac: 0b           dec  bc
8ead: 78           ld   a,b
8eae: b1           or   c
8eaf: c2 a7 8e     jp   nz,$8EA7
8eb2: c9           ret
8eb3: e5           push hl
8eb4: c5           push bc
8eb5: 21 a0 00     ld   hl,$00A0
8eb8: 09           add  hl,bc
8eb9: 22 f8 8b     ld   ($8BF8),hl
8ebc: 21 f5 8b     ld   hl,$8BF5
8ebf: cd d5 8f     call $8FD5
8ec2: 01 a0 00     ld   bc,$00A0
8ec5: 97           sub  a
8ec6: cd f0 8f     call $8FF0
8ec9: 0b           dec  bc
8eca: 78           ld   a,b
8ecb: b1           or   c
8ecc: 20 f7        jr   nz,$8EC5
8ece: c1           pop  bc
8ecf: e1           pop  hl
8ed0: cd a7 8e     call $8EA7
8ed3: c9           ret
8ed4: 21 f2 8b     ld   hl,$8BF2
8ed7: 7e           ld   a,(hl)
8ed8: 32 07 8f     ld   ($8F07),a
8edb: 36 27        ld   (hl),$27
8edd: ed 5b f3 8b  ld   de,($8BF3)
8ee1: 2a f3 8b     ld   hl,($8BF3)
8ee4: 19           add  hl,de
8ee5: 22 f3 8b     ld   ($8BF3),hl
8ee8: d5           push de
8ee9: 21 ef 8b     ld   hl,$8BEF
8eec: cd d5 8f     call $8FD5
8eef: d1           pop  de
8ef0: e1           pop  hl
8ef1: 7e           ld   a,(hl)
8ef2: 23           inc  hl
8ef3: e5           push hl
8ef4: d5           push de
8ef5: cd 08 8f     call $8F08
8ef8: d1           pop  de
8ef9: e1           pop  hl
8efa: 1b           dec  de
8efb: 7b           ld   a,e
8efc: b2           or   d
8efd: c2 f1 8e     jp   nz,$8EF1
8f00: 3a 07 8f     ld   a,($8F07)
8f03: 32 f2 8b     ld   ($8BF2),a
8f06: c9           ret
8f07: 00           nop
8f08: 21 fc 8b     ld   hl,$8BFC
8f0b: 57           ld   d,a
8f0c: 0e 80        ld   c,$80
8f0e: 7a           ld   a,d
8f0f: a1           and  c
8f10: ca 18 8f     jp   z,$8F18
8f13: 3e 01        ld   a,$01
8f15: c3 19 8f     jp   $8F19
8f18: 97           sub  a
8f19: 77           ld   (hl),a
8f1a: 23           inc  hl
8f1b: 77           ld   (hl),a
8f1c: 23           inc  hl
8f1d: 77           ld   (hl),a
8f1e: 23           inc  hl
8f1f: cb 09        rrc  c
8f21: 30 eb        jr   nc,$8F0E
8f23: 1e 02        ld   e,$02
8f25: 21 fc 8b     ld   hl,$8BFC
8f28: 06 03        ld   b,$03
8f2a: 0e 80        ld   c,$80
8f2c: 16 00        ld   d,$00
8f2e: 7e           ld   a,(hl)
8f2f: 23           inc  hl
8f30: fe 00        cp   $00
8f32: ca 38 8f     jp   z,$8F38
8f35: 7a           ld   a,d
8f36: b1           or   c
8f37: 57           ld   d,a
8f38: cb 09        rrc  c
8f3a: d2 2e 8f     jp   nc,$8F2E
8f3d: 7a           ld   a,d
8f3e: cd f0 8f     call $8FF0
8f41: 10 e7        djnz $8F2A
8f43: 1d           dec  e
8f44: c2 25 8f     jp   nz,$8F25
8f47: c9           ret
8f48: 21 5e a1     ld   hl,$A15E
8f4b: 06 50        ld   b,$50
8f4d: 7e           ld   a,(hl)
8f4e: 23           inc  hl
8f4f: 23           inc  hl
8f50: cd f0 8f     call $8FF0
8f53: 10 f8        djnz $8F4D
8f55: cd e9 8f     call $8FE9
8f58: c9           ret
8f59: 01 80 02     ld   bc,$0280
8f5c: 97           sub  a
8f5d: ed a9        cpd
8f5f: c0           ret  nz
8f60: ea 5d 8f     jp   pe,$8F5D
8f63: c9           ret
8f64: 21 5e a1     ld   hl,$A15E
8f67: 22 14 8c     ld   ($8C14),hl
8f6a: 21 de 9e     ld   hl,$9EDE
8f6d: 22 18 8c     ld   ($8C18),hl
8f70: 21 5e 9c     ld   hl,$9C5E
8f73: 22 16 8c     ld   ($8C16),hl
8f76: 11 5f 9c     ld   de,$9C5F
8f79: 01 ff 04     ld   bc,$04FF
8f7c: 36 00        ld   (hl),$00
8f7e: ed b0        ldir
8f80: c9           ret
8f81: c5           push bc
8f82: d5           push de
8f83: 06 02        ld   b,$02
8f85: dd e1        pop  ix
8f87: 22 fa 8b     ld   ($8BFA),hl
8f8a: 0e 01        ld   c,$01
8f8c: 16 80        ld   d,$80
8f8e: 2a fa 8b     ld   hl,($8BFA)
8f91: 1e 00        ld   e,$00
8f93: 7e           ld   a,(hl)
8f94: 23           inc  hl
8f95: a1           and  c
8f96: 28 03        jr   z,$8F9B
8f98: 7b           ld   a,e
8f99: b2           or   d
8f9a: 5f           ld   e,a
8f9b: cb 0a        rrc  d
8f9d: 30 f4        jr   nc,$8F93
8f9f: dd 73 00     ld   (ix+$00),e
8fa2: dd 23        inc  ix
8fa4: cb 01        rlc  c
8fa6: 30 e4        jr   nc,$8F8C
8fa8: 10 db        djnz $8F85
8faa: c9           ret
8fab: 3a dc 8b     ld   a,($8BDC)
8fae: cb 47        bit  0,a
8fb0: c0           ret  nz
8fb1: 21 e4 8b     ld   hl,$8BE4
8fb4: cd d5 8f     call $8FD5
8fb7: c9           ret
8fb8: 3a dc 8b     ld   a,($8BDC)
8fbb: cb 47        bit  0,a
8fbd: c0           ret  nz
8fbe: cb 4f        bit  1,a
8fc0: c8           ret  z
8fc1: 21 e8 8b     ld   hl,$8BE8
8fc4: cd d5 8f     call $8FD5
8fc7: c9           ret
8fc8: 3a dc 8b     ld   a,($8BDC)
8fcb: cb 4f        bit  1,a
8fcd: c8           ret  z
8fce: 21 dd 8b     ld   hl,$8BDD
8fd1: cd d5 8f     call $8FD5
8fd4: c9           ret
8fd5: 46           ld   b,(hl)
8fd6: 23           inc  hl
8fd7: 97           sub  a
8fd8: b0           or   b
8fd9: c8           ret  z
8fda: 7e           ld   a,(hl)
8fdb: 23           inc  hl
8fdc: cd f0 8f     call $8FF0
8fdf: 10 f9        djnz $8FDA
8fe1: c9           ret
8fe2: 21 df 8b     ld   hl,$8BDF
8fe5: cd d5 8f     call $8FD5
8fe8: c9           ret
8fe9: 21 e1 8b     ld   hl,$8BE1
8fec: cd d5 8f     call $8FD5
8fef: c9           ret
8ff0: e5           push hl
8ff1: d5           push de
8ff2: c5           push bc
8ff3: 4f           ld   c,a
8ff4: cd a7 12     call $12A7
8ff7: c1           pop  bc
8ff8: d1           pop  de
8ff9: e1           pop  hl
8ffa: c9           ret
8ffb: 79           ld   a,c
8ffc: 32 d4 91     ld   ($91D4),a
8fff: fe 10        cp   $10
9001: d2 e6 90     jp   nc,$90E6
9004: 6f           ld   l,a
9005: 26 00        ld   h,$00
9007: 29           add  hl,hl
9008: 01 1f f6     ld   bc,$F61F
900b: 09           add  hl,bc
900c: 5e           ld   e,(hl)
900d: 23           inc  hl
900e: 56           ld   d,(hl)
900f: 7a           ld   a,d
9010: b7           or   a
9011: ca c5 90     jp   z,$90C5
9014: 21 42 f7     ld   hl,$F742
9017: b7           or   a
9018: ed 52        sbc  hl,de
901a: 20 07        jr   nz,$9023
901c: 3a 35 27     ld   a,($2735)
901f: b7           or   a
9020: ca c5 90     jp   z,$90C5
9023: eb           ex   de,hl
9024: e5           push hl
9025: e5           push hl
9026: dd e1        pop  ix
9028: dd 7e ff     ld   a,(ix-$01)
902b: 32 d3 91     ld   ($91D3),a
902e: dd 66 fb     ld   h,(ix-$05)
9031: dd 6e fa     ld   l,(ix-$06)
9034: cd d2 91     call $91D2
9037: e1           pop  hl
9038: c9           ret
9039: 2a d4 91     ld   hl,($91D4)
903c: 26 00        ld   h,$00
903e: 29           add  hl,hl
903f: 11 1f f6     ld   de,$F61F
9042: 19           add  hl,de
9043: 7e           ld   a,(hl)
9044: 23           inc  hl
9045: 66           ld   h,(hl)
9046: 6f           ld   l,a
9047: e5           push hl
9048: dd e1        pop  ix
904a: dd 66 f5     ld   h,(ix-$0b)
904d: dd 6e f4     ld   l,(ix-$0c)
9050: e9           jp   (hl)
9051: ed 43 d5 91  ld   ($91D5),bc
9055: c9           ret
9056: ed 43 d7 91  ld   ($91D7),bc
905a: c9           ret
905b: 60           ld   h,b
905c: 69           ld   l,c
905d: c9           ret
905e: ed 43 d9 91  ld   ($91D9),bc
9062: c9           ret
9063: 2a d4 91     ld   hl,($91D4)
9066: 26 00        ld   h,$00
9068: 29           add  hl,hl
9069: 11 1f f6     ld   de,$F61F
906c: 19           add  hl,de
906d: 7e           ld   a,(hl)
906e: 23           inc  hl
906f: 66           ld   h,(hl)
9070: 6f           ld   l,a
9071: e5           push hl
9072: dd e1        pop  ix
9074: dd 66 f9     ld   h,(ix-$07)
9077: dd 6e f8     ld   l,(ix-$08)
907a: c3 94 90     jp   $9094
907d: 2a d4 91     ld   hl,($91D4)
9080: 26 00        ld   h,$00
9082: 29           add  hl,hl
9083: 11 1f f6     ld   de,$F61F
9086: 19           add  hl,de
9087: 7e           ld   a,(hl)
9088: 23           inc  hl
9089: 66           ld   h,(hl)
908a: 6f           ld   l,a
908b: e5           push hl
908c: dd e1        pop  ix
908e: dd 66 f7     ld   h,(ix-$09)
9091: dd 6e f6     ld   l,(ix-$0a)
9094: dd 7e ff     ld   a,(ix-$01)
9097: 32 d3 91     ld   ($91D3),a
909a: dd e5        push ix
909c: d1           pop  de
909d: e9           jp   (hl)
909e: cd 01 91     call $9101          ; SUBROUTINE print_error  -- called from retry
90a1: 21 59 91     ld   hl,$9159       ; "Not Ready"
90a4: fe 05        cp   $05
90a6: 28 0a        jr   z,$90B2
90a8: 21 42 91     ld   hl,$9142       ; "Seek Error"
90ab: fe 04        cp   $04
90ad: 28 03        jr   z,$90B2
90af: 21 4d 91     ld   hl,$914D       ; "RD/WR Error"
90b2: cd b1 14     call $14B1          ; print error messages?
90b5: 21 8a 91     ld   hl,$918A       ; "(R)etry/(A)bort/(C)ontinue"
90b8: cd 23 91     call $9123          ; Get keypress?
90bb: fe 41        cp   $41
90bd: c0           ret  nz
90be: af           xor  a
90bf: cd 88 f3     call $F388
90c2: c3 62 00     jp   $0062
90c5: 3a 24 27     ld   a,($2724)
90c8: b7           or   a
90c9: 28 17        jr   z,$90E2
90cb: cd 01 91     call $9101
90ce: 21 63 91     ld   hl,$9163
90d1: cd b1 14     call $14B1
90d4: 21 b1 91     ld   hl,$91B1
90d7: cd 23 91     call $9123
90da: fe 41        cp   $41
90dc: 28 e0        jr   z,$90BE
90de: fe 43        cp   $43
90e0: 20 e3        jr   nz,$90C5
90e2: 21 00 00     ld   hl,$0000
90e5: c9           ret
90e6: 3a 24 27     ld   a,($2724)
90e9: b7           or   a
90ea: 28 f6        jr   z,$90E2
90ec: cd 01 91     call $9101
90ef: 21 70 91     ld   hl,$9170
90f2: cd b1 14     call $14B1
90f5: 21 c7 91     ld   hl,$91C7
90f8: cd 23 91     call $9123
90fb: fe 41        cp   $41
90fd: 28 bf        jr   z,$90BE
90ff: 18 e5        jr   $90E6
9101: f5           push af
9102: 3a d6 02     ld   a,($02D6)
9105: b7           or   a
9106: 28 07        jr   z,$910F
9108: af           xor  a
9109: 32 d6 02     ld   ($02D6),a
910c: 78           ld   a,b
910d: 18 03        jr   $9112
910f: 3a d4 91     ld   a,($91D4)
9112: c6 41        add  a,$41
9114: 32 3d 91     ld   ($913D),a
9117: 21 36 91     ld   hl,$9136
911a: 3e 0b        ld   a,$0B
911c: 0e 00        ld   c,$00
911e: cd ec 12     call $12EC
9121: f1           pop  af
9122: c9           ret
9123: cd b1 14     call $14B1
9126: cd 6a 16     call $166A
9129: cd 69 12     call $1269
912c: f5           push af
912d: 3e 01        ld   a,$01
912f: cd ef 12     call $12EF
9132: f1           pop  af
9133: e6 df        and  $DF
9135: c9           ret
9136: 20 44        jr   nz,$917C
9138: 72           ld   (hl),d
9139: 69           ld   l,c
913a: 76           halt
913b: 65           ld   h,l
913c: 20 41        jr   nz,$917F
913e: 20 2d        jr   nz,$916D
9140: 20 00        jr   nz,$9142
9142: 53           ld   d,e
9143: 65           ld   h,l
9144: 65           ld   h,l
9145: 6b           ld   l,e
9146: 20 45        jr   nz,$918D
9148: 72           ld   (hl),d
9149: 72           ld   (hl),d
914a: 6f           ld   l,a
914b: 72           ld   (hl),d
914c: 00           nop
914d: 52           ld   d,d
914e: 64           ld   h,h
914f: 2f           cpl
9150: 57           ld   d,a
9151: 72           ld   (hl),d
9152: 20 45        jr   nz,$9199
9154: 72           ld   (hl),d
9155: 72           ld   (hl),d
9156: 6f           ld   l,a
9157: 72           ld   (hl),d
9158: 00           nop
9159: 4e           ld   c,(hl)
915a: 6f           ld   l,a
915b: 74           ld   (hl),h
915c: 20 52        jr   nz,$91B0
915e: 65           ld   h,l
915f: 61           ld   h,c
9160: 64           ld   h,h
9161: 79           ld   a,c
9162: 00           nop
9163: 53           ld   d,e
9164: 65           ld   h,l
9165: 6c           ld   l,h
9166: 65           ld   h,l
9167: 63           ld   h,e
9168: 74           ld   (hl),h
9169: 20 45        jr   nz,$91B0
916b: 72           ld   (hl),d
916c: 72           ld   (hl),d
916d: 6f           ld   l,a
916e: 72           ld   (hl),d
916f: 00           nop
9170: 49           ld   c,c
9171: 6c           ld   l,h
9172: 6c           ld   l,h
9173: 65           ld   h,l
9174: 67           ld   h,a
9175: 61           ld   h,c
9176: 6c           ld   l,h
9177: 20 44        jr   nz,$91BD
9179: 72           ld   (hl),d
917a: 69           ld   l,c
917b: 76           halt
917c: 65           ld   h,l
917d: 20 44        jr   nz,$91C3
917f: 65           ld   h,l
9180: 73           ld   (hl),e
9181: 69           ld   l,c
9182: 67           ld   h,a
9183: 6e           ld   l,(hl)
9184: 61           ld   h,c
9185: 74           ld   (hl),h
9186: 69           ld   l,c
9187: 6f           ld   l,a
9188: 6e           ld   l,(hl)
9189: 00           nop
918a: 3a 20 28     ld   a,($2820)
918d: 52           ld   d,d
918e: 29           add  hl,hl
918f: 65           ld   h,l
9190: 74           ld   (hl),h
9191: 72           ld   (hl),d
9192: 79           ld   a,c
9193: 2f           cpl
9194: 28 41        jr   z,$91D7
9196: 29           add  hl,hl
9197: 62           ld   h,d
9198: 6f           ld   l,a
9199: 72           ld   (hl),d
919a: 74           ld   (hl),h
919b: 2f           cpl
919c: 28 43        jr   z,$91E1
919e: 29           add  hl,hl
919f: 6f           ld   l,a
91a0: 6e           ld   l,(hl)
91a1: 74           ld   (hl),h
91a2: 69           ld   l,c
91a3: 6e           ld   l,(hl)
91a4: 75           ld   (hl),l
91a5: 65           ld   h,l
91a6: 2f           cpl
91a7: 28 49        jr   z,$91F2
91a9: 29           add  hl,hl
91aa: 67           ld   h,a
91ab: 6e           ld   l,(hl)
91ac: 6f           ld   l,a
91ad: 72           ld   (hl),d
91ae: 65           ld   h,l
91af: 20 00        jr   nz,$91B1
91b1: 3a 20 28     ld   a,($2820)
91b4: 41           ld   b,c
91b5: 29           add  hl,hl
91b6: 62           ld   h,d
91b7: 6f           ld   l,a
91b8: 72           ld   (hl),d
91b9: 74           ld   (hl),h
91ba: 2f           cpl
91bb: 28 43        jr   z,$9200
91bd: 29           add  hl,hl
91be: 6f           ld   l,a
91bf: 6e           ld   l,(hl)
91c0: 74           ld   (hl),h
91c1: 69           ld   l,c
91c2: 6e           ld   l,(hl)
91c3: 75           ld   (hl),l
91c4: 65           ld   h,l
91c5: 20 00        jr   nz,$91C7
91c7: 3a 20 28     ld   a,($2820)
91ca: 41           ld   b,c
91cb: 29           add  hl,hl
91cc: 62           ld   h,d
91cd: 6f           ld   l,a
91ce: 72           ld   (hl),d
91cf: 74           ld   (hl),h
91d0: 20 00        jr   nz,$91D2
91d2: e9           jp   (hl)
91d3: 00           nop
91d4: 00           nop
91d5: 00           nop
91d6: 00           nop
91d7: 00           nop
91d8: 00           nop
91d9: 00           nop
91da: 00           nop
91db: 00           nop
91dc: 00           nop
91dd: 3a d3 91     ld   a,($91D3)
91e0: fe 02        cp   $02
91e2: 38 0b        jr   c,$91EF
91e4: 3e 05        ld   a,$05
91e6: cd 9e 90     call $909E
91e9: fe 43        cp   $43
91eb: 28 43        jr   z,$9230
91ed: 18 f5        jr   $91E4
91ef: 32 20 98     ld   ($9820),a
91f2: 5f           ld   e,a
91f3: cd a2 92     call $92A2
91f6: 21 4b f6     ld   hl,$F64B
91f9: b7           or   a
91fa: 28 05        jr   z,$9201
91fc: 21 67 f6     ld   hl,$F667
91ff: 18 12        jr   $9213
9201: 01 f0 97     ld   bc,$97F0
9204: ed 43 1c 98  ld   ($981C),bc
9208: 3a 30 98     ld   a,($9830)
920b: b7           or   a
920c: c8           ret  z
920d: af           xor  a
920e: 32 30 98     ld   ($9830),a
9211: 18 10        jr   $9223
9213: 01 a4 f6     ld   bc,$F6A4
9216: ed 43 1c 98  ld   ($981C),bc
921a: 3a 31 98     ld   a,($9831)
921d: b7           or   a
921e: c8           ret  z
921f: af           xor  a
9220: 32 31 98     ld   ($9831),a
9223: 06 00        ld   b,$00
9225: 3a 20 98     ld   a,($9820)
9228: 4f           ld   c,a
9229: e5           push hl
922a: af           xor  a
922b: cd f9 94     call $94F9
922e: e1           pop  hl
922f: c8           ret  z
9230: 21 00 00     ld   hl,$0000
9233: c9           ret
9234: 3a 27 98     ld   a,($9827)
9237: b7           or   a
9238: c2 3e 92     jp   nz,$923E
923b: 32 26 98     ld   ($9826),a
923e: 01 00 00     ld   bc,$0000
9241: ed 43 d5 91  ld   ($91D5),bc
9245: c9           ret
9246: 7b           ld   a,e
9247: b7           or   a
9248: 20 05        jr   nz,$924F
924a: 3a 3e 98     ld   a,($983E)
924d: 5f           ld   e,a
924e: c9           ret
924f: 3a 3f 98     ld   a,($983F)
9252: 5f           ld   e,a
9253: c9           ret
9254: 7b           ld   a,e
9255: b7           or   a
9256: 3e 00        ld   a,$00
9258: 20 04        jr   nz,$925E
925a: 32 3e 98     ld   ($983E),a
925d: c9           ret
925e: 32 3f 98     ld   ($983F),a
9261: c9           ret
9262: 32 3b 98     ld   ($983B),a
9265: 3a 14 98     ld   a,($9814)
9268: b7           or   a
9269: 3a 3b 98     ld   a,($983B)
926c: 20 04        jr   nz,$9272
926e: 1e 01        ld   e,$01
9270: 97           sub  a
9271: c9           ret
9272: 4b           ld   c,e
9273: cd b5 92     call $92B5
9276: 57           ld   d,a
9277: 79           ld   a,c
9278: b7           or   a
9279: 7b           ld   a,e
927a: 20 13        jr   nz,$928F
927c: 32 3e 98     ld   ($983E),a
927f: 3c           inc  a
9280: 28 05        jr   z,$9287
9282: 21 77 f6     ld   hl,$F677
9285: 18 03        jr   $928A
9287: 21 86 f6     ld   hl,$F686
928a: 22 55 f6     ld   ($F655),hl
928d: 7a           ld   a,d
928e: c9           ret
928f: 32 3f 98     ld   ($983F),a
9292: 3c           inc  a
9293: 28 05        jr   z,$929A
9295: 21 95 f6     ld   hl,$F695
9298: 18 03        jr   $929D
929a: 21 b0 f6     ld   hl,$F6B0
929d: 22 71 f6     ld   ($F671),hl
92a0: 7a           ld   a,d
92a1: c9           ret
92a2: f5           push af
92a3: d5           push de
92a4: cd 46 92     call $9246
92a7: 7b           ld   a,e
92a8: b7           or   a
92a9: 20 06        jr   nz,$92B1
92ab: d1           pop  de
92ac: d5           push de
92ad: 97           sub  a
92ae: cd 62 92     call $9262
92b1: d1           pop  de
92b2: f1           pop  af
92b3: c9           ret
92b4: 00           nop
92b5: c5           push bc
92b6: 06 00        ld   b,$00
92b8: cd f9 94     call $94F9
92bb: b7           or   a
92bc: 20 68        jr   nz,$9326
92be: 3e 04        ld   a,$04
92c0: cd a5 96     call $96A5
92c3: b7           or   a
92c4: 20 60        jr   nz,$9326
92c6: 3e 4a        ld   a,$4A
92c8: cd 68 97     call $9768
92cb: 79           ld   a,c
92cc: cd 68 97     call $9768
92cf: cd 4e 97     call $974E
92d2: 3a 33 98     ld   a,($9833)
92d5: cb 57        bit  2,a
92d7: 28 04        jr   z,$92DD
92d9: 3e 03        ld   a,$03
92db: 18 1a        jr   $92F7
92dd: 3a 32 98     ld   a,($9832)
92e0: cb 5f        bit  3,a
92e2: 28 04        jr   z,$92E8
92e4: 3e 05        ld   a,$05
92e6: 18 0f        jr   $92F7
92e8: 3a 35 98     ld   a,($9835)
92eb: fe 04        cp   $04
92ed: 20 04        jr   nz,$92F3
92ef: 1e ff        ld   e,$FF
92f1: 18 32        jr   $9325
92f3: 1e 01        ld   e,$01
92f5: 18 2e        jr   $9325
92f7: 32 b4 92     ld   ($92B4),a
92fa: 3a 3b 98     ld   a,($983B)
92fd: b7           or   a
92fe: 3a b4 92     ld   a,($92B4)
9301: 20 23        jr   nz,$9326
9303: 3e 01        ld   a,$01
9305: 32 d6 02     ld   ($02D6),a
9308: 3a 3c 98     ld   a,($983C)
930b: 47           ld   b,a
930c: 3a b4 92     ld   a,($92B4)
930f: cd 9e 90     call $909E
9312: fe 49        cp   $49
9314: 28 0f        jr   z,$9325
9316: fe 43        cp   $43
9318: 28 e4        jr   z,$92FE
931a: fe 52        cp   $52
931c: 20 e5        jr   nz,$9303
931e: 3a 3b 98     ld   a,($983B)
9321: c1           pop  bc
9322: c3 b5 92     jp   $92B5
9325: 97           sub  a
9326: c1           pop  bc
9327: c9           ret
9328: 3a d5 91     ld   a,($91D5)
932b: fe 02        cp   $02
932d: 30 12        jr   nc,$9341
932f: 3a 20 98     ld   a,($9820)
9332: b7           or   a
9333: 28 06        jr   z,$933B
9335: 3a 37 27     ld   a,($2737)
9338: b7           or   a
9339: 20 06        jr   nz,$9341
933b: dd 21 08 98  ld   ix,$9808
933f: 18 04        jr   $9345
9341: dd 2a 1c 98  ld   ix,($981C)
9345: af           xor  a
9346: 32 28 98     ld   ($9828),a
9349: 3c           inc  a
934a: 32 2e 98     ld   ($982E),a
934d: 32 2d 98     ld   ($982D),a
9350: 3e 02        ld   a,$02
9352: 32 2f 98     ld   ($982F),a
9355: c3 dd 93     jp   $93DD
9358: 3a d5 91     ld   a,($91D5)
935b: fe 02        cp   $02
935d: 30 12        jr   nc,$9371
935f: 3a 20 98     ld   a,($9820)
9362: b7           or   a
9363: 28 06        jr   z,$936B
9365: 3a 37 27     ld   a,($2737)
9368: b7           or   a
9369: 20 06        jr   nz,$9371
936b: dd 21 08 98  ld   ix,$9808
936f: 18 04        jr   $9375
9371: dd 2a 1c 98  ld   ix,($981C)
9375: af           xor  a
9376: 32 2e 98     ld   ($982E),a
9379: 79           ld   a,c
937a: 32 2f 98     ld   ($982F),a
937d: e6 02        and  $02
937f: 28 1a        jr   z,$939B
9381: dd 7e 00     ld   a,(ix+$00)
9384: 32 28 98     ld   ($9828),a
9387: 3a 20 98     ld   a,($9820)
938a: 32 29 98     ld   ($9829),a
938d: ed 4b d5 91  ld   bc,($91D5)
9391: ed 43 2a 98  ld   ($982A),bc
9395: 3a d7 91     ld   a,($91D7)
9398: 32 2c 98     ld   ($982C),a
939b: 3a 28 98     ld   a,($9828)
939e: b7           or   a
939f: 28 34        jr   z,$93D5
93a1: 3d           dec  a
93a2: 32 28 98     ld   ($9828),a
93a5: 3a 20 98     ld   a,($9820)
93a8: 21 29 98     ld   hl,$9829
93ab: be           cp   (hl)
93ac: 20 27        jr   nz,$93D5
93ae: 21 2a 98     ld   hl,$982A
93b1: cd 94 94     call $9494
93b4: 20 1f        jr   nz,$93D5
93b6: 3a d7 91     ld   a,($91D7)
93b9: 21 2c 98     ld   hl,$982C
93bc: be           cp   (hl)
93bd: 20 16        jr   nz,$93D5
93bf: 34           inc  (hl)
93c0: 7e           ld   a,(hl)
93c1: dd be 01     cp   (ix+$01)
93c4: 38 09        jr   c,$93CF
93c6: 36 00        ld   (hl),$00
93c8: 2a 2a 98     ld   hl,($982A)
93cb: 23           inc  hl
93cc: 22 2a 98     ld   ($982A),hl
93cf: af           xor  a
93d0: 32 2d 98     ld   ($982D),a
93d3: 18 08        jr   $93DD
93d5: af           xor  a
93d6: 32 28 98     ld   ($9828),a
93d9: 3c           inc  a
93da: 32 2d 98     ld   ($982D),a
93dd: af           xor  a
93de: 32 16 98     ld   ($9816),a
93e1: dd 7e 02     ld   a,(ix+$02)
93e4: 47           ld   b,a
93e5: b7           or   a
93e6: 3a d7 91     ld   a,($91D7)
93e9: 28 05        jr   z,$93F0
93eb: b7           or   a
93ec: 1f           rra
93ed: 05           dec  b
93ee: 20 fb        jr   nz,$93EB
93f0: 32 25 98     ld   ($9825),a
93f3: 21 26 98     ld   hl,$9826
93f6: 7e           ld   a,(hl)
93f7: 36 01        ld   (hl),$01
93f9: b7           or   a
93fa: 28 26        jr   z,$9422
93fc: 3a 20 98     ld   a,($9820)
93ff: 21 21 98     ld   hl,$9821
9402: be           cp   (hl)
9403: 20 11        jr   nz,$9416
9405: 21 22 98     ld   hl,$9822
9408: cd 94 94     call $9494
940b: 20 09        jr   nz,$9416
940d: 3a 25 98     ld   a,($9825)
9410: 21 24 98     ld   hl,$9824
9413: be           cp   (hl)
9414: 28 28        jr   z,$943E
9416: 3a 27 98     ld   a,($9827)
9419: b7           or   a
941a: c4 b0 94     call nz,$94B0
941d: c0           ret  nz
941e: af           xor  a
941f: 32 27 98     ld   ($9827),a
9422: 3a 20 98     ld   a,($9820)
9425: 32 21 98     ld   ($9821),a
9428: ed 4b d5 91  ld   bc,($91D5)
942c: ed 43 22 98  ld   ($9822),bc
9430: 3a 25 98     ld   a,($9825)
9433: 32 24 98     ld   ($9824),a
9436: 3a 2d 98     ld   a,($982D)
9439: b7           or   a
943a: c4 d1 94     call nz,$94D1
943d: c0           ret  nz
943e: 3a d7 91     ld   a,($91D7)
9441: dd a6 03     and  (ix+$03)
9444: 6f           ld   l,a
9445: 26 00        ld   h,$00
9447: 29           add  hl,hl
9448: 29           add  hl,hl
9449: 29           add  hl,hl
944a: 29           add  hl,hl
944b: 29           add  hl,hl
944c: 29           add  hl,hl
944d: 29           add  hl,hl
944e: 11 70 fd     ld   de,$FD70
9451: 19           add  hl,de
9452: ed 5b d9 91  ld   de,($91D9)
9456: 3a 2e 98     ld   a,($982E)
9459: b7           or   a
945a: 20 06        jr   nz,$9462
945c: 3e 01        ld   a,$01
945e: 32 27 98     ld   ($9827),a
9461: eb           ex   de,hl
9462: 3a 65 f0     ld   a,($F065)
9465: 47           ld   b,a
9466: 3a 2e 98     ld   a,($982E)
9469: b7           or   a
946a: 20 05        jr   nz,$9471
946c: 48           ld   c,b
946d: 06 00        ld   b,$00
946f: 18 02        jr   $9473
9471: 0e 00        ld   c,$00
9473: cd 9b f3     call $F39B
9476: 01 80 00     ld   bc,$0080
9479: cd a5 f3     call $F3A5
947c: 3a 2f 98     ld   a,($982F)
947f: e6 01        and  $01
9481: 3a 16 98     ld   a,($9816)
9484: c8           ret  z
9485: b7           or   a
9486: c0           ret  nz
9487: af           xor  a
9488: 32 27 98     ld   ($9827),a
948b: cd b0 94     call $94B0
948e: c0           ret  nz
948f: af           xor  a
9490: 32 27 98     ld   ($9827),a
9493: c9           ret
9494: eb           ex   de,hl
9495: 21 d5 91     ld   hl,$91D5
9498: 1a           ld   a,(de)
9499: be           cp   (hl)
949a: c0           ret  nz
949b: 13           inc  de
949c: 23           inc  hl
949d: 1a           ld   a,(de)
949e: be           cp   (hl)
949f: c9           ret
94a0: 3a 21 98     ld   a,($9821)
94a3: 4f           ld   c,a
94a4: 3a 22 98     ld   a,($9822)
94a7: 57           ld   d,a
94a8: 3a 24 98     ld   a,($9824)
94ab: 5f           ld   e,a
94ac: 21 70 fd     ld   hl,$FD70
94af: c9           ret
94b0: cd a0 94     call $94A0
94b3: 3a d5 91     ld   a,($91D5)
94b6: fe 02        cp   $02
94b8: 30 10        jr   nc,$94CA
94ba: 3a 20 98     ld   a,($9820)
94bd: b7           or   a
94be: 28 06        jr   z,$94C6
94c0: 3a 37 27     ld   a,($2737)
94c3: b7           or   a
94c4: 20 04        jr   nz,$94CA
94c6: 06 04        ld   b,$04
94c8: 18 02        jr   $94CC
94ca: 06 02        ld   b,$02
94cc: af           xor  a
94cd: cd f9 94     call $94F9
94d0: c9           ret
94d1: cd a0 94     call $94A0
94d4: 3a d5 91     ld   a,($91D5)
94d7: fe 02        cp   $02
94d9: 30 10        jr   nc,$94EB
94db: 3a 20 98     ld   a,($9820)
94de: b7           or   a
94df: 28 06        jr   z,$94E7
94e1: 3a 37 27     ld   a,($2737)
94e4: b7           or   a
94e5: 20 04        jr   nz,$94EB
94e7: 06 03        ld   b,$03
94e9: 18 02        jr   $94ED
94eb: 06 01        ld   b,$01
94ed: af           xor  a
94ee: cd f9 94     call $94F9
94f1: c9           ret
94f2: 3a 27 98     ld   a,($9827)
94f5: b7           or   a
94f6: c8           ret  z
94f7: 18 8e        jr   $9487
94f9: 32 3b 98     ld   ($983B),a
94fc: 3a 1e 98     ld   a,($981E)
94ff: 32 19 98     ld   ($9819),a
9502: af           xor  a
9503: 32 16 98     ld   ($9816),a
9506: e5           push hl
9507: d5           push de
9508: c5           push bc
9509: cd a0 95     call $95A0
950c: c1           pop  bc
950d: d1           pop  de
950e: e1           pop  hl
950f: b7           or   a
9510: c8           ret  z
9511: 32 16 98     ld   ($9816),a
9514: 3a 19 98     ld   a,($9819)
9517: 3d           dec  a
9518: 32 19 98     ld   ($9819),a
951b: 20 e5        jr   nz,$9502
951d: 3a 3b 98     ld   a,($983B)
9520: b7           or   a
9521: 28 08        jr   z,$952B
9523: 3a 3c 98     ld   a,($983C)
9526: 47           ld   b,a
9527: 3a 16 98     ld   a,($9816)
952a: c9           ret
952b: 3a 24 27     ld   a,($2724)
952e: b7           or   a
952f: 28 37        jr   z,$9568
9531: e5           push hl
9532: d5           push de
9533: c5           push bc
9534: 3e 01        ld   a,$01
9536: 32 d6 02     ld   ($02D6),a
9539: 3a 3c 98     ld   a,($983C)
953c: 47           ld   b,a
953d: 3a 16 98     ld   a,($9816)
9540: fe 05        cp   $05
9542: 28 17        jr   z,$955B
9544: cd 9e 90     call $909E
9547: fe 49        cp   $49
9549: 28 17        jr   z,$9562
954b: fe 43        cp   $43
954d: 28 0c        jr   z,$955B
954f: fe 52        cp   $52
9551: 20 e1        jr   nz,$9534
9553: c1           pop  bc
9554: d1           pop  de
9555: e1           pop  hl
9556: 3a 3b 98     ld   a,($983B)
9559: 18 9e        jr   $94F9
955b: 3e 01        ld   a,$01
955d: b7           or   a
955e: c1           pop  bc
955f: d1           pop  de
9560: e1           pop  hl
9561: c9           ret
9562: af           xor  a
9563: 32 16 98     ld   ($9816),a
9566: 18 f6        jr   $955E
9568: 3e 01        ld   a,$01
956a: b7           or   a
956b: c9           ret
956c: 3a 3b 98     ld   a,($983B)
956f: b7           or   a
9570: 20 20        jr   nz,$9592
9572: 3a 24 27     ld   a,($2724)
9575: b7           or   a
9576: 20 05        jr   nz,$957D
9578: e1           pop  hl
9579: e1           pop  hl
957a: c3 68 95     jp   $9568
957d: 3e 01        ld   a,$01
957f: 32 d6 02     ld   ($02D6),a
9582: 3a 3c 98     ld   a,($983C)
9585: 47           ld   b,a
9586: 3e 05        ld   a,$05
9588: cd 9e 90     call $909E
958b: fe 52        cp   $52
958d: c8           ret  z
958e: fe 43        cp   $43
9590: 20 eb        jr   nz,$957D
9592: e1           pop  hl
9593: e1           pop  hl
9594: 3e 01        ld   a,$01
9596: 32 19 98     ld   ($9819),a
9599: 3a 3c 98     ld   a,($983C)
959c: 47           ld   b,a
959d: 3e 05        ld   a,$05
959f: c9           ret
95a0: ed 43 db 91  ld   ($91DB),bc
95a4: 79           ld   a,c
95a5: b7           or   a
95a6: 20 08        jr   nz,$95B0
95a8: 3a c9 9e     ld   a,($9EC9)
95ab: 32 3c 98     ld   ($983C),a
95ae: 18 06        jr   $95B6
95b0: 3a ca 9e     ld   a,($9ECA)
95b3: 32 3c 98     ld   ($983C),a
95b6: 78           ld   a,b
95b7: b7           or   a
95b8: ca b9 97     jp   z,$97B9
95bb: fe 03        cp   $03
95bd: 20 06        jr   nz,$95C5
95bf: dd 21 08 98  ld   ix,$9808
95c3: 18 1b        jr   $95E0
95c5: fe 04        cp   $04
95c7: 20 0b        jr   nz,$95D4
95c9: dd 21 08 98  ld   ix,$9808
95cd: 3e 02        ld   a,$02
95cf: 32 dc 91     ld   ($91DC),a
95d2: 18 0c        jr   $95E0
95d4: af           xor  a
95d5: b1           or   c
95d6: dd 21 f0 97  ld   ix,$97F0
95da: 28 04        jr   z,$95E0
95dc: dd 21 a4 f6  ld   ix,$F6A4
95e0: af           xor  a
95e1: 32 15 98     ld   ($9815),a
95e4: dd be 0a     cp   (ix+$0a)
95e7: 28 12        jr   z,$95FB
95e9: 7a           ld   a,d
95ea: dd 96 0b     sub  (ix+$0b)
95ed: 38 18        jr   c,$9607
95ef: 57           ld   d,a
95f0: 3e 27        ld   a,$27
95f2: 92           sub  d
95f3: 57           ld   d,a
95f4: 3e 01        ld   a,$01
95f6: 32 15 98     ld   ($9815),a
95f9: 18 0c        jr   $9607
95fb: 7b           ld   a,e
95fc: dd 96 04     sub  (ix+$04)
95ff: 38 06        jr   c,$9607
9601: 5f           ld   e,a
9602: 3e 01        ld   a,$01
9604: 32 15 98     ld   ($9815),a
9607: 1c           inc  e
9608: 22 1a 98     ld   ($981A),hl
960b: ed 53 17 98  ld   ($9817),de
960f: cd c8 96     call $96C8
9612: c0           ret  nz
9613: cd 78 96     call $9678
9616: c0           ret  nz
9617: 3a dc 91     ld   a,($91DC)
961a: fe 02        cp   $02
961c: 28 07        jr   z,$9625
961e: cd 23 97     call $9723
9621: 3e 46        ld   a,$46
9623: 18 05        jr   $962A
9625: cd 49 97     call $9749
9628: 3e 45        ld   a,$45
962a: cd 68 97     call $9768
962d: 3a db 91     ld   a,($91DB)
9630: 4f           ld   c,a
9631: 3a 15 98     ld   a,($9815)
9634: b7           or   a
9635: 28 02        jr   z,$9639
9637: cb d1        set  2,c
9639: 79           ld   a,c
963a: cd 68 97     call $9768
963d: 3a 18 98     ld   a,($9818)
9640: cd 68 97     call $9768
9643: 3a 15 98     ld   a,($9815)
9646: cd 68 97     call $9768
9649: 3a 17 98     ld   a,($9817)
964c: cd 68 97     call $9768
964f: dd 7e 06     ld   a,(ix+$06)
9652: cd 68 97     call $9768
9655: dd 7e 04     ld   a,(ix+$04)
9658: cd 68 97     call $9768
965b: dd 7e 05     ld   a,(ix+$05)
965e: cd 68 97     call $9768
9661: 3e ff        ld   a,$FF
9663: cd 68 97     call $9768
9666: cd 89 97     call $9789
9669: af           xor  a
966a: d3 4d        out  ($4D),a
966c: cd 4e 97     call $974E
966f: 3a 32 98     ld   a,($9832)
9672: e6 c0        and  $C0
9674: c8           ret  z
9675: 3e 03        ld   a,$03
9677: c9           ret
9678: d5           push de
9679: e5           push hl
967a: 3a 3d 98     ld   a,($983D)
967d: b7           or   a
967e: c4 b9 97     call nz,$97B9
9681: 3a db 91     ld   a,($91DB)
9684: 5f           ld   e,a
9685: cd a2 92     call $92A2
9688: 3a 14 98     ld   a,($9814)
968b: b7           or   a
968c: 3a 18 98     ld   a,($9818)
968f: 28 0e        jr   z,$969F
9691: 3a db 91     ld   a,($91DB)
9694: 5f           ld   e,a
9695: cd 46 92     call $9246
9698: 1c           inc  e
9699: 3a 18 98     ld   a,($9818)
969c: 28 01        jr   z,$969F
969e: 87           add  a,a
969f: cd a5 96     call $96A5
96a2: e1           pop  hl
96a3: d1           pop  de
96a4: c9           ret
96a5: c5           push bc
96a6: 4f           ld   c,a
96a7: e6 01        and  $01
96a9: 47           ld   b,a
96aa: 3a db 91     ld   a,($91DB)
96ad: b7           or   a
96ae: 20 04        jr   nz,$96B4
96b0: 78           ld   a,b
96b1: 32 40 98     ld   ($9840),a
96b4: 3e 0f        ld   a,$0F
96b6: cd 68 97     call $9768
96b9: 3a db 91     ld   a,($91DB)
96bc: cd 68 97     call $9768
96bf: 79           ld   a,c
96c0: cd 68 97     call $9768
96c3: cd 0d 97     call $970D
96c6: c1           pop  bc
96c7: c9           ret
96c8: db 30        in   a,($30)
96ca: d3 30        out  ($30),a
96cc: e6 02        and  $02
96ce: 28 03        jr   z,$96D3
96d0: cd f8 96     call $96F8
96d3: 3e 04        ld   a,$04
96d5: cd 68 97     call $9768
96d8: 3a db 91     ld   a,($91DB)
96db: cd 68 97     call $9768
96de: cd 4e 97     call $974E
96e1: 3a 32 98     ld   a,($9832)
96e4: e6 20        and  $20
96e6: ee 20        xor  $20
96e8: c8           ret  z
96e9: cd 6c 95     call $956C
96ec: db 30        in   a,($30)
96ee: d3 30        out  ($30),a
96f0: cd f8 96     call $96F8
96f3: cd c9 97     call $97C9
96f6: 18 db        jr   $96D3
96f8: 11 a0 00     ld   de,$00A0
96fb: 3a 14 98     ld   a,($9814)
96fe: b7           or   a
96ff: 28 03        jr   z,$9704
9701: 11 a0 00     ld   de,$00A0
9704: cd 73 97     call $9773
9707: 1b           dec  de
9708: 7a           ld   a,d
9709: b3           or   e
970a: 20 f8        jr   nz,$9704
970c: c9           ret
970d: 3e 08        ld   a,$08
970f: cd 68 97     call $9768
9712: cd 4e 97     call $974E
9715: 3a 32 98     ld   a,($9832)
9718: cb 6f        bit  5,a
971a: 28 f1        jr   z,$970D
971c: e6 10        and  $10
971e: c8           ret  z
971f: 3e 04        ld   a,$04
9721: b7           or   a
9722: c9           ret
9723: 01 44 60     ld   bc,$6044
9726: af           xor  a
9727: d3 4d        out  ($4D),a
9729: 79           ld   a,c
972a: d3 4b        out  ($4B),a
972c: 3a 1a 98     ld   a,($981A)
972f: d3 40        out  ($40),a
9731: 3a 1b 98     ld   a,($981B)
9734: d3 40        out  ($40),a
9736: dd 7e 07     ld   a,(ix+$07)
9739: d3 41        out  ($41),a
973b: dd 7e 08     ld   a,(ix+$08)
973e: d3 41        out  ($41),a
9740: 78           ld   a,b
9741: d3 48        out  ($48),a
9743: 3e 0e        ld   a,$0E
9745: d3 4f        out  ($4F),a
9747: af           xor  a
9748: c9           ret
9749: 01 48 40     ld   bc,$4048
974c: 18 d8        jr   $9726
974e: f5           push af
974f: c5           push bc
9750: e5           push hl
9751: 21 32 98     ld   hl,$9832
9754: 0e 35        ld   c,$35
9756: db 34        in   a,($34)
9758: cb 7f        bit  7,a
975a: 28 fa        jr   z,$9756
975c: cb 77        bit  6,a
975e: 20 04        jr   nz,$9764
9760: e1           pop  hl
9761: c1           pop  bc
9762: f1           pop  af
9763: c9           ret
9764: ed a2        ini
9766: 18 ee        jr   $9756
9768: c5           push bc
9769: 4f           ld   c,a
976a: cd 7e 97     call $977E
976d: 79           ld   a,c
976e: d3 35        out  ($35),a
9770: af           xor  a
9771: c1           pop  bc
9772: c9           ret
9773: d5           push de
9774: 11 9a 02     ld   de,$029A
9777: 1b           dec  de
9778: 7a           ld   a,d
9779: b3           or   e
977a: 20 fb        jr   nz,$9777
977c: d1           pop  de
977d: c9           ret
977e: db 34        in   a,($34)
9780: cb 7f        bit  7,a
9782: 28 fa        jr   z,$977E
9784: cb 77        bit  6,a
9786: 20 f6        jr   nz,$977E
9788: c9           ret
9789: db 34        in   a,($34)
978b: cb 7f        bit  7,a
978d: 28 fa        jr   z,$9789
978f: cb 77        bit  6,a
9791: 28 f6        jr   z,$9789
9793: c9           ret
9794: 3e 03        ld   a,$03
9796: d3 17        out  ($17),a
9798: db 34        in   a,($34)
979a: e6 10        and  $10
979c: 20 f6        jr   nz,$9794
979e: db 34        in   a,($34)
97a0: e6 0f        and  $0F
97a2: 20 f0        jr   nz,$9794
97a4: 3e 03        ld   a,$03
97a6: d3 35        out  ($35),a
97a8: cd 7e 97     call $977E
97ab: 3e ef        ld   a,$EF
97ad: d3 35        out  ($35),a
97af: cd 7e 97     call $977E
97b2: 3e 12        ld   a,$12
97b4: d3 35        out  ($35),a
97b6: c3 7e 97     jp   $977E
97b9: af           xor  a
97ba: 32 3d 98     ld   ($983D),a
97bd: 3a 14 98     ld   a,($9814)
97c0: b7           or   a
97c1: c4 94 97     call nz,$9794
97c4: cd c8 96     call $96C8
97c7: b7           or   a
97c8: c0           ret  nz
97c9: 3e 07        ld   a,$07
97cb: cd 68 97     call $9768
97ce: 3a db 91     ld   a,($91DB)
97d1: cd 68 97     call $9768
97d4: cd 0d 97     call $970D
97d7: c8           ret  z
97d8: f5           push af
97d9: 3a 14 98     ld   a,($9814)
97dc: b7           or   a
97dd: 28 0f        jr   z,$97EE
97df: f1           pop  af
97e0: 3e 07        ld   a,$07
97e2: cd 68 97     call $9768
97e5: 3a db 91     ld   a,($91DB)
97e8: cd 68 97     call $9768
97eb: c3 0d 97     jp   $970D
97ee: f1           pop  af
97ef: c9           ret
97f0: 10 50        djnz $9842
97f2: 02           ld   (bc),a
97f3: 03           inc  bc
97f4: 0a           ld   a,(bc)
97f5: 0f           rrca
97f6: 02           ld   (bc),a
97f7: ff           rst  $38
97f8: 01 04 00     ld   bc,$0004
97fb: 28 10        jr   z,$980D
97fd: 50           ld   d,b
97fe: 02           ld   (bc),a
97ff: 03           inc  bc
9800: 0a           ld   a,(bc)
9801: 0f           rrca
9802: 02           ld   (bc),a
9803: ff           rst  $38
9804: 01 04 00     ld   bc,$0004
9807: 50           ld   d,b
9808: 10 40        djnz $984A
980a: 01 01 10     ld   bc,$1001
980d: 23           inc  hl
980e: 01 ff 00     ld   bc,$00FF
9811: 04           inc  b
9812: 00           nop
9813: 28 00        jr   z,$9815
9815: 00           nop
9816: 00           nop
9817: 00           nop
9818: 00           nop
9819: 00           nop
981a: 00           nop
981b: 00           nop
981c: 00           nop
981d: 00           nop
981e: 05           dec  b
981f: 00           nop
9820: 00           nop
9821: 00           nop
9822: 00           nop
9823: 00           nop
9824: 00           nop
9825: 00           nop
9826: 00           nop
9827: 00           nop
9828: 00           nop
9829: 00           nop
982a: 00           nop
982b: 00           nop
982c: 00           nop
982d: 00           nop
982e: 00           nop
982f: 00           nop
9830: ff           rst  $38
9831: ff           rst  $38
9832: 00           nop
9833: 00           nop
9834: 00           nop
9835: 00           nop
9836: 00           nop
9837: 00           nop
9838: 00           nop
9839: 00           nop
983a: 00           nop
983b: 00           nop
983c: 00           nop
983d: ff           rst  $38
983e: 00           nop
983f: 00           nop
9840: 00           nop
9841: 3a d3 91     ld   a,($91D3)
9844: 32 ce 9a     ld   ($9ACE),a
9847: c9           ret
9848: 22 d0 9a     ld   ($9AD0),hl     ; Read sector log drive 0, HL=<10 bits cyl><2 bits head>
984b: 32 d2 9a     ld   ($9AD2),a      ; A=<sector>
984e: af           xor  a
984f: 32 cf 9a     ld   ($9ACF),a      ; Logical Drive 0
9852: cd b1 99     call $99B1          ; Call Read
9855: 21 00 de     ld   hl,$DE00       ; return HL = addr of sector buffer
9858: c9           ret
9859: 22 d0 9a     ld   ($9AD0),hl     ; Write sector log drive 0, HL=<10 bits cyl><2 bits head>
985c: 32 d2 9a     ld   ($9AD2),a      ; A=<sector>
985f: af           xor  a
9860: 32 cf 9a     ld   ($9ACF),a      ; Logical Drive 0
9863: cd ff 99     call $99FF          ; Call Write
9866: 21 00 de     ld   hl,$DE00       ; return HL = addr of sector buffer
9869: c9           ret
986a: 3a d5 9a     ld   a,($9AD5)
986d: b7           or   a
986e: 20 03        jr   nz,$9873
9870: 32 d4 9a     ld   ($9AD4),a
9873: 01 00 00     ld   bc,$0000
9876: ed 43 d5 91  ld   ($91D5),bc
987a: c9           ret
987b: af           xor  a
987c: 32 d6 9a     ld   ($9AD6),a
987f: 3c           inc  a
9880: 32 dd 9a     ld   ($9ADD),a
9883: 32 dc 9a     ld   ($9ADC),a
9886: 3c           inc  a
9887: 32 de 9a     ld   ($9ADE),a
988a: c3 f8 98     jp   $98F8
988d: af           xor  a
988e: 32 dd 9a     ld   ($9ADD),a
9891: 79           ld   a,c
9892: 32 de 9a     ld   ($9ADE),a
9895: fe 02        cp   $02
9897: c2 b1 98     jp   nz,$98B1
989a: 3e 10        ld   a,$10
989c: 32 d6 9a     ld   ($9AD6),a
989f: 3a ce 9a     ld   a,($9ACE)
98a2: 32 d7 9a     ld   ($9AD7),a
98a5: 2a d5 91     ld   hl,($91D5)
98a8: 22 d8 9a     ld   ($9AD8),hl
98ab: 3a d7 91     ld   a,($91D7)
98ae: 32 da 9a     ld   ($9ADA),a
98b1: 3a d6 9a     ld   a,($9AD6)
98b4: b7           or   a
98b5: ca f0 98     jp   z,$98F0
98b8: 3d           dec  a
98b9: 32 d6 9a     ld   ($9AD6),a
98bc: 3a ce 9a     ld   a,($9ACE)
98bf: 21 d7 9a     ld   hl,$9AD7
98c2: be           cp   (hl)
98c3: c2 f0 98     jp   nz,$98F0
98c6: 21 d8 9a     ld   hl,$9AD8
98c9: cd a5 99     call $99A5
98cc: c2 f0 98     jp   nz,$98F0
98cf: 3a d7 91     ld   a,($91D7)
98d2: 21 da 9a     ld   hl,$9ADA
98d5: be           cp   (hl)
98d6: c2 f0 98     jp   nz,$98F0
98d9: 34           inc  (hl)
98da: 7e           ld   a,(hl)
98db: fe 40        cp   $40
98dd: da e9 98     jp   c,$98E9
98e0: 36 00        ld   (hl),$00
98e2: 2a d8 9a     ld   hl,($9AD8)
98e5: 23           inc  hl
98e6: 22 d8 9a     ld   ($9AD8),hl
98e9: af           xor  a
98ea: 32 dc 9a     ld   ($9ADC),a
98ed: c3 f8 98     jp   $98F8
98f0: af           xor  a
98f1: 32 d6 9a     ld   ($9AD6),a
98f4: 3c           inc  a
98f5: 32 dc 9a     ld   ($9ADC),a
98f8: af           xor  a
98f9: 32 db 9a     ld   ($9ADB),a
98fc: 3a d7 91     ld   a,($91D7)
98ff: b7           or   a
9900: 1f           rra
9901: b7           or   a
9902: 1f           rra
9903: 32 d3 9a     ld   ($9AD3),a
9906: 21 d4 9a     ld   hl,$9AD4
9909: 7e           ld   a,(hl)
990a: 36 01        ld   (hl),$01
990c: b7           or   a
990d: ca 34 99     jp   z,$9934
9910: 3a ce 9a     ld   a,($9ACE)
9913: 21 cf 9a     ld   hl,$9ACF
9916: be           cp   (hl)
9917: c2 2d 99     jp   nz,$992D
991a: 21 d0 9a     ld   hl,$9AD0
991d: cd a5 99     call $99A5
9920: c2 2d 99     jp   nz,$992D
9923: 3a d3 9a     ld   a,($9AD3)
9926: 21 d2 9a     ld   hl,$9AD2
9929: be           cp   (hl)
992a: ca 51 99     jp   z,$9951
992d: 3a d5 9a     ld   a,($9AD5)
9930: b7           or   a
9931: c4 ff 99     call nz,$99FF
9934: 3a ce 9a     ld   a,($9ACE)
9937: 32 cf 9a     ld   ($9ACF),a
993a: 2a d5 91     ld   hl,($91D5)
993d: 22 d0 9a     ld   ($9AD0),hl
9940: 3a d3 9a     ld   a,($9AD3)
9943: 32 d2 9a     ld   ($9AD2),a
9946: 3a dc 9a     ld   a,($9ADC)
9949: b7           or   a
994a: c4 b1 99     call nz,$99B1
994d: af           xor  a
994e: 32 d5 9a     ld   ($9AD5),a
9951: 3a d7 91     ld   a,($91D7)
9954: e6 03        and  $03
9956: 6f           ld   l,a
9957: 26 00        ld   h,$00
9959: 29           add  hl,hl
995a: 29           add  hl,hl
995b: 29           add  hl,hl
995c: 29           add  hl,hl
995d: 29           add  hl,hl
995e: 29           add  hl,hl
995f: 29           add  hl,hl
9960: 11 00 de     ld   de,$DE00
9963: 19           add  hl,de
9964: ed 5b d9 91  ld   de,($91D9)
9968: 3a dd 9a     ld   a,($9ADD)
996b: b7           or   a
996c: c2 74 99     jp   nz,$9974
996f: 3c           inc  a
9970: 32 d5 9a     ld   ($9AD5),a
9973: eb           ex   de,hl
9974: 3a 65 f0     ld   a,($F065)
9977: 47           ld   b,a
9978: 3a dd 9a     ld   a,($9ADD)
997b: b7           or   a
997c: c2 84 99     jp   nz,$9984
997f: 48           ld   c,b
9980: 06 00        ld   b,$00
9982: 18 02        jr   $9986
9984: 0e 00        ld   c,$00
9986: cd 9b f3     call $F39B
9989: 01 80 00     ld   bc,$0080
998c: cd a5 f3     call $F3A5
998f: 3a de 9a     ld   a,($9ADE)
9992: fe 01        cp   $01
9994: 3a db 9a     ld   a,($9ADB)
9997: c0           ret  nz
9998: b7           or   a
9999: c0           ret  nz
999a: af           xor  a
999b: 32 d5 9a     ld   ($9AD5),a
999e: cd ff 99     call $99FF
99a1: 3a db 9a     ld   a,($9ADB)
99a4: c9           ret
99a5: 3a d5 91     ld   a,($91D5)
99a8: be           cp   (hl)
99a9: c0           ret  nz
99aa: 23           inc  hl
99ab: 3a d6 91     ld   a,($91D6)
99ae: be           cp   (hl)
99af: 23           inc  hl
99b0: c9           ret
99b1: af           xor  a              ; Entry point for Read sector?
99b2: 32 db 9a     ld   ($9ADB),a
99b5: ed 5b d0 9a  ld   de,($9AD0)
99b9: 2a e1 9a     ld   hl,($9AE1)
99bc: b7           or   a
99bd: ed 52        sbc  hl,de
99bf: d2 c6 99     jp   nc,$99C6
99c2: 3e 01        ld   a,$01
99c4: 18 31        jr   $99F7
99c6: cd 5f 9a     call $9A5F          ; Call Seek
99c9: 3e 20        ld   a,$20          
99cb: d3 87        out  ($87),a        ; HDD Exec CMD - Read Sector
99cd: 21 00 de     ld   hl,$DE00       ; Destination address to DE00
99d0: 01 80 00     ld   bc,$0080       ; Read 256 bytes at a time from port 80
99d3: db 87        in   a,($87)        ; Read Status
99d5: b7           or   a
99d6: fa d3 99     jp   m,$99D3        ; Loop while busy bit set
99d9: ed b2        inir                ; read 256 bytes from port 80 and write to [hl]
99db: ed b2        inir                ; read 256 bytes from port 80 and write to [hl]
99dd: 47           ld   b,a
99de: 3e 30        ld   a,$30
99e0: d3 86        out  ($86),a        ; select drive 3?
99e2: 78           ld   a,b
99e3: e6 01        and  $01
99e5: c8           ret  z              ; Return
99e6: 3a cc 9a     ld   a,($9ACC)
99e9: b7           or   a
99ea: 78           ld   a,b
99eb: 28 0a        jr   z,$99F7
99ed: af           xor  a
99ee: 32 cc 9a     ld   ($9ACC),a
99f1: db 81        in   a,($81)
99f3: e6 10        and  $10
99f5: 78           ld   a,b
99f6: c0           ret  nz
99f7: e6 01        and  $01
99f9: cd 3a 9a     call $9A3A
99fc: c3 b1 99     jp   $99B1
99ff: af           xor  a             ; Entry point for Write sector?
9a00: 32 db 9a     ld   ($9ADB),a
9a03: ed 5b d0 9a  ld   de,($9AD0)
9a07: 2a e1 9a     ld   hl,($9AE1)
9a0a: b7           or   a
9a0b: ed 52        sbc  hl,de
9a0d: d2 14 9a     jp   nc,$9A14
9a10: 3e 01        ld   a,$01
9a12: 18 20        jr   $9A34
9a14: cd 5f 9a     call $9A5F        ; Call Seek
9a17: 3e 30        ld   a,$30
9a19: d3 87        out  ($87),a      ; HDD Exec CMD - Write Sector
9a1b: 21 00 de     ld   hl,$DE00     ; Source address from DE00
9a1e: 01 80 00     ld   bc,$0080     ; Read 256 bytes at a time from port 80
9a21: ed b3        otir              ; write 256 bytes to port 80 from [hl]
9a23: ed b3        otir              ; write 256 bytes to port 80 from [hl]
9a25: db 87        in   a,($87)      ; Read Status
9a27: b7           or   a
9a28: fa 25 9a     jp   m,$9A25      ; Loop while busy bit set
9a2b: 47           ld   b,a
9a2c: 3e 30        ld   a,$30
9a2e: d3 86        out  ($86),a      ; select drive 3?
9a30: 78           ld   a,b
9a31: e6 01        and  $01
9a33: c8           ret  z
9a34: cd 3a 9a     call $9A3A
9a37: c3 ff 99     jp   $99FF
9a3a: 47           ld   b,a
9a3b: 32 db 9a     ld   ($9ADB),a
9a3e: 3a 24 27     ld   a,($2724)
9a41: b7           or   a
9a42: 78           ld   a,b
9a43: 28 12        jr   z,$9A57
9a45: cd 9e 90     call $909E
9a48: fe 52        cp   $52
9a4a: c8           ret  z
9a4b: fe 49        cp   $49
9a4d: ca 59 9a     jp   z,$9A59
9a50: fe 43        cp   $43
9a52: c2 45 9a     jp   nz,$9A45
9a55: 3e 01        ld   a,$01
9a57: e1           pop  hl
9a58: c9           ret
9a59: e1           pop  hl
9a5a: af           xor  a
9a5b: 32 db 9a     ld   ($9ADB),a
9a5e: c9           ret
9a5f: 3e a0        ld   a,$A0          ; SUBROUTINE - check_ready and seek
9a61: d3 86        out  ($86),a        ; Set SDH to Master, Head0
9a63: 47           ld   b,a            ; b = A0
9a64: 2f           cpl                 ; Invert a, a is now 5F
9a65: d3 84        out  ($84),a        ; Cylinder Number Low, set to 5F
9a67: db 86        in   a,($86)        ; Read back the SDH register
9a69: b8           cp   b              ; Did it change?
9a6a: c2 c2 9a     jp   nz,$9AC2       ; Yes - Retry
9a6d: db 87        in   a,($87)        ; Read Status
9a6f: e6 c0        and  $C0            ; Mask Busy and ready bits
9a71: fe 40        cp   $40            ; Is drive ready and not busy?
9a73: c2 c2 9a     jp   nz,$9AC2       ; No - Retry
9a76: 2a d0 9a     ld   hl,($9AD0)
9a79: ed 5b df 9a  ld   de,($9ADF)
9a7d: 19           add  hl,de
9a7e: 3a cf 9a     ld   a,($9ACF)      ; Physical drive number and logical drive number
9a81: 1f           rra
9a82: d2 8a 9a     jp   nc,$9A8A       ; If logical drive 0, then jump around
9a85: ed 5b e1 9a  ld   de,($9AE1)     ; de = $0264
9a89: 19           add  hl,de          ; If logical drive 1, then increase cylinder by $0264
9a8a: 7d           ld   a,l
9a8b: e6 03        and  $03            ; Only four heads maximum?
9a8d: 47           ld   b,a            ; b now has the head
9a8e: 3a cf 9a     ld   a,($9ACF)      ; Physical drive number and logical drive number
9a91: 0f           rrca                ; Rotate the logical drive number off the end
9a92: 87           add  a,a
9a93: 87           add  a,a
9a94: 87           add  a,a            ; Shift drive number left 3 times
9a95: f6 a0        or   $A0
9a97: b0           or   b
9a98: d3 86        out  ($86),a        ; Secsize/Drive/Head select
9a9a: 3a d2 9a     ld   a,($9AD2)
9a9d: d3 83        out  ($83),a        ; Sector number ; FIXME - sector number
9a9f: 7d           ld   a,l
9aa0: 1f           rra
9aa1: 1f           rra                 ; Shift out the head
9aa2: e6 3f        and  $3F            ; Mask the lower 6 bits
9aa4: 47           ld   b,a            ; b = bits 0-5 of cylinder
9aa5: 7c           ld   a,h
9aa6: 0f           rrca
9aa7: 0f           rrca
9aa8: 4f           ld   c,a
9aa9: e6 c0        and  $C0            ; a = bits 6-7 of cylinder
9aab: b0           or   b              ; a = bits 0-7 of cylinder
9aac: d3 84        out  ($84),a        ; Cylinder Number, Low
9aae: 79           ld   a,c
9aaf: e6 03        and  $03            ; a = bits 8-9 of cylinder
9ab1: d3 85        out  ($85),a        ; Cylinder Number, High 2 bits
9ab3: 3a cd 9a     ld   a,($9ACD)
9ab6: b7           or   a
9ab7: 3e 70        ld   a,$70
9ab9: d3 87        out  ($87),a        ; HDD Exec CMD - SEEK ; FIXME - disable seek
9abb: db 87        in   a,($87)
9abd: a7           and  a
9abe: fa bb 9a     jp   m,$9ABB        ; Loop while busy bit set
9ac1: c9           ret
9ac2: 3e 05        ld   a,$05          ; probable retry point
9ac4: 32 cd 9a     ld   ($9ACD),a
9ac7: cd 9e 90     call $909E          ; print error and get (R)etry choice
9aca: 18 93        jr   $9A5F          ; JMP Seek
9acc: 00           nop
9acd: 00           nop                 ; set to 0x05 during retry
9ace: 00           nop
9acf: 00           nop                 ; logical drive in bit0, physical drive in bit1
9ad0: 00           nop                 ; 16 bits, head in lower 2 bits, followed by 10 bit cyl
9ad1: 00           nop
9ad2: 00           nop                 ; Sector number
9ad3: 00           nop
9ad4: 00           nop
9ad5: 00           nop
9ad6: 00           nop
9ad7: 00           nop
9ad8: 00           nop
9ad9: 00           nop
9ada: 00           nop
9adb: 00           nop
9adc: 00           nop
9add: 00           nop
9ade: 00           nop
9adf: 00           nop                 ; 16 bits, head in lower 2 bits, followed by 10 bit cyl
9ae0: 00           nop
9ae1: 64           ld   h,h            ; (data) 16 bits, midpoint between partitions 0 and 1
9ae2: 02           ld   (bc),a         ; (data, part of above)
9ae3: c9           ret
9ae4: 01 00 00     ld   bc,$0000
9ae7: ed 43 d5 91  ld   ($91D5),bc
9aeb: c9           ret
9aec: 3e 00        ld   a,$00
9aee: cd f8 9a     call $9AF8
9af1: c9           ret
9af2: 3e ff        ld   a,$FF
9af4: cd f8 9a     call $9AF8
9af7: c9           ret
9af8: 32 64 9b     ld   ($9B64),a
9afb: cd 33 9b     call $9B33
9afe: c2 32 9b     jp   nz,$9B32
9b01: ed 5b d9 91  ld   de,($91D9)
9b05: 3a 64 9b     ld   a,($9B64)
9b08: b7           or   a
9b09: ca 12 9b     jp   z,$9B12
9b0c: 3e 01        ld   a,$01
9b0e: 32 65 9b     ld   ($9B65),a
9b11: eb           ex   de,hl
9b12: 3a 65 f0     ld   a,($F065)
9b15: 47           ld   b,a
9b16: 3a 64 9b     ld   a,($9B64)
9b19: b7           or   a
9b1a: ca 24 9b     jp   z,$9B24
9b1d: 48           ld   c,b
9b1e: 3a 67 9b     ld   a,($9B67)
9b21: 47           ld   b,a
9b22: 18 04        jr   $9B28
9b24: 3a 67 9b     ld   a,($9B67)
9b27: 4f           ld   c,a
9b28: cd 9b f3     call $F39B
9b2b: 01 80 00     ld   bc,$0080
9b2e: cd a5 f3     call $F3A5
9b31: af           xor  a
9b32: c9           ret
9b33: 3a 66 9b     ld   a,($9B66)
9b36: 47           ld   b,a
9b37: 3a d5 91     ld   a,($91D5)
9b3a: b8           cp   b
9b3b: d2 60 9b     jp   nc,$9B60
9b3e: 2a d5 91     ld   hl,($91D5)
9b41: 29           add  hl,hl
9b42: 29           add  hl,hl
9b43: 11 68 9b     ld   de,$9B68
9b46: 19           add  hl,de
9b47: 7e           ld   a,(hl)
9b48: 32 67 9b     ld   ($9B67),a
9b4b: 23           inc  hl
9b4c: 23           inc  hl
9b4d: 5e           ld   e,(hl)
9b4e: 23           inc  hl
9b4f: 56           ld   d,(hl)
9b50: 3a d7 91     ld   a,($91D7)
9b53: 6f           ld   l,a
9b54: 26 00        ld   h,$00
9b56: 29           add  hl,hl
9b57: 29           add  hl,hl
9b58: 29           add  hl,hl
9b59: 29           add  hl,hl
9b5a: 29           add  hl,hl
9b5b: 29           add  hl,hl
9b5c: 29           add  hl,hl
9b5d: 19           add  hl,de
9b5e: af           xor  a
9b5f: c9           ret
9b60: 3e 01        ld   a,$01
9b62: b7           or   a
9b63: c9           ret
9b64: 00           nop
9b65: 00           nop
9b66: 0d           dec  c
9b67: 00           nop
9b68: 02           ld   (bc),a
9b69: 00           nop
9b6a: 00           nop
9b6b: 00           nop
9b6c: 02           ld   (bc),a
9b6d: 00           nop
9b6e: 00           nop
9b6f: 20 02        jr   nz,$9B73
9b71: 00           nop
9b72: 00           nop
9b73: 40           ld   b,b
9b74: 02           ld   (bc),a
9b75: 00           nop
9b76: 00           nop
9b77: 60           ld   h,b
9b78: 02           ld   (bc),a
9b79: 00           nop
9b7a: 00           nop
9b7b: 80           add  a,b
9b7c: 02           ld   (bc),a
9b7d: 00           nop
9b7e: 00           nop
9b7f: a0           and  b
9b80: 02           ld   (bc),a
9b81: 00           nop
9b82: 00           nop
9b83: c0           ret  nz
9b84: 03           inc  bc
9b85: 00           nop
9b86: 00           nop
9b87: 00           nop
9b88: 03           inc  bc
9b89: 00           nop
9b8a: 00           nop
9b8b: 20 03        jr   nz,$9B90
9b8d: 00           nop
9b8e: 00           nop
9b8f: 40           ld   b,b
9b90: 03           inc  bc
9b91: 00           nop
9b92: 00           nop
9b93: 60           ld   h,b
9b94: 03           inc  bc
9b95: 00           nop
9b96: 00           nop
9b97: 80           add  a,b
9b98: 03           inc  bc
9b99: 00           nop
9b9a: 00           nop
9b9b: a0           and  b
9b9c: 04           inc  b
9b9d: 00           nop
9b9e: 00           nop
9b9f: 00           nop
9ba0: 04           inc  b
9ba1: 00           nop
9ba2: 00           nop
9ba3: 20 04        jr   nz,$9BA9
9ba5: 00           nop
9ba6: 00           nop
9ba7: 40           ld   b,b
9ba8: 04           inc  b
9ba9: 00           nop
9baa: 00           nop
9bab: 60           ld   h,b
9bac: 04           inc  b
9bad: 00           nop
9bae: 00           nop
9baf: 80           add  a,b
9bb0: 04           inc  b
9bb1: 00           nop
9bb2: 00           nop
9bb3: a0           and  b
9bb4: 04           inc  b
9bb5: 00           nop
9bb6: 00           nop
9bb7: c0           ret  nz
9bb8: 05           dec  b
9bb9: 00           nop
9bba: 00           nop
9bbb: 00           nop
9bbc: 05           dec  b
9bbd: 00           nop
9bbe: 00           nop
9bbf: 20 05        jr   nz,$9BC6
9bc1: 00           nop
9bc2: 00           nop
9bc3: 40           ld   b,b
9bc4: 05           dec  b
9bc5: 00           nop
9bc6: 00           nop
9bc7: 60           ld   h,b
9bc8: 05           dec  b
9bc9: 00           nop
9bca: 00           nop
9bcb: 80           add  a,b
9bcc: 05           dec  b
9bcd: 00           nop
9bce: 00           nop
9bcf: a0           and  b
9bd0: 05           dec  b
9bd1: 00           nop
9bd2: 00           nop
9bd3: c0           ret  nz
9bd4: 06 00        ld   b,$00
9bd6: 00           nop
9bd7: 00           nop
9bd8: 06 00        ld   b,$00
9bda: 00           nop
9bdb: 20 06        jr   nz,$9BE3
9bdd: 00           nop
9bde: 00           nop
9bdf: 40           ld   b,b
9be0: 06 00        ld   b,$00
9be2: 00           nop
9be3: 60           ld   h,b
9be4: 06 00        ld   b,$00
9be6: 00           nop
9be7: 80           add  a,b
9be8: 06 00        ld   b,$00
9bea: 00           nop
9beb: a0           and  b
9bec: 06 00        ld   b,$00
9bee: 00           nop
9bef: c0           ret  nz
9bf0: 07           rlca
9bf1: 00           nop
9bf2: 00           nop
9bf3: 00           nop
9bf4: 07           rlca
9bf5: 00           nop
9bf6: 00           nop
9bf7: 20 07        jr   nz,$9C00
9bf9: 00           nop
9bfa: 00           nop
9bfb: 40           ld   b,b
9bfc: 07           rlca
9bfd: 00           nop
9bfe: 00           nop
9bff: 60           ld   h,b
9c00: 07           rlca
9c01: 00           nop
9c02: 00           nop
9c03: 80           add  a,b
9c04: 07           rlca
9c05: 00           nop
9c06: 00           nop
9c07: a0           and  b
9c08: 07           rlca
9c09: 00           nop
9c0a: 00           nop
9c0b: c0           ret  nz
9c0c: f3           di
9c0d: 31 00 00     ld   sp,$0000
9c10: 32 3c 27     ld   ($273C),a
9c13: 32 e8 9d     ld   ($9DE8),a
9c16: cd b3 a1     call $A1B3
9c19: cd d6 00     call $00D6
9c1c: cd 3c 9d     call $9D3C
9c1f: 3a ef fd     ld   a,($FDEF)
9c22: fe 5a        cp   $5A
9c24: 20 13        jr   nz,$9C39
9c26: 21 86 fd     ld   hl,$FD86
9c29: 7e           ld   a,(hl)
9c2a: fe 32        cp   $32
9c2c: 20 0b        jr   nz,$9C39
9c2e: 21 89 fd     ld   hl,$FD89
9c31: 11 23 27     ld   de,$2723
9c34: 01 67 00     ld   bc,$0067
9c37: ed b0        ldir
9c39: 3a e8 9d     ld   a,($9DE8)
9c3c: 32 3c 27     ld   ($273C),a
9c3f: 3e 01        ld   a,$01
9c41: 32 35 27     ld   ($2735),a
9c44: cd ee 9f     call $9FEE
9c47: cd 54 a0     call $A054
9c4a: af           xor  a
9c4b: 32 37 27     ld   ($2737),a
9c4e: 1e 00        ld   e,$00
9c50: cd 54 92     call $9254
9c53: 1e 01        ld   e,$01
9c55: cd 54 92     call $9254
9c58: ed 4b e4 38  ld   bc,($38E4)
9c5c: 11 e6 38     ld   de,$38E6
9c5f: 21 a8 38     ld   hl,$38A8
9c62: ed b0        ldir
9c64: ed 4b e4 38  ld   bc,($38E4)
9c68: 11 1a 39     ld   de,$391A
9c6b: 21 a8 38     ld   hl,$38A8
9c6e: ed b0        ldir
9c70: ed 4b e4 38  ld   bc,($38E4)
9c74: 11 4e 39     ld   de,$394E
9c77: 21 a8 38     ld   hl,$38A8
9c7a: ed b0        ldir
9c7c: ed 4b e4 38  ld   bc,($38E4)
9c80: 11 82 39     ld   de,$3982
9c83: 21 a8 38     ld   hl,$38A8
9c86: ed b0        ldir
9c88: ed 4b e4 38  ld   bc,($38E4)
9c8c: 11 b6 39     ld   de,$39B6
9c8f: 21 a8 38     ld   hl,$38A8
9c92: ed b0        ldir
9c94: af           xor  a
9c95: 06 00        ld   b,$00
9c97: 21 01 00     ld   hl,$0001
9c9a: cd 00 52     call $5200
9c9d: af           xor  a
9c9e: cd ef 12     call $12EF
9ca1: 21 7d a0     ld   hl,$A07D
9ca4: cd b1 14     call $14B1
9ca7: 3a 30 27     ld   a,($2730)
9caa: b7           or   a
9cab: 28 22        jr   z,$9CCF
9cad: 01 00 01     ld   bc,$0100
9cb0: cd 9b f3     call $F39B
9cb3: 21 6a 27     ld   hl,$276A
9cb6: 3a 6a 27     ld   a,($276A)
9cb9: b7           or   a
9cba: 28 05        jr   z,$9CC1
9cbc: 4f           ld   c,a
9cbd: 06 00        ld   b,$00
9cbf: 03           inc  bc
9cc0: 09           add  hl,bc
9cc1: af           xor  a
9cc2: 77           ld   (hl),a
9cc3: 21 6a 27     ld   hl,$276A
9cc6: 11 07 da     ld   de,$DA07
9cc9: 01 1a 00     ld   bc,$001A
9ccc: cd a5 f3     call $F3A5
9ccf: 3a 14 98     ld   a,($9814)
9cd2: 32 41 27     ld   ($2741),a
9cd5: 3a e7 9d     ld   a,($9DE7)
9cd8: 32 28 27     ld   ($2728),a
9cdb: fe 02        cp   $02
9cdd: 38 21        jr   c,$9D00
9cdf: 28 0e        jr   z,$9CEF
9ce1: 21 c6 9d     ld   hl,$9DC6
9ce4: 06 0b        ld   b,$0B
9ce6: 5e           ld   e,(hl)
9ce7: 23           inc  hl
9ce8: 56           ld   d,(hl)
9ce9: 23           inc  hl
9cea: 7e           ld   a,(hl)
9ceb: 23           inc  hl
9cec: 12           ld   (de),a
9ced: 10 f7        djnz $9CE6
9cef: 3e 4a        ld   a,$4A
9cf1: 32 34 1f     ld   ($1F34),a
9cf4: af           xor  a
9cf5: 32 4b 1f     ld   ($1F4B),a
9cf8: 32 f4 20     ld   ($20F4),a
9cfb: 3e 6a        ld   a,$6A
9cfd: 32 dd 20     ld   ($20DD),a
9d00: 3a 2a 27     ld   a,($272A)
9d03: cd 62 f3     call $F362
9d06: 06 05        ld   b,$05
9d08: 21 1e 98     ld   hl,$981E
9d0b: 3a 23 27     ld   a,($2723)
9d0e: b7           or   a
9d0f: 20 02        jr   nz,$9D13
9d11: 06 01        ld   b,$01
9d13: 70           ld   (hl),b
9d14: cd bd 14     call $14BD
9d17: cd d6 13     call $13D6
9d1a: 3a 2c 27     ld   a,($272C)
9d1d: b7           or   a
9d1e: 28 0e        jr   z,$9D2E
9d20: fe 03        cp   $03
9d22: 20 0a        jr   nz,$9D2E
9d24: 3e 11        ld   a,$11
9d26: 32 6f 14     ld   ($146F),a
9d29: 3e 13        ld   a,$13
9d2b: 32 70 14     ld   ($1470),a
9d2e: 3a 34 27     ld   a,($2734)
9d31: cd 32 06     call $0632
9d34: cd e9 9d     call $9DE9
9d37: fb           ei
9d38: 00           nop
9d39: c3 ca 00     jp   $00CA
9d3c: 3a e8 9d     ld   a,($9DE8)
9d3f: b7           or   a
9d40: 20 32        jr   nz,$9D74
9d42: af           xor  a
9d43: 06 03        ld   b,$03
9d45: 21 00 bc     ld   hl,$BC00
9d48: 11 11 00     ld   de,$0011
9d4b: cd fe 09     call $09FE
9d4e: af           xor  a
9d4f: 06 0c        ld   b,$0C
9d51: 21 93 19     ld   hl,$1993
9d54: 11 14 00     ld   de,$0014
9d57: cd fe 09     call $09FE
9d5a: af           xor  a
9d5b: 06 1f        ld   b,$1F
9d5d: 21 00 bf     ld   hl,$BF00
9d60: 11 01 01     ld   de,$0101
9d63: cd fe 09     call $09FE
9d66: 11 00 01     ld   de,$0100
9d69: 01 00 03     ld   bc,$0300
9d6c: 21 70 fd     ld   hl,$FD70
9d6f: af           xor  a
9d70: cd f9 94     call $94F9
9d73: c9           ret
9d74: 3e 08        ld   a,$08
9d76: 21 00 00     ld   hl,$0000
9d79: cd 48 98     call $9848
9d7c: 24           inc  h
9d7d: 11 00 bc     ld   de,$BC00
9d80: 01 00 01     ld   bc,$0100
9d83: ed b0        ldir
9d85: 06 01        ld   b,$01
9d87: 3e 09        ld   a,$09
9d89: 21 00 00     ld   hl,$0000
9d8c: cd 22 0a     call $0A22
9d8f: 06 06        ld   b,$06
9d91: 3e 0a        ld   a,$0A
9d93: 21 00 00     ld   hl,$0000
9d96: 11 93 19     ld   de,$1993
9d99: cd 22 0a     call $0A22
9d9c: af           xor  a
9d9d: 21 01 00     ld   hl,$0001
9da0: cd 48 98     call $9848
9da3: 24           inc  h
9da4: 11 00 bf     ld   de,$BF00
9da7: 01 00 01     ld   bc,$0100
9daa: ed b0        ldir
9dac: 06 0f        ld   b,$0F
9dae: 3e 01        ld   a,$01
9db0: 21 01 00     ld   hl,$0001
9db3: cd 22 0a     call $0A22
9db6: 21 01 00     ld   hl,$0001
9db9: af           xor  a
9dba: cd 48 98     call $9848
9dbd: 11 70 fd     ld   de,$FD70
9dc0: 01 00 01     ld   bc,$0100
9dc3: ed b0        ldir
9dc5: c9           ret
9dc6: 75           ld   (hl),l
9dc7: bc           cp   h
9dc8: 60           ld   h,b
9dc9: 5b           ld   e,e
9dca: bc           cp   h
9dcb: 7b           ld   a,e
9dcc: f5           push af
9dcd: bc           cp   h
9dce: 7e           ld   a,(hl)
9dcf: e5           push hl
9dd0: bc           cp   h
9dd1: 5e           ld   e,(hl)
9dd2: db bc        in   a,($BC)
9dd4: 7d           ld   a,l
9dd5: ec bc 7c     call pe,$7CBC
9dd8: 6a           ld   l,d
9dd9: be           cp   (hl)
9dda: c4 6b be     call nz,$BE6B
9ddd: bb           cp   e
9dde: 6c           ld   l,h
9ddf: be           cp   (hl)
9de0: bd           cp   l
9de1: 5c           ld   e,h
9de2: be           cp   (hl)
9de3: be           cp   (hl)
9de4: 5d           ld   e,l
9de5: be           cp   (hl)
9de6: bf           cp   a
9de7: 00           nop
9de8: 00           nop
9de9: 21 ad 9e     ld   hl,$9EAD
9dec: cd b1 14     call $14B1
9def: 3a 4d 9e     ld   a,($9E4D)
9df2: b7           or   a
9df3: 28 1e        jr   z,$9E13
9df5: 21 66 9e     ld   hl,$9E66
9df8: 11 1f f6     ld   de,$F61F
9dfb: 01 20 00     ld   bc,$0020
9dfe: ed b0        ldir
9e00: af           xor  a
9e01: 32 c9 9e     ld   ($9EC9),a
9e04: 3c           inc  a
9e05: 32 ca 9e     ld   ($9ECA),a
9e08: 21 86 9e     ld   hl,$9E86
9e0b: 11 5a 27     ld   de,$275A
9e0e: 01 10 00     ld   bc,$0010
9e11: ed b0        ldir
9e13: 21 5a 27     ld   hl,$275A
9e16: 06 10        ld   b,$10
9e18: 0e 00        ld   c,$00
9e1a: 7e           ld   a,(hl)
9e1b: b7           or   a
9e1c: c4 2a 9e     call nz,$9E2A
9e1f: 23           inc  hl
9e20: 0c           inc  c
9e21: 10 f7        djnz $9E1A
9e23: 21 bf 9e     ld   hl,$9EBF
9e26: cd b1 14     call $14B1
9e29: c9           ret
9e2a: e5           push hl
9e2b: c5           push bc
9e2c: f5           push af
9e2d: 79           ld   a,c
9e2e: c6 41        add  a,$41
9e30: 32 c5 9e     ld   ($9EC5),a
9e33: 21 c3 9e     ld   hl,$9EC3
9e36: cd b1 14     call $14B1
9e39: f1           pop  af
9e3a: cb 27        sla  a
9e3c: 5f           ld   e,a
9e3d: 16 00        ld   d,$00
9e3f: 21 4e 9e     ld   hl,$9E4E
9e42: 19           add  hl,de
9e43: 7e           ld   a,(hl)
9e44: 23           inc  hl
9e45: 66           ld   h,(hl)
9e46: 6f           ld   l,a
9e47: cd b1 14     call $14B1
9e4a: c1           pop  bc
9e4b: e1           pop  hl
9e4c: c9           ret
9e4d: 00           nop
9e4e: 96           sub  (hl)
9e4f: 9e           sbc  a,(hl)
9e50: f3           di
9e51: 9e           sbc  a,(hl)
9e52: 09           add  hl,bc
9e53: 9f           sbc  a,a
9e54: 20 9f        jr   nz,$9DF5
9e56: cb 9e        res  3,(hl)
9e58: df           rst  $18
9e59: 9e           sbc  a,(hl)
9e5a: 00           nop
9e5b: 00           nop
9e5c: 4b           ld   c,e
9e5d: f6 67        or   $67
9e5f: f6 42        or   $42
9e61: f7           rst  $30
9e62: d7           rst  $10
9e63: f6 f3        or   $F3
9e65: f6 4b        or   $4B
9e67: f6 67        or   $67
9e69: f6 00        or   $00
9e6b: 00           nop
9e6c: 00           nop
9e6d: 00           nop
9e6e: 00           nop
9e6f: 00           nop
9e70: 00           nop
9e71: 00           nop
9e72: 00           nop
9e73: 00           nop
9e74: 00           nop
9e75: 00           nop
9e76: 00           nop
9e77: 00           nop
9e78: 00           nop
9e79: 00           nop
9e7a: 00           nop
9e7b: 00           nop
9e7c: 00           nop
9e7d: 00           nop
9e7e: 42           ld   b,d
9e7f: f7           rst  $30
9e80: 00           nop
9e81: 00           nop
9e82: 00           nop
9e83: 00           nop
9e84: 00           nop
9e85: 00           nop
9e86: 01 02 00     ld   bc,$0002
9e89: 00           nop
9e8a: 00           nop
9e8b: 00           nop
9e8c: 00           nop
9e8d: 00           nop
9e8e: 00           nop
9e8f: 00           nop
9e90: 00           nop
9e91: 00           nop
9e92: 03           inc  bc
9e93: 00           nop
9e94: 00           nop
9e95: 00           nop
9e96: 2a 2a 20     ld   hl,($202A)
9e99: 49           ld   c,c
9e9a: 4e           ld   c,(hl)
9e9b: 56           ld   d,(hl)
9e9c: 41           ld   b,c
9e9d: 4c           ld   c,h
9e9e: 49           ld   c,c
9e9f: 44           ld   b,h
9ea0: 20 44        jr   nz,$9EE6
9ea2: 45           ld   b,l
9ea3: 56           ld   d,(hl)
9ea4: 49           ld   c,c
9ea5: 43           ld   b,e
9ea6: 45           ld   b,l
9ea7: 20 2a        jr   nz,$9ED3
9ea9: 2a 0d 0a     ld   hl,($0A0D)
9eac: 00           nop
9ead: 44           ld   b,h
9eae: 72           ld   (hl),d
9eaf: 69           ld   l,c
9eb0: 76           halt
9eb1: 65           ld   h,l
9eb2: 20 41        jr   nz,$9EF5
9eb4: 73           ld   (hl),e
9eb5: 73           ld   (hl),e
9eb6: 69           ld   l,c
9eb7: 67           ld   h,a
9eb8: 6e           ld   l,(hl)
9eb9: 6d           ld   l,l
9eba: 65           ld   h,l
9ebb: 6e           ld   l,(hl)
9ebc: 74           ld   (hl),h
9ebd: 73           ld   (hl),e
9ebe: 3a 0d 0a     ld   a,($0A0D)
9ec1: 0a           ld   a,(bc)
9ec2: 00           nop
9ec3: 20 20        jr   nz,$9EE5
9ec5: 00           nop
9ec6: 3e 20        ld   a,$20
9ec8: 00           nop
9ec9: 00           nop
9eca: 00           nop
9ecb: 48           ld   c,b
9ecc: 61           ld   h,c
9ecd: 72           ld   (hl),d
9ece: 64           ld   h,h
9ecf: 20 44        jr   nz,$9F15
9ed1: 69           ld   l,c
9ed2: 73           ld   (hl),e
9ed3: 6b           ld   l,e
9ed4: 20 44        jr   nz,$9F1A
9ed6: 72           ld   (hl),d
9ed7: 69           ld   l,c
9ed8: 76           halt
9ed9: 65           ld   h,l
9eda: 20 31        jr   nz,$9F0D
9edc: 0d           dec  c
9edd: 0a           ld   a,(bc)
9ede: 00           nop
9edf: 48           ld   c,b
9ee0: 61           ld   h,c
9ee1: 72           ld   (hl),d
9ee2: 64           ld   h,h
9ee3: 20 44        jr   nz,$9F29
9ee5: 69           ld   l,c
9ee6: 73           ld   (hl),e
9ee7: 6b           ld   l,e
9ee8: 20 44        jr   nz,$9F2E
9eea: 72           ld   (hl),d
9eeb: 69           ld   l,c
9eec: 76           halt
9eed: 65           ld   h,l
9eee: 20 32        jr   nz,$9F22
9ef0: 0d           dec  c
9ef1: 0a           ld   a,(bc)
9ef2: 00           nop
9ef3: 4c           ld   c,h
9ef4: 65           ld   h,l
9ef5: 66           ld   h,(hl)
9ef6: 74           ld   (hl),h
9ef7: 20 44        jr   nz,$9F3D
9ef9: 69           ld   l,c
9efa: 73           ld   (hl),e
9efb: 6b           ld   l,e
9efc: 65           ld   h,l
9efd: 74           ld   (hl),h
9efe: 74           ld   (hl),h
9eff: 65           ld   h,l
9f00: 20 44        jr   nz,$9F46
9f02: 72           ld   (hl),d
9f03: 69           ld   l,c
9f04: 76           halt
9f05: 65           ld   h,l
9f06: 0d           dec  c
9f07: 0a           ld   a,(bc)
9f08: 00           nop
9f09: 52           ld   d,d
9f0a: 69           ld   l,c
9f0b: 67           ld   h,a
9f0c: 68           ld   l,b
9f0d: 74           ld   (hl),h
9f0e: 20 44        jr   nz,$9F54
9f10: 69           ld   l,c
9f11: 73           ld   (hl),e
9f12: 6b           ld   l,e
9f13: 65           ld   h,l
9f14: 74           ld   (hl),h
9f15: 74           ld   (hl),h
9f16: 65           ld   h,l
9f17: 20 44        jr   nz,$9F5D
9f19: 72           ld   (hl),d
9f1a: 69           ld   l,c
9f1b: 76           halt
9f1c: 65           ld   h,l
9f1d: 0d           dec  c
9f1e: 0a           ld   a,(bc)
9f1f: 00           nop
9f20: 52           ld   d,d
9f21: 41           ld   b,c
9f22: 4d           ld   c,l
9f23: 20 44        jr   nz,$9F69
9f25: 69           ld   l,c
9f26: 73           ld   (hl),e
9f27: 6b           ld   l,e
9f28: 0d           dec  c
9f29: 0a           ld   a,(bc)
9f2a: 00           nop
9f2b: 3a ed 9f     ld   a,($9FED)
9f2e: 3d           dec  a
9f2f: 32 ed 9f     ld   ($9FED),a
9f32: c0           ret  nz
9f33: 3e a0        ld   a,$A0
9f35: d3 86        out  ($86),a
9f37: 47           ld   b,a
9f38: 2f           cpl
9f39: d3 84        out  ($84),a
9f3b: db 86        in   a,($86)
9f3d: b8           cp   b
9f3e: c2 e3 9f     jp   nz,$9FE3
9f41: af           xor  a
9f42: 32 4d 9e     ld   ($9E4D),a
9f45: 3e 30        ld   a,$30
9f47: d3 86        out  ($86),a
9f49: 3a 3c 27     ld   a,($273C)
9f4c: b7           or   a
9f4d: 20 1d        jr   nz,$9F6C
9f4f: 3e ff        ld   a,$FF
9f51: 32 cc 9a     ld   ($9ACC),a
9f54: 21 00 00     ld   hl,$0000
9f57: 22 d0 9a     ld   ($9AD0),hl
9f5a: af           xor  a
9f5b: 32 cf 9a     ld   ($9ACF),a
9f5e: 3e 00        ld   a,$00
9f60: 32 d2 9a     ld   ($9AD2),a
9f63: cd b1 99     call $99B1
9f66: b7           or   a
9f67: 28 18        jr   z,$9F81
9f69: c3 e8 9f     jp   $9FE8
9f6c: 21 00 00     ld   hl,$0000
9f6f: 22 d0 9a     ld   ($9AD0),hl
9f72: af           xor  a
9f73: 32 cf 9a     ld   ($9ACF),a
9f76: 3e 00        ld   a,$00
9f78: 32 d2 9a     ld   ($9AD2),a
9f7b: cd b1 99     call $99B1
9f7e: b7           or   a
9f7f: 20 62        jr   nz,$9FE3
9f81: 2a fe df     ld   hl,($DFFE)
9f84: 11 55 aa     ld   de,$AA55
9f87: b7           or   a
9f88: ed 52        sbc  hl,de
9f8a: c2 e8 9f     jp   nz,$9FE8
9f8d: 21 c2 df     ld   hl,$DFC2
9f90: 11 10 00     ld   de,$0010
9f93: 06 04        ld   b,$04
9f95: 7e           ld   a,(hl)
9f96: fe f0        cp   $F0
9f98: 28 05        jr   z,$9F9F
9f9a: 19           add  hl,de
9f9b: 10 f8        djnz $9F95
9f9d: 18 44        jr   $9FE3
9f9f: e5           push hl
9fa0: 2b           dec  hl
9fa1: 5e           ld   e,(hl)
9fa2: 2b           dec  hl
9fa3: 7e           ld   a,(hl)
9fa4: e6 c0        and  $C0
9fa6: 07           rlca
9fa7: 07           rlca
9fa8: 57           ld   d,a
9fa9: 2b           dec  hl
9faa: 4e           ld   c,(hl)
9fab: 06 00        ld   b,$00
9fad: eb           ex   de,hl
9fae: 29           add  hl,hl
9faf: 29           add  hl,hl
9fb0: 09           add  hl,bc
9fb1: 22 df 9a     ld   ($9ADF),hl
9fb4: e1           pop  hl
9fb5: 23           inc  hl
9fb6: 4e           ld   c,(hl)
9fb7: 23           inc  hl
9fb8: 7e           ld   a,(hl)
9fb9: e6 c0        and  $C0
9fbb: 07           rlca
9fbc: 07           rlca
9fbd: 23           inc  hl
9fbe: 6e           ld   l,(hl)
9fbf: 67           ld   h,a
9fc0: 29           add  hl,hl
9fc1: 29           add  hl,hl
9fc2: 09           add  hl,bc
9fc3: ed 5b df 9a  ld   de,($9ADF)
9fc7: b7           or   a
9fc8: ed 52        sbc  hl,de
9fca: 23           inc  hl
9fcb: cb 3c        srl  h
9fcd: cb 1d        rr   l
9fcf: 22 e1 9a     ld   ($9AE1),hl
9fd2: 2b           dec  hl
9fd3: 2b           dec  hl
9fd4: cb 25        sla  l
9fd6: cb 14        rl   h
9fd8: cb 25        sla  l
9fda: cb 14        rl   h
9fdc: 2b           dec  hl
9fdd: 22 08 f7     ld   ($F708),hl
9fe0: c3 e8 9f     jp   $9FE8
9fe3: 3e ff        ld   a,$FF
9fe5: 32 4d 9e     ld   ($9E4D),a
9fe8: 3e 30        ld   a,$30
9fea: d3 86        out  ($86),a
9fec: c9           ret
9fed: 01 3a 14     ld   bc,$143A
9ff0: 98           sbc  a,b
9ff1: fe 02        cp   $02
9ff3: 20 11        jr   nz,$A006
9ff5: 21 4a 27     ld   hl,$274A
9ff8: 06 10        ld   b,$10
9ffa: 7e           ld   a,(hl)
9ffb: fe 02        cp   $02
9ffd: 28 05        jr   z,$A004
9fff: 23           inc  hl
a000: 10 f8        djnz $9FFA
a002: 18 02        jr   $A006
a004: af           xor  a
a005: 77           ld   (hl),a
a006: 21 4a 27     ld   hl,$274A
a009: 11 5a 27     ld   de,$275A
a00c: 01 10 00     ld   bc,$0010
a00f: ed b0        ldir
a011: 21 5a 27     ld   hl,$275A
a014: 11 1f f6     ld   de,$F61F
a017: 06 00        ld   b,$00
a019: 7e           ld   a,(hl)
a01a: b7           or   a
a01b: c4 28 a0     call nz,$A028
a01e: 23           inc  hl
a01f: 13           inc  de
a020: 13           inc  de
a021: 04           inc  b
a022: 78           ld   a,b
a023: fe 10        cp   $10
a025: 20 f2        jr   nz,$A019
a027: c9           ret
a028: f5           push af
a029: fe 01        cp   $01
a02b: 20 06        jr   nz,$A033
a02d: 78           ld   a,b
a02e: 32 c9 9e     ld   ($9EC9),a
a031: 18 08        jr   $A03B
a033: fe 02        cp   $02
a035: 20 04        jr   nz,$A03B
a037: 78           ld   a,b
a038: 32 ca 9e     ld   ($9ECA),a
a03b: f1           pop  af
a03c: c5           push bc
a03d: e5           push hl
a03e: d5           push de
a03f: 21 5a 9e     ld   hl,$9E5A
a042: cb 27        sla  a
a044: 5f           ld   e,a
a045: 16 00        ld   d,$00
a047: 19           add  hl,de
a048: d1           pop  de
a049: d5           push de
a04a: 7e           ld   a,(hl)
a04b: 12           ld   (de),a
a04c: 23           inc  hl
a04d: 13           inc  de
a04e: 7e           ld   a,(hl)
a04f: 12           ld   (de),a
a050: d1           pop  de
a051: e1           pop  hl
a052: c1           pop  bc
a053: c9           ret
a054: 21 1f f6     ld   hl,$F61F
a057: 06 10        ld   b,$10
a059: 5e           ld   e,(hl)
a05a: 23           inc  hl
a05b: 7e           ld   a,(hl)
a05c: 23           inc  hl
a05d: 57           ld   d,a
a05e: b3           or   e
a05f: 20 04        jr   nz,$A065
a061: 10 f6        djnz $A059
a063: 18 17        jr   $A07C
a065: c5           push bc
a066: e5           push hl
a067: eb           ex   de,hl
a068: 11 fc ff     ld   de,$FFFC
a06b: 19           add  hl,de
a06c: 7e           ld   a,(hl)
a06d: 23           inc  hl
a06e: 66           ld   h,(hl)
a06f: 6f           ld   l,a
a070: b4           or   h
a071: 28 05        jr   z,$A078
a073: 11 78 a0     ld   de,$A078
a076: d5           push de
a077: e9           jp   (hl)
a078: e1           pop  hl
a079: c1           pop  bc
a07a: 10 dd        djnz $A059
a07c: c9           ret
a07d: 1a           ld   a,(de)
a07e: 09           add  hl,bc
a07f: 09           add  hl,bc
a080: e4 f8 f8     call po,$F8F8
a083: f8           ret  m
a084: f8           ret  m
a085: f8           ret  m
a086: f8           ret  m
a087: f8           ret  m
a088: f8           ret  m
a089: f8           ret  m
a08a: f8           ret  m
a08b: f8           ret  m
a08c: f8           ret  m
a08d: f8           ret  m
a08e: f8           ret  m
a08f: f8           ret  m
a090: f8           ret  m
a091: f8           ret  m
a092: f8           ret  m
a093: f8           ret  m
a094: f8           ret  m
a095: f8           ret  m
a096: f8           ret  m
a097: f8           ret  m
a098: f8           ret  m
a099: f8           ret  m
a09a: f8           ret  m
a09b: f8           ret  m
a09c: f8           ret  m
a09d: f8           ret  m
a09e: f8           ret  m
a09f: f8           ret  m
a0a0: f8           ret  m
a0a1: f8           ret  m
a0a2: f8           ret  m
a0a3: f8           ret  m
a0a4: f8           ret  m
a0a5: f8           ret  m
a0a6: f8           ret  m
a0a7: f8           ret  m
a0a8: f8           ret  m
a0a9: f8           ret  m
a0aa: f8           ret  m
a0ab: f8           ret  m
a0ac: f8           ret  m
a0ad: f8           ret  m
a0ae: f4 0d 0a     call p,$0A0D
a0b1: 09           add  hl,bc
a0b2: 09           add  hl,bc
a0b3: f9           ld   sp,hl
a0b4: 20 20        jr   nz,$A0D6
a0b6: 43           ld   b,e
a0b7: 50           ld   d,b
a0b8: 2f           cpl
a0b9: 4d           ld   c,l
a0ba: 2d           dec  l
a0bb: 38 30        jr   c,$A0ED
a0bd: 20 20        jr   nz,$A0DF
a0bf: 52           ld   d,d
a0c0: 32 2e 32     ld   ($322E),a
a0c3: 20 46        jr   nz,$A10B
a0c5: 4f           ld   c,a
a0c6: 52           ld   d,d
a0c7: 20 54        jr   nz,$A11D
a0c9: 48           ld   c,b
a0ca: 45           ld   b,l
a0cb: 20 45        jr   nz,$A112
a0cd: 50           ld   d,b
a0ce: 53           ld   d,e
a0cf: 4f           ld   c,a
a0d0: 4e           ld   c,(hl)
a0d1: 20 51        jr   nz,$A124
a0d3: 58           ld   e,b
a0d4: 2d           dec  l
a0d5: 31 30 20     ld   sp,$2030
a0d8: 26 20        ld   h,$20
a0da: 51           ld   d,c
a0db: 58           ld   e,b
a0dc: 2d           dec  l
a0dd: 31 36 20     ld   sp,$2036
a0e0: 20 f9        jr   nz,$A0DB
a0e2: 0d           dec  c
a0e3: 0a           ld   a,(bc)
a0e4: 09           add  hl,bc
a0e5: 09           add  hl,bc
a0e6: f9           ld   sp,hl
a0e7: 20 20        jr   nz,$A109
a0e9: 20 20        jr   nz,$A10B
a0eb: 43           ld   b,e
a0ec: 4f           ld   c,a
a0ed: 50           ld   d,b
a0ee: 59           ld   e,c
a0ef: 52           ld   d,d
a0f0: 49           ld   c,c
a0f1: 47           ld   b,a
a0f2: 48           ld   c,b
a0f3: 54           ld   d,h
a0f4: 20 d0        jr   nz,$A0C6
a0f6: 20 31        jr   nz,$A129
a0f8: 39           add  hl,sp
a0f9: 38 34        jr   c,$A12F
a0fb: 2c           inc  l
a0fc: 20 45        jr   nz,$A143
a0fe: 50           ld   d,b
a0ff: 53           ld   d,e
a100: 4f           ld   c,a
a101: 4e           ld   c,(hl)
a102: 20 41        jr   nz,$A145
a104: 4d           ld   c,l
a105: 45           ld   b,l
a106: 52           ld   d,d
a107: 49           ld   c,c
a108: 43           ld   b,e
a109: 41           ld   b,c
a10a: 2c           inc  l
a10b: 20 49        jr   nz,$A156
a10d: 4e           ld   c,(hl)
a10e: 43           ld   b,e
a10f: 2e 20        ld   l,$20
a111: 20 20        jr   nz,$A133
a113: 20 f9        jr   nz,$A10E
a115: 0d           dec  c
a116: 0a           ld   a,(bc)
a117: 09           add  hl,bc
a118: 09           add  hl,bc
a119: f9           ld   sp,hl
a11a: 20 20        jr   nz,$A13C
a11c: 20 20        jr   nz,$A13E
a11e: 20 20        jr   nz,$A140
a120: 20 20        jr   nz,$A142
a122: 20 20        jr   nz,$A144
a124: 20 20        jr   nz,$A146
a126: 20 41        jr   nz,$A169
a128: 4c           ld   c,h
a129: 4c           ld   c,h
a12a: 20 52        jr   nz,$A17E
a12c: 49           ld   c,c
a12d: 47           ld   b,a
a12e: 48           ld   c,b
a12f: 54           ld   d,h
a130: 53           ld   d,e
a131: 20 52        jr   nz,$A185
a133: 45           ld   b,l
a134: 53           ld   d,e
a135: 45           ld   b,l
a136: 52           ld   d,d
a137: 56           ld   d,(hl)
a138: 45           ld   b,l
a139: 44           ld   b,h
a13a: 20 20        jr   nz,$A15C
a13c: 20 20        jr   nz,$A15E
a13e: 20 20        jr   nz,$A160
a140: 20 20        jr   nz,$A162
a142: 20 20        jr   nz,$A164
a144: 20 20        jr   nz,$A166
a146: 20 f9        jr   nz,$A141
a148: 0d           dec  c
a149: 0a           ld   a,(bc)
a14a: 09           add  hl,bc
a14b: 09           add  hl,bc
a14c: f9           ld   sp,hl
a14d: 20 20        jr   nz,$A16F
a14f: 20 20        jr   nz,$A171
a151: 20 20        jr   nz,$A173
a153: 20 20        jr   nz,$A175
a155: 20 20        jr   nz,$A177
a157: 20 4d        jr   nz,$A1A6
a159: 55           ld   d,l
a15a: 4c           ld   c,h
a15b: 54           ld   d,h
a15c: 49           ld   c,c
a15d: 42           ld   b,d
a15e: 41           ld   b,c
a15f: 4e           ld   c,(hl)
a160: 4b           ld   c,e
a161: 20 56        jr   nz,$A1B9
a163: 45           ld   b,l
a164: 52           ld   d,d
a165: 53           ld   d,e
a166: 49           ld   c,c
a167: 4f           ld   c,a
a168: 4e           ld   c,(hl)
a169: 20 42        jr   nz,$A1AD
a16b: 32 2e 32     ld   ($322E),a
a16e: 37           scf
a16f: 20 20        jr   nz,$A191
a171: 20 20        jr   nz,$A193
a173: 20 20        jr   nz,$A195
a175: 20 20        jr   nz,$A197
a177: 20 20        jr   nz,$A199
a179: 20 f9        jr   nz,$A174
a17b: 0d           dec  c
a17c: 0a           ld   a,(bc)
a17d: 09           add  hl,bc
a17e: 09           add  hl,bc
a17f: e5           push hl
a180: f8           ret  m
a181: f8           ret  m
a182: f8           ret  m
a183: f8           ret  m
a184: f8           ret  m
a185: f8           ret  m
a186: f8           ret  m
a187: f8           ret  m
a188: f8           ret  m
a189: f8           ret  m
a18a: f8           ret  m
a18b: f8           ret  m
a18c: f8           ret  m
a18d: f8           ret  m
a18e: f8           ret  m
a18f: f8           ret  m
a190: f8           ret  m
a191: f8           ret  m
a192: f8           ret  m
a193: f8           ret  m
a194: f8           ret  m
a195: f8           ret  m
a196: f8           ret  m
a197: f8           ret  m
a198: f8           ret  m
a199: f8           ret  m
a19a: f8           ret  m
a19b: f8           ret  m
a19c: f8           ret  m
a19d: f8           ret  m
a19e: f8           ret  m
a19f: f8           ret  m
a1a0: f8           ret  m
a1a1: f8           ret  m
a1a2: f8           ret  m
a1a3: f8           ret  m
a1a4: f8           ret  m
a1a5: f8           ret  m
a1a6: f8           ret  m
a1a7: f8           ret  m
a1a8: f8           ret  m
a1a9: f8           ret  m
a1aa: f8           ret  m
a1ab: f8           ret  m
a1ac: f8           ret  m
a1ad: f5           push af
a1ae: 0d           dec  c
a1af: 0a           ld   a,(bc)
a1b0: 0a           ld   a,(bc)
a1b1: 0a           ld   a,(bc)
a1b2: 00           nop
a1b3: cd 43 a5     call $A543
a1b6: 21 ff ff     ld   hl,$FFFF
a1b9: 22 7e b1     ld   ($B17E),hl
a1bc: 01 00 03     ld   bc,$0300
a1bf: cd 9b f3     call $F39B
a1c2: 21 00 da     ld   hl,$DA00
a1c5: 11 00 d8     ld   de,$D800
a1c8: 01 00 08     ld   bc,$0800
a1cb: cd a5 f3     call $F3A5
a1ce: cd 41 a2     call $A241
a1d1: 3a e8 9d     ld   a,($9DE8)
a1d4: b7           or   a
a1d5: c4 2b 9f     call nz,$9F2B
a1d8: 3e 81        ld   a,$81
a1da: cd 62 f3     call $F362
a1dd: af           xor  a
a1de: cd 88 f3     call $F388
a1e1: 3e 0a        ld   a,$0A
a1e3: d3 3d        out  ($3D),a
a1e5: 3e 2b        ld   a,$2B
a1e7: d3 3c        out  ($3C),a
a1e9: 3e 0b        ld   a,$0B
a1eb: d3 3d        out  ($3D),a
a1ed: 3e 1a        ld   a,$1A
a1ef: d3 3c        out  ($3C),a
a1f1: 3e 0c        ld   a,$0C
a1f3: d3 3d        out  ($3D),a
a1f5: db 3c        in   a,($3C)
a1f7: 21 00 0d     ld   hl,$0D00
a1fa: 3e b6        ld   a,$B6
a1fc: d3 07        out  ($07),a
a1fe: 7c           ld   a,h
a1ff: d3 06        out  ($06),a
a201: 7d           ld   a,l
a202: d3 06        out  ($06),a
a204: 3e 18        ld   a,$18
a206: d3 13        out  ($13),a
a208: 00           nop
a209: 00           nop
a20a: 21 64 14     ld   hl,$1464
a20d: 06 0b        ld   b,$0B
a20f: 0e 13        ld   c,$13
a211: ed b3        otir
a213: 3e 18        ld   a,$18
a215: d3 12        out  ($12),a
a217: 00           nop
a218: 00           nop
a219: 21 2e a3     ld   hl,$A32E
a21c: 06 0a        ld   b,$0A
a21e: 0e 12        ld   c,$12
a220: ed b3        otir
a222: cd 8b 26     call $268B
a225: cd b2 f5     call $F5B2
a228: cd aa 26     call $26AA
a22b: cd b0 26     call $26B0
a22e: 21 d7 e4     ld   hl,$E4D7
a231: 11 85 f7     ld   de,$F785
a234: 73           ld   (hl),e
a235: 23           inc  hl
a236: 72           ld   (hl),d
a237: 21 db e4     ld   hl,$E4DB
a23a: 11 95 f7     ld   de,$F795
a23d: 73           ld   (hl),e
a23e: 23           inc  hl
a23f: 72           ld   (hl),d
a240: c9           ret
a241: 21 c7 a2     ld   hl,$A2C7
a244: 11 00 e0     ld   de,$E000
a247: 01 4c 00     ld   bc,$004C
a24a: ed b0        ldir
a24c: cd 00 e0     call $E000
a24f: 21 13 a3     ld   hl,$A313
a252: 11 02 e0     ld   de,$E002
a255: 06 05        ld   b,$05
a257: 1a           ld   a,(de)
a258: be           cp   (hl)
a259: 20 09        jr   nz,$A264
a25b: 23           inc  hl
a25c: 13           inc  de
a25d: 10 f8        djnz $A257
a25f: 3e 01        ld   a,$01
a261: c3 76 a2     jp   $A276
a264: 21 18 a3     ld   hl,$A318
a267: 11 00 e0     ld   de,$E000
a26a: 06 07        ld   b,$07
a26c: 1a           ld   a,(de)
a26d: be           cp   (hl)
a26e: 20 12        jr   nz,$A282
a270: 23           inc  hl
a271: 13           inc  de
a272: 10 f8        djnz $A26C
a274: 3e 02        ld   a,$02
a276: 32 14 98     ld   ($9814),a
a279: 3e 03        ld   a,$03
a27b: 32 e7 9d     ld   ($9DE7),a
a27e: cd 12 e0     call $E012
a281: c9           ret
a282: 3e e0        ld   a,$E0
a284: cd bc a2     call $A2BC
a287: af           xor  a
a288: cd bc a2     call $A2BC
a28b: cd bc a2     call $A2BC
a28e: cd a7 a2     call $A2A7
a291: 3e 03        ld   a,$03
a293: b8           cp   b
a294: 38 04        jr   c,$A29A
a296: 3e 01        ld   a,$01
a298: 18 02        jr   $A29C
a29a: 3e 02        ld   a,$02
a29c: 32 e7 9d     ld   ($9DE7),a
a29f: af           xor  a
a2a0: 32 14 98     ld   ($9814),a
a2a3: cd 38 a3     call $A338
a2a6: c9           ret
a2a7: 11 00 00     ld   de,$0000
a2aa: 06 08        ld   b,$08
a2ac: db 12        in   a,($12)
a2ae: e6 01        and  $01
a2b0: 20 07        jr   nz,$A2B9
a2b2: 1b           dec  de
a2b3: 7a           ld   a,d
a2b4: b3           or   e
a2b5: 20 f5        jr   nz,$A2AC
a2b7: 10 f3        djnz $A2AC
a2b9: db 10        in   a,($10)
a2bb: c9           ret
a2bc: f5           push af
a2bd: db 12        in   a,($12)
a2bf: e6 04        and  $04
a2c1: 28 fa        jr   z,$A2BD
a2c3: f1           pop  af
a2c4: d3 10        out  ($10),a
a2c6: c9           ret
a2c7: af           xor  a
a2c8: d3 1c        out  ($1C),a
a2ca: 21 f9 1f     ld   hl,$1FF9
a2cd: 11 00 e0     ld   de,$E000
a2d0: 01 07 00     ld   bc,$0007
a2d3: ed b0        ldir
a2d5: 3c           inc  a
a2d6: d3 1c        out  ($1C),a
a2d8: c9           ret
a2d9: 3e 07        ld   a,$07
a2db: cd 27 f3     call $F327
a2de: 21 00 f0     ld   hl,$F000
a2e1: 11 00 00     ld   de,$0000
a2e4: 01 80 00     ld   bc,$0080
a2e7: ed b0        ldir
a2e9: 21 00 f0     ld   hl,$F000
a2ec: 11 00 00     ld   de,$0000
a2ef: 06 80        ld   b,$80
a2f1: 1a           ld   a,(de)
a2f2: be           cp   (hl)
a2f3: 20 19        jr   nz,$A30E
a2f5: 23           inc  hl
a2f6: 13           inc  de
a2f7: 10 f8        djnz $A2F1
a2f9: af           xor  a
a2fa: cd 27 f3     call $F327
a2fd: 21 1f a3     ld   hl,$A31F
a300: 11 52 f7     ld   de,$F752
a303: 01 0f 00     ld   bc,$000F
a306: ed b0        ldir
a308: 3e 2a        ld   a,$2A
a30a: 32 66 9b     ld   ($9B66),a
a30d: c9           ret
a30e: af           xor  a
a30f: cd 27 f3     call $F327
a312: c9           ret
a313: 51           ld   d,c
a314: 58           ld   e,b
a315: 2d           dec  l
a316: 31 36 51     ld   sp,$5136
a319: 58           ld   e,b
a31a: 2d           dec  l
a31b: 31 36 48     ld   sp,$4836
a31e: 44           ld   b,h
a31f: 40           ld   b,b
a320: 00           nop
a321: 04           inc  b
a322: 0f           rrca
a323: 00           nop
a324: a3           and  e
a325: 00           nop
a326: 3f           ccf
a327: 00           nop
a328: 80           add  a,b
a329: 00           nop
a32a: 00           nop
a32b: 00           nop
a32c: 00           nop
a32d: 00           nop
a32e: 14           inc  d
a32f: 37           scf
a330: 03           inc  bc
a331: e1           pop  hl
a332: 05           dec  b
a333: ea 02 00     jp   pe,$0002
a336: 01 10 3e     ld   bc,$3E10
a339: 00           nop
a33a: d3 39        out  ($39),a
a33c: 3e 6f        ld   a,$6F
a33e: d3 39        out  ($39),a
a340: db 2c        in   a,($2C)
a342: e6 01        and  $01
a344: c2 dd a3     jp   nz,$A3DD
a347: 3e 0e        ld   a,$0E
a349: d3 39        out  ($39),a
a34b: 0e 38        ld   c,$38
a34d: 06 08        ld   b,$08
a34f: 21 13 a5     ld   hl,$A513
a352: ed b3        otir
a354: db 38        in   a,($38)
a356: e6 06        and  $06
a358: ee 04        xor  $04
a35a: 20 f8        jr   nz,$A354
a35c: 3e 4b        ld   a,$4B
a35e: d3 39        out  ($39),a
a360: 3e 0f        ld   a,$0F
a362: d3 38        out  ($38),a
a364: 3e 6d        ld   a,$6D
a366: d3 38        out  ($38),a
a368: 3e 70        ld   a,$70
a36a: d3 38        out  ($38),a
a36c: 3e 46        ld   a,$46
a36e: d3 39        out  ($39),a
a370: af           xor  a
a371: d3 38        out  ($38),a
a373: d3 3a        out  ($3A),a
a375: db 38        in   a,($38)
a377: e6 06        and  $06
a379: ee 04        xor  $04
a37b: 20 f8        jr   nz,$A375
a37d: 3e 47        ld   a,$47
a37f: d3 39        out  ($39),a
a381: 3e 50        ld   a,$50
a383: d3 38        out  ($38),a
a385: 3e 70        ld   a,$70
a387: d3 39        out  ($39),a
a389: 3e 00        ld   a,$00
a38b: d3 38        out  ($38),a
a38d: d3 38        out  ($38),a
a38f: d3 38        out  ($38),a
a391: 3e 19        ld   a,$19
a393: d3 38        out  ($38),a
a395: cd 9b a3     call $A39B
a398: c3 71 a4     jp   $A471
a39b: db 38        in   a,($38)
a39d: e6 06        and  $06
a39f: ee 04        xor  $04
a3a1: 20 f8        jr   nz,$A39B
a3a3: 3e 49        ld   a,$49
a3a5: d3 39        out  ($39),a
a3a7: af           xor  a
a3a8: d3 38        out  ($38),a
a3aa: d3 38        out  ($38),a
a3ac: 06 04        ld   b,$04
a3ae: 21 ff 3f     ld   hl,$3FFF
a3b1: 3e 4c        ld   a,$4C
a3b3: d3 39        out  ($39),a
a3b5: 3e 02        ld   a,$02
a3b7: d3 38        out  ($38),a
a3b9: 7d           ld   a,l
a3ba: d3 38        out  ($38),a
a3bc: 7c           ld   a,h
a3bd: d3 38        out  ($38),a
a3bf: 3e 4a        ld   a,$4A
a3c1: d3 39        out  ($39),a
a3c3: 3e ff        ld   a,$FF
a3c5: d3 38        out  ($38),a
a3c7: d3 38        out  ($38),a
a3c9: 3e 20        ld   a,$20
a3cb: d3 39        out  ($39),a
a3cd: af           xor  a
a3ce: d3 38        out  ($38),a
a3d0: d3 38        out  ($38),a
a3d2: db 38        in   a,($38)
a3d4: e6 06        and  $06
a3d6: ee 04        xor  $04
a3d8: 20 f8        jr   nz,$A3D2
a3da: 10 d2        djnz $A3AE
a3dc: c9           ret
a3dd: 3e 0e        ld   a,$0E
a3df: d3 39        out  ($39),a
a3e1: 0e 38        ld   c,$38
a3e3: 06 08        ld   b,$08
a3e5: 21 1b a5     ld   hl,$A51B
a3e8: ed b3        otir
a3ea: db 38        in   a,($38)
a3ec: e6 06        and  $06
a3ee: ee 04        xor  $04
a3f0: 20 f8        jr   nz,$A3EA
a3f2: 3e 4b        ld   a,$4B
a3f4: d3 39        out  ($39),a
a3f6: af           xor  a
a3f7: d3 38        out  ($38),a
a3f9: d3 38        out  ($38),a
a3fb: d3 38        out  ($38),a
a3fd: 3e 46        ld   a,$46
a3ff: d3 39        out  ($39),a
a401: af           xor  a
a402: d3 38        out  ($38),a
a404: d3 3a        out  ($3A),a
a406: db 38        in   a,($38)
a408: e6 06        and  $06
a40a: ee 04        xor  $04
a40c: 20 f8        jr   nz,$A406
a40e: 3e 47        ld   a,$47
a410: d3 39        out  ($39),a
a412: 3e 28        ld   a,$28
a414: d3 38        out  ($38),a
a416: 3e 70        ld   a,$70
a418: d3 39        out  ($39),a
a41a: af           xor  a
a41b: d3 38        out  ($38),a
a41d: d3 38        out  ($38),a
a41f: d3 38        out  ($38),a
a421: 3e 19        ld   a,$19
a423: d3 38        out  ($38),a
a425: 3e 01        ld   a,$01
a427: cd 79 a4     call $A479
a42a: 3e 04        ld   a,$04
a42c: cd 79 a4     call $A479
a42f: 3e 02        ld   a,$02
a431: cd 79 a4     call $A479
a434: 11 33 a5     ld   de,$A533
a437: 21 1b a5     ld   hl,$A51B
a43a: 01 08 00     ld   bc,$0008
a43d: ed b0        ldir
a43f: 21 33 a5     ld   hl,$A533
a442: cb e6        set  4,(hl)
a444: 06 08        ld   b,$08
a446: 0e 38        ld   c,$38
a448: 3e 0e        ld   a,$0E
a44a: d3 39        out  ($39),a
a44c: ed b3        otir
a44e: db 38        in   a,($38)
a450: e6 06        and  $06
a452: ee 04        xor  $04
a454: 20 f8        jr   nz,$A44E
a456: 3e 47        ld   a,$47
a458: d3 39        out  ($39),a
a45a: 3e 28        ld   a,$28
a45c: d3 38        out  ($38),a
a45e: 3e 70        ld   a,$70
a460: d3 39        out  ($39),a
a462: af           xor  a
a463: d3 38        out  ($38),a
a465: d3 38        out  ($38),a
a467: d3 38        out  ($38),a
a469: 3e 19        ld   a,$19
a46b: d3 38        out  ($38),a
a46d: 3e 20        ld   a,$20
a46f: d3 39        out  ($39),a
a471: 3e 6b        ld   a,$6B
a473: d3 39        out  ($39),a
a475: af           xor  a
a476: d3 4d        out  ($4D),a
a478: c9           ret
a479: d3 2d        out  ($2D),a
a47b: db 38        in   a,($38)
a47d: e6 06        and  $06
a47f: ee 04        xor  $04
a481: 20 f8        jr   nz,$A47B
a483: 3e 49        ld   a,$49
a485: d3 39        out  ($39),a
a487: af           xor  a
a488: d3 38        out  ($38),a
a48a: d3 38        out  ($38),a
a48c: d3 38        out  ($38),a
a48e: 3e 4a        ld   a,$4A
a490: d3 39        out  ($39),a
a492: 3e ff        ld   a,$FF
a494: d3 38        out  ($38),a
a496: d3 38        out  ($38),a
a498: db 38        in   a,($38)
a49a: e6 06        and  $06
a49c: ee 04        xor  $04
a49e: 20 f8        jr   nz,$A498
a4a0: 3e 78        ld   a,$78
a4a2: d3 39        out  ($39),a
a4a4: 06 08        ld   b,$08
a4a6: 3e ff        ld   a,$FF
a4a8: d3 38        out  ($38),a
a4aa: 10 fc        djnz $A4A8
a4ac: db 38        in   a,($38)
a4ae: e6 06        and  $06
a4b0: ee 04        xor  $04
a4b2: 20 f8        jr   nz,$A4AC
a4b4: 3e 4c        ld   a,$4C
a4b6: d3 39        out  ($39),a
a4b8: 3e 10        ld   a,$10
a4ba: d3 38        out  ($38),a
a4bc: 01 27 00     ld   bc,$0027
a4bf: 79           ld   a,c
a4c0: d3 38        out  ($38),a
a4c2: 78           ld   a,b
a4c3: d3 38        out  ($38),a
a4c5: 01 68 06     ld   bc,$0668
a4c8: 79           ld   a,c
a4c9: d3 38        out  ($38),a
a4cb: 78           ld   a,b
a4cc: d3 38        out  ($38),a
a4ce: 3e 22        ld   a,$22
a4d0: d3 39        out  ($39),a
a4d2: 3e 68        ld   a,$68
a4d4: d3 39        out  ($39),a
a4d6: 3e 49        ld   a,$49
a4d8: d3 39        out  ($39),a
a4da: af           xor  a
a4db: d3 38        out  ($38),a
a4dd: d3 38        out  ($38),a
a4df: d3 38        out  ($38),a
a4e1: db 38        in   a,($38)
a4e3: e6 06        and  $06
a4e5: ee 04        xor  $04
a4e7: 20 f8        jr   nz,$A4E1
a4e9: c9           ret
a4ea: 01 49 03     ld   bc,$0349
a4ed: 00           nop
a4ee: 00           nop
a4ef: 00           nop
a4f0: 06 78        ld   b,$78
a4f2: 08           ex   af,af'
a4f3: 00           nop
a4f4: 00           nop
a4f5: 00           nop
a4f6: 00           nop
a4f7: 00           nop
a4f8: 00           nop
a4f9: 00           nop
a4fa: 00           nop
a4fb: 4c           ld   c,h
a4fc: 03           inc  bc
a4fd: 12           ld   (de),a
a4fe: 07           rlca
a4ff: 00           nop
a500: 68           ld   l,b
a501: 00           nop
a502: 78           ld   a,b
a503: 08           ex   af,af'
a504: 00           nop
a505: 00           nop
a506: 00           nop
a507: 00           nop
a508: 00           nop
a509: 00           nop
a50a: 00           nop
a50b: 00           nop
a50c: 4c           ld   c,h
a50d: 03           inc  bc
a50e: 12           ld   (de),a
a50f: 07           rlca
a510: 00           nop
a511: 68           ld   l,b
a512: 00           nop
a513: 14           inc  d
a514: 4e           ld   c,(hl)
a515: 02           ld   (bc),a
a516: 1a           ld   a,(de)
a517: 12           ld   (de),a
a518: 01 90 11     ld   bc,$1190
a51b: 06 26        ld   b,$26
a51d: 23           inc  hl
a51e: 11 04 07     ld   de,$0704
a521: 90           sub  b
a522: 65           ld   h,l
a523: e8           ret  pe
a524: e4 c9 c3     call po,$C3C9
a527: c8           ret  z
a528: c9           ret
a529: 40           ld   b,b
a52a: e4 e2 c8     call po,$C8E2
a52d: c9           ret
a52e: e8           ret  pe
a52f: c1           pop  bc
a530: d4 c1 40     call nc,$40C1
a533: 00           nop
a534: 00           nop
a535: 00           nop
a536: 00           nop
a537: 00           nop
a538: 00           nop
a539: 00           nop
a53a: 00           nop
a53b: 00           nop
a53c: 00           nop
a53d: 00           nop
a53e: 00           nop
a53f: 00           nop
a540: 00           nop
a541: 00           nop
a542: 00           nop
a543: 2a 07 e2     ld   hl,($E207)
a546: 22 c7 f7     ld   ($F7C7),hl
a549: 21 a4 f7     ld   hl,$F7A4
a54c: 22 07 e2     ld   ($E207),hl
a54f: c9           ret
a550: c3 01 f1     jp   $F101
a553: c3 08 f1     jp   $F108
a556: c3 0f f1     jp   $F10F
a559: c3 1b f1     jp   $F11B
a55c: c3 22 f1     jp   $F122
a55f: c3 29 f1     jp   $F129
a562: c3 30 f1     jp   $F130
a565: c3 37 f1     jp   $F137
a568: c3 3e f1     jp   $F13E
a56b: c3 45 f1     jp   $F145
a56e: c3 4c f1     jp   $F14C
a571: c3 53 f1     jp   $F153
a574: c3 5a f1     jp   $F15A
a577: c3 61 f1     jp   $F161
a57a: c3 68 f1     jp   $F168
a57d: c3 6f f1     jp   $F16F
a580: c3 76 f1     jp   $F176
a583: c3 63 f0     jp   $F063
a586: c3 63 f0     jp   $F063
a589: c3 63 f0     jp   $F063
a58c: c3 63 f0     jp   $F063
a58f: c3 63 f0     jp   $F063
a592: c3 63 f0     jp   $F063
a595: c3 63 f0     jp   $F063
a598: c3 63 f0     jp   $F063
a59b: c3 63 f0     jp   $F063
a59e: c3 63 f0     jp   $F063
a5a1: c3 63 f0     jp   $F063
a5a4: c3 63 f0     jp   $F063
a5a7: c3 63 f0     jp   $F063
a5aa: c3 7d f1     jp   $F17D
a5ad: dc f7 5e     call c,$5EF7
a5b0: 9c           sbc  a,h
a5b1: 0c           inc  c
a5b2: 9c           sbc  a,h
a5b3: c9           ret
a5b4: 00           nop
a5b5: 01 00 00     ld   bc,$0000
a5b8: 00           nop
a5b9: 00           nop
a5ba: 00           nop
a5bb: 00           nop
a5bc: 00           nop
a5bd: 00           nop
a5be: 00           nop
a5bf: 00           nop
a5c0: 00           nop
a5c1: 00           nop
a5c2: 00           nop
a5c3: 00           nop
a5c4: 00           nop
a5c5: 00           nop
a5c6: 00           nop
a5c7: 00           nop
a5c8: 00           nop
a5c9: 00           nop
a5ca: 00           nop
a5cb: 00           nop
a5cc: 00           nop
a5cd: 00           nop
a5ce: 00           nop
a5cf: 00           nop
a5d0: f3           di
a5d1: 32 29 f4     ld   ($F429),a
a5d4: 3e 00        ld   a,$00
a5d6: 18 76        jr   $A64E
a5d8: f3           di
a5d9: 32 29 f4     ld   ($F429),a
a5dc: 3e 03        ld   a,$03
a5de: 18 6e        jr   $A64E
a5e0: f3           di
a5e1: 32 29 f4     ld   ($F429),a
a5e4: 3e 06        ld   a,$06
a5e6: 18 66        jr   $A64E
a5e8: f3           di
a5e9: 32 29 f4     ld   ($F429),a
a5ec: 3e 09        ld   a,$09
a5ee: 18 5e        jr   $A64E
a5f0: f3           di
a5f1: 32 29 f4     ld   ($F429),a
a5f4: 3e 0c        ld   a,$0C
a5f6: 18 56        jr   $A64E
a5f8: f3           di
a5f9: 32 29 f4     ld   ($F429),a
a5fc: 3e 0f        ld   a,$0F
a5fe: 18 4e        jr   $A64E
a600: f3           di
a601: 32 29 f4     ld   ($F429),a
a604: 3e 12        ld   a,$12
a606: 18 46        jr   $A64E
a608: f3           di
a609: 32 29 f4     ld   ($F429),a
a60c: 3e 15        ld   a,$15
a60e: 18 3e        jr   $A64E
a610: f3           di
a611: 32 29 f4     ld   ($F429),a
a614: 3e 18        ld   a,$18
a616: 18 36        jr   $A64E
a618: f3           di
a619: 32 29 f4     ld   ($F429),a
a61c: 3e 1b        ld   a,$1B
a61e: 18 2e        jr   $A64E
a620: f3           di
a621: 32 29 f4     ld   ($F429),a
a624: 3e 1e        ld   a,$1E
a626: 18 26        jr   $A64E
a628: f3           di
a629: 32 29 f4     ld   ($F429),a
a62c: 3e 21        ld   a,$21
a62e: 18 1e        jr   $A64E
a630: f3           di
a631: 32 29 f4     ld   ($F429),a
a634: 3e 24        ld   a,$24
a636: 18 16        jr   $A64E
a638: f3           di
a639: 32 29 f4     ld   ($F429),a
a63c: 3e 27        ld   a,$27
a63e: 18 0e        jr   $A64E
a640: f3           di
a641: 32 29 f4     ld   ($F429),a
a644: 3e 2a        ld   a,$2A
a646: 18 06        jr   $A64E
a648: f3           di
a649: 32 29 f4     ld   ($F429),a
a64c: 3e 2d        ld   a,$2D
a64e: c3 6e f2     jp   $F26E
a651: d9           exx
a652: 21 0c 9c     ld   hl,$9C0C
a655: c3 91 f1     jp   $F191
a658: d9           exx
a659: 21 6e 00     ld   hl,$006E
a65c: c3 91 f1     jp   $F191
a65f: d9           exx
a660: 3e ff        ld   a,$FF
a662: 32 36 f4     ld   ($F436),a
a665: 21 5b 12     ld   hl,$125B
a668: c3 91 f1     jp   $F191
a66b: d9           exx
a66c: 21 69 12     ld   hl,$1269
a66f: c3 91 f1     jp   $F191
a672: d9           exx
a673: 21 77 12     ld   hl,$1277
a676: c3 91 f1     jp   $F191
a679: d9           exx
a67a: 21 a7 12     ld   hl,$12A7
a67d: c3 91 f1     jp   $F191
a680: d9           exx
a681: 21 85 12     ld   hl,$1285
a684: c3 91 f1     jp   $F191
a687: d9           exx
a688: 21 97 12     ld   hl,$1297
a68b: c3 91 f1     jp   $F191
a68e: d9           exx
a68f: 21 39 90     ld   hl,$9039
a692: c3 91 f1     jp   $F191
a695: d9           exx
a696: 21 fb 8f     ld   hl,$8FFB
a699: c3 91 f1     jp   $F191
a69c: d9           exx
a69d: 21 51 90     ld   hl,$9051
a6a0: c3 91 f1     jp   $F191
a6a3: d9           exx
a6a4: 21 56 90     ld   hl,$9056
a6a7: c3 91 f1     jp   $F191
a6aa: d9           exx
a6ab: 21 5e 90     ld   hl,$905E
a6ae: c3 91 f1     jp   $F191
a6b1: d9           exx
a6b2: 21 63 90     ld   hl,$9063
a6b5: c3 91 f1     jp   $F191
a6b8: d9           exx
a6b9: 21 7d 90     ld   hl,$907D
a6bc: c3 91 f1     jp   $F191
a6bf: d9           exx
a6c0: 21 b7 12     ld   hl,$12B7
a6c3: c3 91 f1     jp   $F191
a6c6: d9           exx
a6c7: 21 5b 90     ld   hl,$905B
a6ca: c3 91 f1     jp   $F191
a6cd: f5           push af
a6ce: 79           ld   a,c
a6cf: fe 31        cp   $31
a6d1: ca b8 f4     jp   z,$F4B8
a6d4: fe 32        cp   $32
a6d6: ca 23 f5     jp   z,$F523
a6d9: f1           pop  af
a6da: d9           exx
a6db: 21 fb 00     ld   hl,$00FB
a6de: c3 91 f1     jp   $F191
a6e1: f3           di
a6e2: ed 73 90 f4  ld   ($F490),sp
a6e6: 31 2c f9     ld   sp,$F92C
a6e9: 11 d6 f1     ld   de,$F1D6
a6ec: d5           push de
a6ed: e5           push hl
a6ee: d9           exx
a6ef: f5           push af
a6f0: 3a 03 00     ld   a,($0003)
a6f3: 32 64 f0     ld   ($F064),a
a6f6: 3a 6c f0     ld   a,($F06C)
a6f9: 32 65 f0     ld   ($F065),a
a6fc: af           xor  a
a6fd: 32 6c f0     ld   ($F06C),a
a700: 3e 12        ld   a,$12
a702: d3 18        out  ($18),a
a704: 3a 64 f0     ld   a,($F064)
a707: 32 2a 27     ld   ($272A),a
a70a: 3a 36 f4     ld   a,($F436)
a70d: b7           or   a
a70e: 20 0c        jr   nz,$A71C
a710: 3a 57 12     ld   a,($1257)
a713: b7           or   a
a714: cc 7c 17     call z,$177C
a717: 3e 14        ld   a,$14
a719: 32 56 12     ld   ($1256),a
a71c: 3a 66 f0     ld   a,($F066)
a71f: b7           or   a
a720: c4 e9 f1     call nz,$F1E9
a723: f1           pop  af
a724: fb           ei
a725: c9           ret
a726: f3           di
a727: 08           ex   af,af'
a728: af           xor  a
a729: 32 36 f4     ld   ($F436),a
a72c: 3a 65 f0     ld   a,($F065)
a72f: cd 27 f3     call $F327
a732: ed 7b 90 f4  ld   sp,($F490)
a736: 08           ex   af,af'
a737: fb           ei
a738: c9           ret
a739: fb           ei
a73a: 3a 67 f0     ld   a,($F067)
a73d: b7           or   a
a73e: c0           ret  nz
a73f: 3a 66 f0     ld   a,($F066)
a742: cb 47        bit  0,a
a744: c4 1a 8c     call nz,$8C1A
a747: cb 4f        bit  1,a
a749: c4 4e 0b     call nz,$0B4E
a74c: 3a 66 f0     ld   a,($F066)
a74f: cb 5f        bit  3,a
a751: c4 48 f2     call nz,$F248
a754: cb 6f        bit  5,a
a756: c4 83 2a     call nz,$2A83
a759: 3a 66 f0     ld   a,($F066)
a75c: cb 7f        bit  7,a
a75e: c4 18 f2     call nz,$F218
a761: 3a 66 f0     ld   a,($F066)
a764: b7           or   a
a765: 20 d2        jr   nz,$A739
a767: c9           ret
a768: c5           push bc
a769: d5           push de
a76a: e5           push hl
a76b: dd e5        push ix
a76d: fd e5        push iy
a76f: cb bf        res  7,a
a771: cb 77        bit  6,a
a773: 20 11        jr   nz,$A786
a775: cb f7        set  6,a
a777: 32 66 f0     ld   ($F066),a
a77a: 21 39 f4     ld   hl,$F439
a77d: 3e 03        ld   a,$03
a77f: 0e 00        ld   c,$00
a781: cd ec 12     call $12EC
a784: 18 0a        jr   $A790
a786: cb b7        res  6,a
a788: 32 66 f0     ld   ($F066),a
a78b: 3e 01        ld   a,$01
a78d: cd ef 12     call $12EF
a790: fd e1        pop  iy
a792: dd e1        pop  ix
a794: e1           pop  hl
a795: d1           pop  de
a796: c1           pop  bc
a797: c9           ret
a798: c5           push bc
a799: d5           push de
a79a: e5           push hl
a79b: dd e5        push ix
a79d: fd e5        push iy
a79f: cb 9f        res  3,a
a7a1: 32 66 f0     ld   ($F066),a
a7a4: 06 00        ld   b,$00
a7a6: 2e 01        ld   l,$01
a7a8: 3a 38 27     ld   a,($2738)
a7ab: 3c           inc  a
a7ac: e6 01        and  $01
a7ae: 67           ld   h,a
a7af: af           xor  a
a7b0: cd 00 52     call $5200
a7b3: 3a 66 f0     ld   a,($F066)
a7b6: fd e1        pop  iy
a7b8: dd e1        pop  ix
a7ba: e1           pop  hl
a7bb: d1           pop  de
a7bc: c1           pop  bc
a7bd: c9           ret
a7be: ed 73 92 f4  ld   ($F492),sp
a7c2: 31 ac f8     ld   sp,$F8AC
a7c5: 32 2a f4     ld   ($F42A),a
a7c8: 3a 29 f4     ld   a,($F429)
a7cb: f5           push af
a7cc: c5           push bc
a7cd: d5           push de
a7ce: e5           push hl
a7cf: dd e5        push ix
a7d1: fd e5        push iy
a7d3: 3a 6c f0     ld   a,($F06C)
a7d6: 32 38 f4     ld   ($F438),a
a7d9: 11 a1 f2     ld   de,$F2A1
a7dc: d5           push de
a7dd: 3a 2a f4     ld   a,($F42A)
a7e0: 5f           ld   e,a
a7e1: 16 00        ld   d,$00
a7e3: 21 7c f5     ld   hl,$F57C
a7e6: 19           add  hl,de
a7e7: 5e           ld   e,(hl)
a7e8: 23           inc  hl
a7e9: 56           ld   d,(hl)
a7ea: 23           inc  hl
a7eb: 7e           ld   a,(hl)
a7ec: eb           ex   de,hl
a7ed: cd 27 f3     call $F327
a7f0: e9           jp   (hl)
a7f1: 3a 38 f4     ld   a,($F438)
a7f4: cd 27 f3     call $F327
a7f7: fd e1        pop  iy
a7f9: dd e1        pop  ix
a7fb: e1           pop  hl
a7fc: d1           pop  de
a7fd: c1           pop  bc
a7fe: f1           pop  af
a7ff: ed 7b 92 f4  ld   sp,($F492)
a803: fb           ei
a804: c9           ret
a805: 22 31 f4     ld   ($F431),hl
a808: 32 33 f4     ld   ($F433),a
a80b: 3a 6c f0     ld   a,($F06C)
a80e: f5           push af
a80f: 3a 33 f4     ld   a,($F433)
a812: cd 27 f3     call $F327
a815: 21 cd f2     ld   hl,$F2CD
a818: e5           push hl
a819: 2a 31 f4     ld   hl,($F431)
a81c: e9           jp   (hl)
a81d: f1           pop  af
a81e: cd 27 f3     call $F327
a821: c9           ret
a822: 22 2f f4     ld   ($F42F),hl
a825: e1           pop  hl
a826: ed 73 34 f4  ld   ($F434),sp
a82a: ed 7b 94 f4  ld   sp,($F494)
a82e: e5           push hl
a82f: 32 2e f4     ld   ($F42E),a
a832: 3a 6c f0     ld   a,($F06C)
a835: f5           push af
a836: 3a 2e f4     ld   a,($F42E)
a839: cd 27 f3     call $F327
a83c: ed 73 94 f4  ld   ($F494),sp
a840: ed 7b 34 f4  ld   sp,($F434)
a844: 21 fc f2     ld   hl,$F2FC
a847: e5           push hl
a848: 2a 2f f4     ld   hl,($F42F)
a84b: e9           jp   (hl)
a84c: ed 73 34 f4  ld   ($F434),sp
a850: ed 7b 94 f4  ld   sp,($F494)
a854: f1           pop  af
a855: e1           pop  hl
a856: ed 73 94 f4  ld   ($F494),sp
a85a: ed 7b 34 f4  ld   sp,($F434)
a85e: e5           push hl
a85f: 32 2e f4     ld   ($F42E),a
a862: 3a 6c f0     ld   a,($F06C)
a865: f5           push af
a866: 3a 2e f4     ld   a,($F42E)
a869: cd 27 f3     call $F327
a86c: 21 bf f4     ld   hl,$F4BF
a86f: e9           jp   (hl)
a870: 21 90 f4     ld   hl,$F490
a873: 22 94 f4     ld   ($F494),hl
a876: c9           ret
a877: e5           push hl
a878: e6 07        and  $07
a87a: 32 6c f0     ld   ($F06C),a
a87d: 21 3f f3     ld   hl,$F33F
a880: 87           add  a,a
a881: 85           add  a,l
a882: 6f           ld   l,a
a883: 30 01        jr   nc,$A886
a885: 23           inc  hl
a886: 7e           ld   a,(hl)
a887: d3 28        out  ($28),a
a889: 23           inc  hl
a88a: 7e           ld   a,(hl)
a88b: d3 18        out  ($18),a
a88d: e1           pop  hl
a88e: c9           ret
a88f: 00           nop
a890: 12           ld   (de),a
a891: 00           nop
a892: 22 00 42     ld   ($4200),hl
a895: 00           nop
a896: 82           add  a,d
a897: 01 12 01     ld   bc,$0112
a89a: 22 01 42     ld   ($4201),hl
a89d: 01 82 c5     ld   bc,$C582
a8a0: 3a 65 f0     ld   a,($F065)
a8a3: cd 27 f3     call $F327
a8a6: 3a 03 00     ld   a,($0003)
a8a9: 47           ld   b,a
a8aa: 3e 00        ld   a,$00
a8ac: cd 27 f3     call $F327
a8af: 78           ld   a,b
a8b0: c1           pop  bc
a8b1: c9           ret
a8b2: c5           push bc
a8b3: 47           ld   b,a
a8b4: 3a 65 f0     ld   a,($F065)
a8b7: cd 27 f3     call $F327
a8ba: 78           ld   a,b
a8bb: 32 03 00     ld   ($0003),a
a8be: 3e 00        ld   a,$00
a8c0: cd 27 f3     call $F327
a8c3: c1           pop  bc
a8c4: c9           ret
a8c5: c5           push bc
a8c6: 3a 65 f0     ld   a,($F065)
a8c9: cd 27 f3     call $F327
a8cc: 3a 04 00     ld   a,($0004)
a8cf: 47           ld   b,a
a8d0: 3e 00        ld   a,$00
a8d2: cd 27 f3     call $F327
a8d5: 78           ld   a,b
a8d6: c1           pop  bc
a8d7: c9           ret
a8d8: c5           push bc
a8d9: 47           ld   b,a
a8da: 3a 65 f0     ld   a,($F065)
a8dd: cd 27 f3     call $F327
a8e0: 78           ld   a,b
a8e1: 32 04 00     ld   ($0004),a
a8e4: 3e 00        ld   a,$00
a8e6: cd 27 f3     call $F327
a8e9: c1           pop  bc
a8ea: c9           ret
a8eb: ed 43 2b f4  ld   ($F42B),bc
a8ef: 3e ff        ld   a,$FF
a8f1: 32 2d f4     ld   ($F42D),a
a8f4: c9           ret
a8f5: 78           ld   a,b
a8f6: b1           or   c
a8f7: c8           ret  z
a8f8: 3a 2d f4     ld   a,($F42D)
a8fb: b7           or   a
a8fc: ca 26 f4     jp   z,$F426
a8ff: af           xor  a
a900: 32 2d f4     ld   ($F42D),a
a903: 3a 6c f0     ld   a,($F06C)
a906: 32 6a f0     ld   ($F06A),a
a909: ed 43 74 f0  ld   ($F074),bc
a90d: 22 70 f0     ld   ($F070),hl
a910: ed 53 72 f0  ld   ($F072),de
a914: 2a 74 f0     ld   hl,($F074)
a917: 11 80 00     ld   de,$0080
a91a: b7           or   a
a91b: ed 52        sbc  hl,de
a91d: 38 10        jr   c,$A92F
a91f: 7d           ld   a,l
a920: b4           or   h
a921: 28 0c        jr   z,$A92F
a923: 22 74 f0     ld   ($F074),hl
a926: 01 80 00     ld   bc,$0080
a929: ed 43 68 f0  ld   ($F068),bc
a92d: 18 09        jr   $A938
a92f: 19           add  hl,de
a930: 22 68 f0     ld   ($F068),hl
a933: 3e ff        ld   a,$FF
a935: 32 6b f0     ld   ($F06B),a
a938: 3a 2b f4     ld   a,($F42B)
a93b: cd 27 f3     call $F327
a93e: ed 4b 68 f0  ld   bc,($F068)
a942: 2a 70 f0     ld   hl,($F070)
a945: 11 dc f7     ld   de,$F7DC
a948: ed b0        ldir
a94a: 22 70 f0     ld   ($F070),hl
a94d: 3a 2c f4     ld   a,($F42C)
a950: cd 27 f3     call $F327
a953: ed 5b 72 f0  ld   de,($F072)
a957: ed 4b 68 f0  ld   bc,($F068)
a95b: 21 dc f7     ld   hl,$F7DC
a95e: ed b0        ldir
a960: ed 53 72 f0  ld   ($F072),de
a964: 3a 6b f0     ld   a,($F06B)
a967: b7           or   a
a968: ca c4 f3     jp   z,$F3C4
a96b: af           xor  a
a96c: 32 6b f0     ld   ($F06B),a
a96f: 3a 6a f0     ld   a,($F06A)
a972: cd 27 f3     call $F327
a975: c9           ret
a976: ed b0        ldir
a978: c9           ret
a979: 00           nop
a97a: 00           nop
a97b: 00           nop
a97c: 00           nop
a97d: 00           nop
a97e: 00           nop
a97f: 00           nop
a980: 00           nop
a981: 00           nop
a982: 00           nop
a983: 00           nop
a984: 00           nop
a985: 00           nop
a986: 00           nop
a987: 00           nop
a988: 00           nop
a989: 20 53        jr   nz,$A9DE
a98b: 59           ld   e,c
a98c: 53           ld   d,e
a98d: 54           ld   d,h
a98e: 45           ld   b,l
a98f: 4d           ld   c,l
a990: 20 49        jr   nz,$A9DB
a992: 53           ld   d,e
a993: 20 50        jr   nz,$A9E5
a995: 41           ld   b,c
a996: 55           ld   d,l
a997: 53           ld   d,e
a998: 45           ld   b,l
a999: 44           ld   b,h
a99a: 21 20 50     ld   hl,$5020
a99d: 52           ld   d,d
a99e: 45           ld   b,l
a99f: 53           ld   d,e
a9a0: 53           ld   d,e
a9a1: 20 43        jr   nz,$A9E6
a9a3: 54           ld   d,h
a9a4: 52           ld   d,d
a9a5: 4c           ld   c,h
a9a6: 2d           dec  l
a9a7: 53           ld   d,e
a9a8: 54           ld   d,h
a9a9: 4f           ld   c,a
a9aa: 50           ld   d,b
a9ab: 20 54        jr   nz,$AA01
a9ad: 4f           ld   c,a
a9ae: 20 43        jr   nz,$A9F3
a9b0: 4f           ld   c,a
a9b1: 4e           ld   c,(hl)
a9b2: 54           ld   d,h
a9b3: 49           ld   c,c
a9b4: 4e           ld   c,(hl)
a9b5: 55           ld   d,l
a9b6: 45           ld   b,l
a9b7: 00           nop
a9b8: 00           nop
a9b9: 00           nop
a9ba: 00           nop
a9bb: 00           nop
a9bc: 00           nop
a9bd: 00           nop
a9be: 00           nop
a9bf: 00           nop
a9c0: 00           nop
a9c1: 00           nop
a9c2: 00           nop
a9c3: 00           nop
a9c4: 00           nop
a9c5: 00           nop
a9c6: 00           nop
a9c7: 00           nop
a9c8: 00           nop
a9c9: 00           nop
a9ca: 00           nop
a9cb: 00           nop
a9cc: 00           nop
a9cd: 00           nop
a9ce: 00           nop
a9cf: 00           nop
a9d0: 00           nop
a9d1: 00           nop
a9d2: 00           nop
a9d3: 00           nop
a9d4: 00           nop
a9d5: 00           nop
a9d6: 00           nop
a9d7: 00           nop
a9d8: 00           nop
a9d9: 00           nop
a9da: 00           nop
a9db: 00           nop
a9dc: 00           nop
a9dd: 00           nop
a9de: 00           nop
a9df: 00           nop
a9e0: 00           nop
a9e1: 00           nop
a9e2: 00           nop
a9e3: 00           nop
a9e4: 90           sub  b
a9e5: f4 3e 01     call p,$013E
a9e8: cd 27 f3     call $F327
a9eb: 3e c3        ld   a,$C3
a9ed: 32 00 00     ld   ($0000),a
a9f0: 32 05 00     ld   ($0005),a
a9f3: 21 03 f0     ld   hl,$F003
a9f6: 22 01 00     ld   ($0001),hl
a9f9: 21 06 e2     ld   hl,$E206
a9fc: 22 06 00     ld   ($0006),hl
a9ff: 3a 04 00     ld   a,($0004)
aa02: 4f           ld   c,a
aa03: c3 00 da     jp   $DA00
aa06: ff           rst  $38
aa07: ff           rst  $38
aa08: f1           pop  af
aa09: cd d5 f4     call $F4D5
aa0c: c3 d2 f2     jp   $F2D2
aa0f: f1           pop  af
aa10: 4f           ld   c,a
aa11: 3a 6c f0     ld   a,($F06C)
aa14: 47           ld   b,a
aa15: cd 9b f3     call $F39B
aa18: 11 00 00     ld   de,$0000
aa1b: 21 00 00     ld   hl,$0000
aa1e: 01 08 00     ld   bc,$0008
aa21: cd a5 f3     call $F3A5
aa24: c9           ret
aa25: 47           ld   b,a
aa26: 21 ff ef     ld   hl,$EFFF
aa29: b7           or   a
aa2a: ed 52        sbc  hl,de
aa2c: da f0 f4     jp   c,$F4F0
aa2f: 3a b6 f4     ld   a,($F4B6)
aa32: b8           cp   b
aa33: 28 26        jr   z,$AA5B
aa35: 3a b7 f4     ld   a,($F4B7)
aa38: b8           cp   b
aa39: 28 20        jr   z,$AA5B
aa3b: 3e 01        ld   a,$01
aa3d: b8           cp   b
aa3e: 28 1b        jr   z,$AA5B
aa40: af           xor  a
aa41: cd 27 f3     call $F327
aa44: 21 e1 0a     ld   hl,$0AE1
aa47: 3e 0a        ld   a,$0A
aa49: 0e 00        ld   c,$00
aa4b: cd ec 12     call $12EC
aa4e: cd 6a 16     call $166A
aa51: cd 69 12     call $1269
aa54: af           xor  a
aa55: cd ef 12     call $12EF
aa58: c3 62 00     jp   $0062
aa5b: c5           push bc
aa5c: d5           push de
aa5d: 3a 6c f0     ld   a,($F06C)
aa60: 4f           ld   c,a
aa61: cd 9b f3     call $F39B
aa64: 11 00 00     ld   de,$0000
aa67: 21 00 00     ld   hl,$0000
aa6a: 01 08 00     ld   bc,$0008
aa6d: cd a5 f3     call $F3A5
aa70: e1           pop  hl
aa71: f1           pop  af
aa72: c9           ret
aa73: f1           pop  af
aa74: cd d5 f4     call $F4D5
aa77: cd 27 f3     call $F327
aa7a: e9           jp   (hl)
aa7b: 3a 7b f5     ld   a,($F57B)
aa7e: b7           or   a
aa7f: 28 02        jr   z,$AA83
aa81: 3e ff        ld   a,$FF
aa83: c9           ret
aa84: 20 50        jr   nz,$AAD6
aa86: 52           ld   d,d
aa87: 45           ld   b,l
aa88: 53           ld   d,e
aa89: 53           ld   d,e
aa8a: 20 52        jr   nz,$AADE
aa8c: 45           ld   b,l
aa8d: 53           ld   d,e
aa8e: 45           ld   b,l
aa8f: 54           ld   d,h
aa90: 20 42        jr   nz,$AAD4
aa92: 55           ld   d,l
aa93: 54           ld   d,h
aa94: 54           ld   d,h
aa95: 4f           ld   c,a
aa96: 4e           ld   c,(hl)
aa97: 00           nop
aa98: 3a 14 98     ld   a,($9814)
aa9b: b7           or   a
aa9c: 28 12        jr   z,$AAB0
aa9e: 3a 40 98     ld   a,($9840)
aaa1: b7           or   a
aaa2: 28 0c        jr   z,$AAB0
aaa4: 21 34 f5     ld   hl,$F534
aaa7: 3e 03        ld   a,$03
aaa9: 0e 00        ld   c,$00
aaab: cd ec 12     call $12EC
aaae: f3           di
aaaf: 76           halt
aab0: 3e e0        ld   a,$E0
aab2: cd ea 18     call $18EA
aab5: af           xor  a
aab6: cd ea 18     call $18EA
aab9: cd ea 18     call $18EA
aabc: 3e 03        ld   a,$03
aabe: d3 17        out  ($17),a
aac0: af           xor  a
aac1: d3 20        out  ($20),a
aac3: d3 4d        out  ($4D),a
aac5: af           xor  a
aac6: d3 1c        out  ($1C),a
aac8: c3 00 00     jp   $0000
aacb: 00           nop
aacc: e3           ex   (sp),hl
aacd: 26 00        ld   h,$00
aacf: e3           ex   (sp),hl
aad0: 26 00        ld   h,$00
aad2: e3           ex   (sp),hl
aad3: 26 00        ld   h,$00
aad5: e3           ex   (sp),hl
aad6: 26 00        ld   h,$00
aad8: c9           ret
aad9: 25           dec  h
aada: 00           nop
aadb: e3           ex   (sp),hl
aadc: 26 00        ld   h,$00
aade: e3           ex   (sp),hl
aadf: 26 00        ld   h,$00
aae1: e3           ex   (sp),hl
aae2: 26 00        ld   h,$00
aae4: e3           ex   (sp),hl
aae5: 26 00        ld   h,$00
aae7: e3           ex   (sp),hl
aae8: 26 00        ld   h,$00
aaea: 10 11        djnz $AAFD
aaec: 00           nop
aaed: e3           ex   (sp),hl
aaee: 26 00        ld   h,$00
aaf0: e3           ex   (sp),hl
aaf1: 26 00        ld   h,$00
aaf3: f0           ret  p
aaf4: 4a           ld   c,d
aaf5: 00           nop
aaf6: e3           ex   (sp),hl
aaf7: 26 00        ld   h,$00
aaf9: e3           ex   (sp),hl
aafa: 26 00        ld   h,$00
aafc: 0f           rrca
aafd: 26 00        ld   h,$00
aaff: 46           ld   b,(hl)
ab00: 26 00        ld   h,$00
ab02: c9           ret
ab03: c9           ret
ab04: 2a 07 e2     ld   hl,($E207)
ab07: 22 c1 f5     ld   ($F5C1),hl
ab0a: 21 c5 f5     ld   hl,$F5C5
ab0d: 22 07 e2     ld   ($E207),hl
ab10: c9           ret
ab11: 00           nop
ab12: 00           nop
ab13: 00           nop
ab14: 00           nop
ab15: f3           di
ab16: ed 73 c3 f5  ld   ($F5C3),sp
ab1a: 31 00 00     ld   sp,$0000
ab1d: f5           push af
ab1e: c5           push bc
ab1f: d5           push de
ab20: e5           push hl
ab21: 3a 6c f0     ld   a,($F06C)
ab24: 32 65 f0     ld   ($F065),a
ab27: af           xor  a
ab28: 32 6c f0     ld   ($F06C),a
ab2b: 3e 12        ld   a,$12
ab2d: d3 18        out  ($18),a
ab2f: fb           ei
ab30: c3 0a 28     jp   $280A
ab33: f3           di
ab34: 3a 65 f0     ld   a,($F065)
ab37: cd 27 f3     call $F327
ab3a: e1           pop  hl
ab3b: d1           pop  de
ab3c: c1           pop  bc
ab3d: f1           pop  af
ab3e: ed 7b c3 f5  ld   sp,($F5C3)
ab42: fb           ei
ab43: 2a c1 f5     ld   hl,($F5C1)
ab46: e9           jp   (hl)
ab47: 00           nop
ab48: 00           nop
ab49: 00           nop
ab4a: 00           nop
ab4b: 00           nop
ab4c: 00           nop
ab4d: 00           nop
ab4e: 00           nop
ab4f: 00           nop
ab50: 00           nop
ab51: 00           nop
ab52: 00           nop
ab53: 00           nop
ab54: 00           nop
ab55: 00           nop
ab56: 00           nop
ab57: 00           nop
ab58: 00           nop
ab59: 00           nop
ab5a: 00           nop
ab5b: 00           nop
ab5c: 00           nop
ab5d: 00           nop
ab5e: 00           nop
ab5f: 00           nop
ab60: 00           nop
ab61: 00           nop
ab62: 00           nop
ab63: 00           nop
ab64: 00           nop
ab65: 00           nop
ab66: 00           nop
ab67: 00           nop
ab68: 00           nop
ab69: 80           add  a,b
ab6a: 00           nop
ab6b: 00           nop
ab6c: 00           nop
ab6d: 00           nop
ab6e: 00           nop
ab6f: 00           nop
ab70: 00           nop
ab71: 00           nop
ab72: 00           nop
ab73: 00           nop
ab74: 00           nop
ab75: 00           nop
ab76: 00           nop
ab77: 00           nop
ab78: 00           nop
ab79: 00           nop
ab7a: 00           nop
ab7b: 00           nop
ab7c: 00           nop
ab7d: 00           nop
ab7e: 00           nop
ab7f: 00           nop
ab80: 00           nop
ab81: 00           nop
ab82: 00           nop
ab83: 00           nop
ab84: 00           nop
ab85: 00           nop
ab86: 00           nop
ab87: 00           nop
ab88: 00           nop
ab89: 00           nop
ab8a: 00           nop
ab8b: 00           nop
ab8c: 00           nop
ab8d: 00           nop
ab8e: 00           nop
ab8f: 34           inc  (hl)
ab90: 92           sub  d
ab91: 58           ld   e,b
ab92: 93           sub  e
ab93: 28 93        jr   z,$AB28
ab95: dd           db   $dd
ab96: 91           sub  c
ab97: 00           nop
ab98: 00           nop
ab99: 00           nop
ab9a: 00           nop
ab9b: 00           nop
ab9c: 00           nop
ab9d: 00           nop
ab9e: 00           nop
ab9f: 00           nop
aba0: 00           nop
aba1: 00           nop
aba2: 00           nop
aba3: 70           ld   (hl),b
aba4: ff           rst  $38
aba5: 77           ld   (hl),a
aba6: f6 f0        or   $F0
aba8: fc 8e fc     call m,$FC8E
abab: 34           inc  (hl)
abac: 92           sub  d
abad: 58           ld   e,b
abae: 93           sub  e
abaf: 28 93        jr   z,$AB44
abb1: dd           db   $dd
abb2: 91           sub  c
abb3: 00           nop
abb4: 00           nop
abb5: 00           nop
abb6: 01 00 00     ld   bc,$0000
abb9: 00           nop
abba: 00           nop
abbb: 00           nop
abbc: 00           nop
abbd: 00           nop
abbe: 00           nop
abbf: 70           ld   (hl),b
abc0: ff           rst  $38
abc1: 95           sub  l
abc2: f6 30        or   $30
abc4: fd           db   $fd
abc5: bf           cp   a
abc6: fc 50 00     call m,$0050
abc9: 04           inc  b
abca: 0f           rrca
abcb: 01 bd 00     ld   bc,$00BD
abce: 7f           ld   a,a
abcf: 00           nop
abd0: c0           ret  nz
abd1: 00           nop
abd2: 20 00        jr   nz,$ABD4
abd4: 02           ld   (bc),a
abd5: 00           nop
abd6: 50           ld   d,b
abd7: 00           nop
abd8: 04           inc  b
abd9: 0f           rrca
abda: 00           nop
abdb: 85           add  a,l
abdc: 01 ff 00     ld   bc,$00FF
abdf: f0           ret  p
abe0: 00           nop
abe1: 40           ld   b,b
abe2: 00           nop
abe3: 02           ld   (bc),a
abe4: 00           nop
abe5: 50           ld   d,b
abe6: 00           nop
abe7: 04           inc  b
abe8: 0f           rrca
abe9: 01 bd 00     ld   bc,$00BD
abec: 7f           ld   a,a
abed: 00           nop
abee: c0           ret  nz
abef: 00           nop
abf0: 20 00        jr   nz,$ABF2
abf2: 02           ld   (bc),a
abf3: 00           nop
abf4: 10 50        djnz $AC46
abf6: 02           ld   (bc),a
abf7: 03           inc  bc
abf8: 0a           ld   a,(bc)
abf9: 0f           rrca
abfa: 02           ld   (bc),a
abfb: ff           rst  $38
abfc: 01 04 00     ld   bc,$0004
abff: 28 50        jr   z,$AC51
ac01: 00           nop
ac02: 04           inc  b
ac03: 0f           rrca
ac04: 00           nop
ac05: 85           add  a,l
ac06: 01 ff 00     ld   bc,$00FF
ac09: f0           ret  p
ac0a: 00           nop
ac0b: 40           ld   b,b
ac0c: 00           nop
ac0d: 02           ld   (bc),a
ac0e: 00           nop
ac0f: 10 50        djnz $AC61
ac11: 02           ld   (bc),a
ac12: 03           inc  bc
ac13: 0a           ld   a,(bc)
ac14: 0f           rrca
ac15: 02           ld   (bc),a
ac16: ff           rst  $38
ac17: 01 04 00     ld   bc,$0004
ac1a: 50           ld   d,b
ac1b: 6a           ld   l,d
ac1c: 98           sbc  a,b
ac1d: 8d           adc  a,l
ac1e: 98           sbc  a,b
ac1f: 7b           ld   a,e
ac20: 98           sbc  a,b
ac21: 41           ld   b,c
ac22: 98           sbc  a,b
ac23: 2b           dec  hl
ac24: 9f           sbc  a,a
ac25: 00           nop
ac26: 00           nop
ac27: 00           nop
ac28: 00           nop
ac29: 00           nop
ac2a: 00           nop
ac2b: 00           nop
ac2c: 00           nop
ac2d: 00           nop
ac2e: 00           nop
ac2f: 8e           adc  a,(hl)
ac30: fb           ei
ac31: 03           inc  bc
ac32: f7           rst  $30
ac33: 12           ld   (de),a
ac34: f7           rst  $30
ac35: 2c           inc  l
ac36: f9           ld   sp,hl
ac37: 6a           ld   l,d
ac38: 98           sbc  a,b
ac39: 8d           adc  a,l
ac3a: 98           sbc  a,b
ac3b: 7b           ld   a,e
ac3c: 98           sbc  a,b
ac3d: 41           ld   b,c
ac3e: 98           sbc  a,b
ac3f: 00           nop
ac40: 00           nop
ac41: 00           nop
ac42: 01 00 00     ld   bc,$0000
ac45: 00           nop
ac46: 00           nop
ac47: 00           nop
ac48: 00           nop
ac49: 00           nop
ac4a: 00           nop
ac4b: 8e           adc  a,(hl)
ac4c: fb           ei
ac4d: 03           inc  bc
ac4e: f7           rst  $30
ac4f: 12           ld   (de),a
ac50: f7           rst  $30
ac51: 5d           ld   e,l
ac52: fa 40 00     jp   m,$0040
ac55: 04           inc  b
ac56: 0f           rrca
ac57: 00           nop
ac58: 87           add  a,a
ac59: 09           add  hl,bc
ac5a: ff           rst  $38
ac5b: 03           inc  bc
ac5c: ff           rst  $38
ac5d: ff           rst  $38
ac5e: 00           nop
ac5f: 00           nop
ac60: 02           ld   (bc),a
ac61: 00           nop
ac62: 3a 35 27     ld   a,($2735)
ac65: b7           or   a
ac66: c8           ret  z
ac67: af           xor  a
ac68: 32 65 9b     ld   ($9B65),a
ac6b: 3e 02        ld   a,$02
ac6d: cd 27 f3     call $F327
ac70: 01 00 08     ld   bc,$0800
ac73: 21 00 00     ld   hl,$0000
ac76: 3e e5        ld   a,$E5
ac78: 77           ld   (hl),a
ac79: 23           inc  hl
ac7a: 0b           dec  bc
ac7b: 79           ld   a,c
ac7c: b0           or   b
ac7d: c2 26 f7     jp   nz,$F726
ac80: 3e 00        ld   a,$00
ac82: cd 27 f3     call $F327
ac85: c9           ret
ac86: e4 9a f2     call po,$F29A
ac89: 9a           sbc  a,d
ac8a: ec 9a e3     call pe,$E39A
ac8d: 9a           sbc  a,d
ac8e: 12           ld   (de),a
ac8f: f7           rst  $30
ac90: 00           nop
ac91: 00           nop
ac92: 00           nop
ac93: 00           nop
ac94: 00           nop
ac95: 00           nop
ac96: 00           nop
ac97: 00           nop
ac98: 00           nop
ac99: 00           nop
ac9a: 0e fc        ld   c,$FC
ac9c: 52           ld   d,d
ac9d: f7           rst  $30
ac9e: 00           nop
ac9f: 00           nop
aca0: 61           ld   h,c
aca1: f7           rst  $30
aca2: 40           ld   b,b
aca3: 00           nop
aca4: 03           inc  bc
aca5: 07           rlca
aca6: 00           nop
aca7: 67           ld   h,a
aca8: 00           nop
aca9: 1f           rra
acaa: 00           nop
acab: 80           add  a,b
acac: 00           nop
acad: 00           nop
acae: 00           nop
acaf: 00           nop
acb0: 00           nop
acb1: 00           nop
acb2: 00           nop
acb3: 00           nop
acb4: 00           nop
acb5: 00           nop
acb6: 00           nop
acb7: 00           nop
acb8: 00           nop
acb9: 00           nop
acba: 00           nop
acbb: 00           nop
acbc: 00           nop
acbd: 00           nop
acbe: 00           nop
acbf: 00           nop
acc0: 00           nop
acc1: 00           nop
acc2: 00           nop
acc3: 00           nop
acc4: 00           nop
acc5: 00           nop
acc6: 00           nop
acc7: 00           nop
acc8: 00           nop
acc9: 00           nop
acca: 00           nop
accb: 00           nop
accc: 00           nop
accd: 00           nop
acce: 00           nop
accf: 00           nop
acd0: 00           nop
acd1: 00           nop
acd2: 00           nop
acd3: 00           nop
acd4: 00           nop
acd5: 3a 0e e5     ld   a,($E50E)
acd8: b7           or   a
acd9: f5           push af
acda: af           xor  a
acdb: 32 0e e5     ld   ($E50E),a
acde: f1           pop  af
acdf: ca e0 e4     jp   z,$E4E0
ace2: c3 01 e5     jp   $E501
ace5: 3a 0e e5     ld   a,($E50E)
ace8: b7           or   a
ace9: 28 03        jr   z,$ACEE
aceb: 3e 01        ld   a,$01
aced: c9           ret
acee: cd 5b 12     call $125B
acf1: e6 01        and  $01
acf3: c9           ret
acf4: 3e 0d        ld   a,$0D
acf6: b9           cp   c
acf7: 20 1d        jr   nz,$AD16
acf9: ed 73 c9 f7  ld   ($F7C9),sp
acfd: 31 d3 f7     ld   sp,$F7D3
ad00: c5           push bc
ad01: d5           push de
ad02: 0e 51        ld   c,$51
ad04: 1e 00        ld   e,$00
ad06: cd 5a f0     call $F05A
ad09: 0e 51        ld   c,$51
ad0b: 1e 01        ld   e,$01
ad0d: cd 5a f0     call $F05A
ad10: d1           pop  de
ad11: c1           pop  bc
ad12: ed 7b c9 f7  ld   sp,($F7C9)
ad16: c3 00 00     jp   $0000
ad19: 00           nop
ad1a: 00           nop
ad1b: 00           nop
ad1c: 00           nop
ad1d: 00           nop
ad1e: 00           nop
ad1f: 00           nop
ad20: 00           nop
ad21: 00           nop
ad22: 00           nop
ad23: 00           nop
ad24: 00           nop
ad25: 00           nop
ad26: 00           nop
ad27: 00           nop
ad28: 00           nop
ad29: 00           nop
ad2a: 00           nop
ad2b: 00           nop
ad2c: 00           nop
ad2d: 00           nop
ad2e: 00           nop
ad2f: 00           nop
ad30: 00           nop
ad31: 00           nop
ad32: 00           nop
ad33: 00           nop
ad34: 00           nop
ad35: 00           nop
ad36: 00           nop
ad37: 00           nop
ad38: 00           nop
ad39: 00           nop
ad3a: 00           nop
ad3b: 00           nop
ad3c: 00           nop
ad3d: 00           nop
ad3e: 00           nop
ad3f: 00           nop
ad40: 00           nop
ad41: 00           nop
ad42: 00           nop
ad43: 00           nop
ad44: 00           nop
ad45: 00           nop
ad46: 00           nop
ad47: 00           nop
ad48: 00           nop
ad49: 00           nop
ad4a: 00           nop
ad4b: 00           nop
ad4c: 00           nop
ad4d: 00           nop
ad4e: 00           nop
ad4f: 00           nop
ad50: 38 19        jr   c,$AD6B
ad52: 22 aa 38     ld   ($38AA),hl
ad55: ed 5b c9 38  ld   de,($38C9)
ad59: ed 53 ae 38  ld   ($38AE),de
ad5d: ed 52        sbc  hl,de
ad5f: 22 cf 38     ld   ($38CF),hl
ad62: 3a ad 38     ld   a,($38AD)
ad65: 3d           dec  a
ad66: cc 10 2d     call z,$2D10
ad69: 28 0a        jr   z,$AD75
ad6b: 32 ad 38     ld   ($38AD),a
ad6e: 3a b1 38     ld   a,($38B1)
ad71: 3c           inc  a
ad72: 32 b1 38     ld   ($38B1),a
ad75: db 38        in   a,($38)
ad77: e6 20        and  $20
ad79: 28 fa        jr   z,$AD75
ad7b: 21 a8 38     ld   hl,$38A8
ad7e: c3 da 00     jp   $00DA
