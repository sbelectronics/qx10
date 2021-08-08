0100: 00           nop
0101: 00           nop
0102: 00           nop
0103: 00           nop
0104: 00           nop
0105: 00           nop
0106: 00           nop
0107: 00           nop
0108: 00           nop
0109: 00           nop
010a: 00           nop
010b: 00           nop
010c: 00           nop
010d: 00           nop
010e: 00           nop
010f: 00           nop
0110: c3 de 13     jp   $13DE
0113: c3 57 02     jp   $0257
0116: c3 4c 01     jp   $014C
0119: c3 8f 01     jp   $018F
011c: c3 fe 01     jp   $01FE
011f: c3 03 05     jp   $0503
0122: c3 e0 05     jp   $05E0
0125: c3 09 06     jp   $0609
0128: c3 84 06     jp   $0684
012b: c3 45 0b     jp   $0B45
012e: c3 b1 06     jp   $06B1
0131: c3 ca 07     jp   $07CA
0134: c3 43 08     jp   $0843
0137: c3 0c 09     jp   $090C
013a: c3 5f 0e     jp   $0E5F
013d: c3 bb 0e     jp   $0EBB
0140: c3 17 10     jp   $1017
0143: c3 0d 11     jp   $110D
0146: c3 3e 11     jp   $113E
0149: c3 71 11     jp   $1171
014c: f0           ret  p
014d: 11 43 50     ld   de,$5043
0150: 2f           cpl
0151: 4d           ld   c,l
0152: 2d           dec  l
0153: 38 30        jr   c,$0185
0155: 20 42        jr   nz,$0199
0157: 20 52        jr   nz,$01AB
0159: 45           ld   b,l
015a: 4c           ld   c,h
015b: 45           ld   b,l
015c: 41           ld   b,c
015d: 53           ld   d,e
015e: 45           ld   b,l
015f: 20 20        jr   nz,$0181
0161: 20 f2        jr   nz,$0155
0163: 0c           inc  c
0164: 54           ld   d,h
0165: 69           ld   l,c
0166: 74           ld   (hl),h
0167: 61           ld   h,c
0168: 6e           ld   l,(hl)
0169: 20 4d        jr   nz,$01B8
016b: 53           ld   d,e
016c: 2d           dec  l
016d: 44           ld   b,h
016e: 4f           ld   c,a
016f: 53           ld   d,e
0170: 20 20        jr   nz,$0192
0172: 20 20        jr   nz,$0194
0174: 20 20        jr   nz,$0196
0176: 20 20        jr   nz,$0198
0178: f1           pop  af
0179: 0b           dec  bc
017a: 56           ld   d,(hl)
017b: 41           ld   b,c
017c: 4c           ld   c,h
017d: 44           ld   b,h
017e: 4f           ld   c,a
017f: 43           ld   b,e
0180: 53           ld   d,e
0181: 20 32        jr   nz,$01B5
0183: 2e 30        ld   l,$30
0185: 20 20        jr   nz,$01A7
0187: 20 20        jr   nz,$01A9
0189: 20 20        jr   nz,$01AB
018b: 20 20        jr   nz,$01AD
018d: 20 c9        jr   nz,$0158
018f: f0           ret  p
0190: 11 43 50     ld   de,$5043
0193: 2f           cpl
0194: 4d           ld   c,l
0195: 2d           dec  l
0196: 38 30        jr   c,$01C8
0198: 20 42        jr   nz,$01DC
019a: 20 52        jr   nz,$01EE
019c: 45           ld   b,l
019d: 4c           ld   c,h
019e: 45           ld   b,l
019f: 41           ld   b,c
01a0: 53           ld   d,e
01a1: 45           ld   b,l
01a2: 20 20        jr   nz,$01C4
01a4: 20 01        jr   nz,$01A7
01a6: 06 4d        ld   b,$4D
01a8: 53           ld   d,e
01a9: 2d           dec  l
01aa: 44           ld   b,h
01ab: 4f           ld   c,a
01ac: 53           ld   d,e
01ad: 20 20        jr   nz,$01CF
01af: 20 20        jr   nz,$01D1
01b1: 20 20        jr   nz,$01D3
01b3: 20 20        jr   nz,$01D5
01b5: 20 20        jr   nz,$01D7
01b7: 20 20        jr   nz,$01D9
01b9: 20 20        jr   nz,$01DB
01bb: db 12        in   a,($12)
01bd: 43           ld   b,e
01be: 4f           ld   c,a
01bf: 4e           ld   c,(hl)
01c0: 43           ld   b,e
01c1: 55           ld   d,l
01c2: 52           ld   d,d
01c3: 52           ld   d,d
01c4: 45           ld   b,l
01c5: 4e           ld   c,(hl)
01c6: 54           ld   d,h
01c7: 20 43        jr   nz,$020C
01c9: 50           ld   d,b
01ca: 2f           cpl
01cb: 4d           ld   c,l
01cc: 2d           dec  l
01cd: 38 36        jr   c,$0205
01cf: 20 20        jr   nz,$01F1
01d1: f2 0c 54     jp   p,$540C
01d4: 69           ld   l,c
01d5: 74           ld   (hl),h
01d6: 61           ld   h,c
01d7: 6e           ld   l,(hl)
01d8: 20 4d        jr   nz,$0227
01da: 53           ld   d,e
01db: 2d           dec  l
01dc: 44           ld   b,h
01dd: 4f           ld   c,a
01de: 53           ld   d,e
01df: 20 20        jr   nz,$0201
01e1: 20 20        jr   nz,$0203
01e3: 20 20        jr   nz,$0205
01e5: 20 20        jr   nz,$0207
01e7: f1           pop  af
01e8: 0b           dec  bc
01e9: 56           ld   d,(hl)
01ea: 41           ld   b,c
01eb: 4c           ld   c,h
01ec: 44           ld   b,h
01ed: 4f           ld   c,a
01ee: 43           ld   b,e
01ef: 53           ld   d,e
01f0: 20 32        jr   nz,$0224
01f2: 2e 30        ld   l,$30
01f4: 20 20        jr   nz,$0216
01f6: 20 20        jr   nz,$0218
01f8: 20 20        jr   nz,$021A
01fa: 20 20        jr   nz,$021C
01fc: 20 c9        jr   nz,$01C7
01fe: f0           ret  p
01ff: 11 43 50     ld   de,$5043
0202: 2f           cpl
0203: 4d           ld   c,l
0204: 2d           dec  l
0205: 38 30        jr   c,$0237
0207: 20 42        jr   nz,$024B
0209: 20 52        jr   nz,$025D
020b: 45           ld   b,l
020c: 4c           ld   c,h
020d: 45           ld   b,l
020e: 41           ld   b,c
020f: 53           ld   d,e
0210: 45           ld   b,l
0211: 20 20        jr   nz,$0233
0213: 20 01        jr   nz,$0216
0215: 06 4d        ld   b,$4D
0217: 53           ld   d,e
0218: 2d           dec  l
0219: 44           ld   b,h
021a: 4f           ld   c,a
021b: 53           ld   d,e
021c: 20 20        jr   nz,$023E
021e: 20 20        jr   nz,$0240
0220: 20 20        jr   nz,$0242
0222: 20 20        jr   nz,$0244
0224: 20 20        jr   nz,$0246
0226: 20 20        jr   nz,$0248
0228: 20 20        jr   nz,$024A
022a: db 12        in   a,($12)
022c: 43           ld   b,e
022d: 4f           ld   c,a
022e: 4e           ld   c,(hl)
022f: 43           ld   b,e
0230: 55           ld   d,l
0231: 52           ld   d,d
0232: 52           ld   d,d
0233: 45           ld   b,l
0234: 4e           ld   c,(hl)
0235: 54           ld   d,h
0236: 20 43        jr   nz,$027B
0238: 50           ld   d,b
0239: 2f           cpl
023a: 4d           ld   c,l
023b: 2d           dec  l
023c: 38 36        jr   c,$0274
023e: 20 20        jr   nz,$0260
0240: f1           pop  af
0241: 0b           dec  bc
0242: 56           ld   d,(hl)
0243: 41           ld   b,c
0244: 4c           ld   c,h
0245: 44           ld   b,h
0246: 4f           ld   c,a
0247: 43           ld   b,e
0248: 53           ld   d,e
0249: 20 32        jr   nz,$027D
024b: 2e 30        ld   l,$30
024d: 20 20        jr   nz,$026F
024f: 20 20        jr   nz,$0271
0251: 20 20        jr   nz,$0273
0253: 20 20        jr   nz,$0275
0255: 20 c9        jr   nz,$0220
0257: cd 76 26     call $2676
025a: e1           pop  hl
025b: 22 e9 15     ld   ($15E9),hl
025e: 2a e9 15     ld   hl,($15E9)
0261: e5           push hl
0262: 21 01 00     ld   hl,$0001
0265: e5           push hl
0266: cd 71 3c     call $3C71
0269: f1           pop  af
026a: d2 b8 02     jp   nc,$02B8
026d: cd aa 26     call $26AA
0270: f1           pop  af
0271: d2 96 02     jp   nc,$0296
0274: 21 1d 01     ld   hl,$011D
0277: 5e           ld   e,(hl)
0278: 23           inc  hl
0279: 56           ld   d,(hl)
027a: eb           ex   de,hl
027b: 22 3f 16     ld   ($163F),hl
027e: 2a 3f 16     ld   hl,($163F)
0281: e5           push hl
0282: 21 ef 14     ld   hl,$14EF
0285: e5           push hl
0286: 21 58 00     ld   hl,$0058
0289: e5           push hl
028a: cd e1 36     call $36E1
028d: 21 04 00     ld   hl,$0004
0290: 22 cb 15     ld   ($15CB),hl
0293: c3 b5 02     jp   $02B5
0296: 21 1a 01     ld   hl,$011A
0299: 5e           ld   e,(hl)
029a: 23           inc  hl
029b: 56           ld   d,(hl)
029c: eb           ex   de,hl
029d: 22 3f 16     ld   ($163F),hl
02a0: 2a 3f 16     ld   hl,($163F)
02a3: e5           push hl
02a4: 21 ef 14     ld   hl,$14EF
02a7: e5           push hl
02a8: 21 6e 00     ld   hl,$006E
02ab: e5           push hl
02ac: cd e1 36     call $36E1
02af: 21 05 00     ld   hl,$0005
02b2: 22 cb 15     ld   ($15CB),hl
02b5: c3 d7 02     jp   $02D7
02b8: 21 17 01     ld   hl,$0117
02bb: 5e           ld   e,(hl)
02bc: 23           inc  hl
02bd: 56           ld   d,(hl)
02be: eb           ex   de,hl
02bf: 22 3f 16     ld   ($163F),hl
02c2: 2a 3f 16     ld   hl,($163F)
02c5: e5           push hl
02c6: 21 ef 14     ld   hl,$14EF
02c9: e5           push hl
02ca: 21 42 00     ld   hl,$0042
02cd: e5           push hl
02ce: cd e1 36     call $36E1
02d1: 21 03 00     ld   hl,$0003
02d4: 22 cb 15     ld   ($15CB),hl
02d7: 21 01 00     ld   hl,$0001
02da: 22 d7 15     ld   ($15D7),hl
02dd: 21 00 00     ld   hl,$0000
02e0: 22 d9 15     ld   ($15D9),hl
02e3: 21 cd 15     ld   hl,$15CD
02e6: e5           push hl
02e7: 21 0a 00     ld   hl,$000A
02ea: e5           push hl
02eb: 21 00 00     ld   hl,$0000
02ee: e5           push hl
02ef: cd 10 37     call $3710
02f2: cd af 2b     call $2BAF
02f5: 21 81 38     ld   hl,$3881
02f8: e5           push hl
02f9: cd f4 3c     call $3CF4
02fc: cd 15 03     call $0315
02ff: 15           dec  d
0300: 43           ld   b,e
0301: 68           ld   l,b
0302: 65           ld   h,l
0303: 63           ld   h,e
0304: 6b           ld   l,e
0305: 69           ld   l,c
0306: 6e           ld   l,(hl)
0307: 67           ld   h,a
0308: 20 48        jr   nz,$0352
030a: 61           ld   h,c
030b: 72           ld   (hl),d
030c: 64           ld   h,h
030d: 20 44        jr   nz,$0353
030f: 69           ld   l,c
0310: 73           ld   (hl),e
0311: 6b           ld   l,e
0312: 2e 2e        ld   l,$2E
0314: 2e cd        ld   l,$CD
0316: fa 3c cd     jp   m,$CD3C
0319: 6b           ld   l,e
031a: 3d           dec  a
031b: cd 57 2c     call $2C57
031e: cd bb 26     call $26BB
0321: 21 00 00     ld   hl,$0000
0324: e5           push hl
0325: cd b9 3c     call $3CB9
0328: f1           pop  af
0329: d2 5c 03     jp   nc,$035C
032c: 21 eb 15     ld   hl,$15EB
032f: e5           push hl
0330: cd 52 03     call $0352
0333: 1e 48        ld   e,$48
0335: 61           ld   h,c
0336: 72           ld   (hl),d
0337: 64           ld   h,h
0338: 20 64        jr   nz,$039E
033a: 69           ld   l,c
033b: 73           ld   (hl),e
033c: 6b           ld   l,e
033d: 20 6e        jr   nz,$03AD
033f: 6f           ld   l,a
0340: 74           ld   (hl),h
0341: 20 72        jr   nz,$03B5
0343: 65           ld   h,l
0344: 61           ld   h,c
0345: 64           ld   h,h
0346: 79           ld   a,c
0347: 20 2d        jr   nz,$0376
0349: 20 61        jr   nz,$03AC
034b: 62           ld   h,d
034c: 6f           ld   l,a
034d: 72           ld   (hl),d
034e: 74           ld   (hl),h
034f: 69           ld   l,c
0350: 6e           ld   l,(hl)
0351: 67           ld   h,a
0352: 21 50 00     ld   hl,$0050
0355: e5           push hl
0356: cd 1a 3d     call $3D1A
0359: cd 43 01     call $0143
035c: 21 00 00     ld   hl,$0000
035f: 22 ed 14     ld   ($14ED),hl
0362: cd 36 2b     call $2B36
0365: e1           pop  hl
0366: 22 3d 16     ld   ($163D),hl
0369: 2a 3d 16     ld   hl,($163D)
036c: e5           push hl
036d: 21 00 00     ld   hl,$0000
0370: e5           push hl
0371: cd b9 3c     call $3CB9
0374: f1           pop  af
0375: d2 b9 04     jp   nc,$04B9
0378: cd cb 35     call $35CB
037b: 21 00 00     ld   hl,$0000
037e: e5           push hl
037f: 21 0c 00     ld   hl,$000C
0382: e5           push hl
0383: cd 2b 2b     call $2B2B
0386: 21 50 00     ld   hl,$0050
0389: e5           push hl
038a: cd ac 03     call $03AC
038d: 1e 55        ld   e,$55
038f: 6e           ld   l,(hl)
0390: 61           ld   h,c
0391: 62           ld   h,d
0392: 6c           ld   l,h
0393: 65           ld   h,l
0394: 20 74        jr   nz,$040A
0396: 6f           ld   l,a
0397: 20 72        jr   nz,$040B
0399: 65           ld   h,l
039a: 61           ld   h,c
039b: 64           ld   h,h
039c: 20 70        jr   nz,$040E
039e: 61           ld   h,c
039f: 72           ld   (hl),d
03a0: 74           ld   (hl),h
03a1: 69           ld   l,c
03a2: 74           ld   (hl),h
03a3: 69           ld   l,c
03a4: 6f           ld   l,a
03a5: 6e           ld   l,(hl)
03a6: 20 74        jr   nz,$041C
03a8: 61           ld   h,c
03a9: 62           ld   h,d
03aa: 6c           ld   l,h
03ab: 65           ld   h,l
03ac: cd 05 35     call $3505
03af: 21 50 00     ld   hl,$0050
03b2: e5           push hl
03b3: cd f1 03     call $03F1
03b6: 3a 70 72     ld   a,($7270)
03b9: 65           ld   h,l
03ba: 73           ld   (hl),e
03bb: 73           ld   (hl),e
03bc: 20 52        jr   nz,$0410
03be: 45           ld   b,l
03bf: 54           ld   d,h
03c0: 55           ld   d,l
03c1: 52           ld   d,d
03c2: 4e           ld   c,(hl)
03c3: 20 74        jr   nz,$0439
03c5: 6f           ld   l,a
03c6: 20 63        jr   nz,$042B
03c8: 72           ld   (hl),d
03c9: 65           ld   h,l
03ca: 61           ld   h,c
03cb: 74           ld   (hl),h
03cc: 65           ld   h,l
03cd: 20 61        jr   nz,$0430
03cf: 20 6e        jr   nz,$043F
03d1: 65           ld   h,l
03d2: 77           ld   (hl),a
03d3: 20 74        jr   nz,$0449
03d5: 61           ld   h,c
03d6: 62           ld   h,d
03d7: 6c           ld   l,h
03d8: 65           ld   h,l
03d9: 20 20        jr   nz,$03FB
03db: 2d           dec  l
03dc: 20 20        jr   nz,$03FE
03de: 70           ld   (hl),b
03df: 72           ld   (hl),d
03e0: 65           ld   h,l
03e1: 73           ld   (hl),e
03e2: 73           ld   (hl),e
03e3: 20 53        jr   nz,$0438
03e5: 50           ld   d,b
03e6: 41           ld   b,c
03e7: 43           ld   b,e
03e8: 45           ld   b,l
03e9: 20 74        jr   nz,$045F
03eb: 6f           ld   l,a
03ec: 20 65        jr   nz,$0453
03ee: 78           ld   a,b
03ef: 69           ld   l,c
03f0: 74           ld   (hl),h
03f1: cd 14 35     call $3514
03f4: cd f8 16     call $16F8
03f7: 3a 41 16     ld   a,($1641)
03fa: 26 00        ld   h,$00
03fc: 6f           ld   l,a
03fd: e5           push hl
03fe: 21 20 00     ld   hl,$0020
0401: e5           push hl
0402: cd 71 3c     call $3C71
0405: f1           pop  af
0406: d2 0c 04     jp   nc,$040C
0409: cd 46 01     call $0146
040c: 2a 3d 16     ld   hl,($163D)
040f: eb           ex   de,hl
0410: 21 02 00     ld   hl,$0002
0413: 7d           ld   a,l
0414: a3           and  e
0415: 6f           ld   l,a
0416: 7c           ld   a,h
0417: a2           and  d
0418: 67           ld   h,a
0419: e5           push hl
041a: 21 00 00     ld   hl,$0000
041d: e5           push hl
041e: cd a4 3c     call $3CA4
0421: f1           pop  af
0422: d2 b6 04     jp   nc,$04B6
0425: cd cb 35     call $35CB
0428: 21 00 00     ld   hl,$0000
042b: e5           push hl
042c: 21 0c 00     ld   hl,$000C
042f: e5           push hl
0430: cd 2b 2b     call $2B2B
0433: 21 50 00     ld   hl,$0050
0436: e5           push hl
0437: cd 50 04     call $0450
043a: 15           dec  d
043b: 45           ld   b,l
043c: 72           ld   (hl),d
043d: 72           ld   (hl),d
043e: 6f           ld   l,a
043f: 72           ld   (hl),d
0440: 20 72        jr   nz,$04B4
0442: 65           ld   h,l
0443: 61           ld   h,c
0444: 64           ld   h,h
0445: 69           ld   l,c
0446: 6e           ld   l,(hl)
0447: 67           ld   h,a
0448: 20 74        jr   nz,$04BE
044a: 72           ld   (hl),d
044b: 61           ld   h,c
044c: 63           ld   h,e
044d: 6b           ld   l,e
044e: 20 30        jr   nz,$0480
0450: cd 05 35     call $3505
0453: 21 50 00     ld   hl,$0050
0456: e5           push hl
0457: cd 98 04     call $0498
045a: 3d           dec  a
045b: 70           ld   (hl),b
045c: 72           ld   (hl),d
045d: 65           ld   h,l
045e: 73           ld   (hl),e
045f: 73           ld   (hl),e
0460: 20 52        jr   nz,$04B4
0462: 45           ld   b,l
0463: 54           ld   d,h
0464: 55           ld   d,l
0465: 52           ld   d,d
0466: 4e           ld   c,(hl)
0467: 20 74        jr   nz,$04DD
0469: 6f           ld   l,a
046a: 20 63        jr   nz,$04CF
046c: 6f           ld   l,a
046d: 6e           ld   l,(hl)
046e: 74           ld   (hl),h
046f: 69           ld   l,c
0470: 6e           ld   l,(hl)
0471: 75           ld   (hl),l
0472: 65           ld   h,l
0473: 20 74        jr   nz,$04E9
0475: 72           ld   (hl),d
0476: 61           ld   h,c
0477: 63           ld   h,e
0478: 6b           ld   l,e
0479: 20 30        jr   nz,$04AB
047b: 20 66        jr   nz,$04E3
047d: 6f           ld   l,a
047e: 72           ld   (hl),d
047f: 6d           ld   l,l
0480: 61           ld   h,c
0481: 74           ld   (hl),h
0482: 20 2d        jr   nz,$04B1
0484: 20 70        jr   nz,$04F6
0486: 72           ld   (hl),d
0487: 65           ld   h,l
0488: 73           ld   (hl),e
0489: 73           ld   (hl),e
048a: 20 53        jr   nz,$04DF
048c: 50           ld   d,b
048d: 41           ld   b,c
048e: 43           ld   b,e
048f: 45           ld   b,l
0490: 20 74        jr   nz,$0506
0492: 6f           ld   l,a
0493: 20 65        jr   nz,$04FA
0495: 78           ld   a,b
0496: 69           ld   l,c
0497: 74           ld   (hl),h
0498: cd 14 35     call $3514
049b: cd f8 16     call $16F8
049e: 3a 41 16     ld   a,($1641)
04a1: 26 00        ld   h,$00
04a3: 6f           ld   l,a
04a4: e5           push hl
04a5: 21 20 00     ld   hl,$0020
04a8: e5           push hl
04a9: cd 71 3c     call $3C71
04ac: f1           pop  af
04ad: d2 b3 04     jp   nc,$04B3
04b0: cd 46 01     call $0146
04b3: cd 61 2c     call $2C61          ; CALL format_and_write_track
04b6: c3 fc 04     jp   $04FC
04b9: cd 1f 01     call $011F
04bc: 21 ad 14     ld   hl,$14AD
04bf: e5           push hl
04c0: 2a ed 14     ld   hl,($14ED)
04c3: 23           inc  hl
04c4: 2b           dec  hl
04c5: e5           push hl
04c6: 21 10 00     ld   hl,$0010
04c9: e5           push hl
04ca: cd f5 3e     call $3EF5
04cd: e1           pop  hl
04ce: d1           pop  de
04cf: 19           add  hl,de
04d0: 23           inc  hl
04d1: 23           inc  hl
04d2: 23           inc  hl
04d3: 23           inc  hl
04d4: 16 00        ld   d,$00
04d6: 5e           ld   e,(hl)
04d7: d5           push de
04d8: 21 00 00     ld   hl,$0000
04db: e5           push hl
04dc: cd a4 3c     call $3CA4
04df: 2a ed 14     ld   hl,($14ED)
04e2: e5           push hl
04e3: 21 04 00     ld   hl,$0004
04e6: e5           push hl
04e7: cd d9 3c     call $3CD9
04ea: e1           pop  hl
04eb: d1           pop  de
04ec: 7d           ld   a,l
04ed: a3           and  e
04ee: 1f           rra
04ef: d2 fc 04     jp   nc,$04FC
04f2: 2a ed 14     ld   hl,($14ED)
04f5: 23           inc  hl
04f6: 22 ed 14     ld   ($14ED),hl
04f9: c3 bc 04     jp   $04BC
04fc: cd f2 16     call $16F2
04ff: cd d4 16     call $16D4
0502: c9           ret
0503: 21 01 00     ld   hl,$0001
0506: 22 61 16     ld   ($1661),hl
0509: 21 ad 14     ld   hl,$14AD
050c: e5           push hl
050d: 2a 61 16     ld   hl,($1661)
0510: 2b           dec  hl
0511: e5           push hl
0512: 21 10 00     ld   hl,$0010
0515: e5           push hl
0516: cd f5 3e     call $3EF5
0519: e1           pop  hl
051a: d1           pop  de
051b: 19           add  hl,de
051c: 23           inc  hl
051d: 23           inc  hl
051e: 23           inc  hl
051f: 23           inc  hl
0520: 16 00        ld   d,$00
0522: 5e           ld   e,(hl)
0523: d5           push de
0524: 21 00 00     ld   hl,$0000
0527: e5           push hl
0528: cd 71 3c     call $3C71
052b: f1           pop  af
052c: d2 df 05     jp   nc,$05DF
052f: 2a 61 16     ld   hl,($1661)
0532: 23           inc  hl
0533: 22 5f 16     ld   ($165F),hl
0536: 21 ad 14     ld   hl,$14AD
0539: e5           push hl
053a: 2a 5f 16     ld   hl,($165F)
053d: 2b           dec  hl
053e: e5           push hl
053f: 21 10 00     ld   hl,$0010
0542: e5           push hl
0543: cd f5 3e     call $3EF5
0546: e1           pop  hl
0547: d1           pop  de
0548: 19           add  hl,de
0549: 23           inc  hl
054a: 23           inc  hl
054b: 23           inc  hl
054c: 23           inc  hl
054d: 16 00        ld   d,$00
054f: 5e           ld   e,(hl)
0550: d5           push de
0551: 21 00 00     ld   hl,$0000
0554: e5           push hl
0555: cd 71 3c     call $3C71
0558: 2a 5f 16     ld   hl,($165F)
055b: e5           push hl
055c: 21 04 00     ld   hl,$0004
055f: e5           push hl
0560: cd d0 3c     call $3CD0
0563: e1           pop  hl
0564: d1           pop  de
0565: 7d           ld   a,l
0566: a3           and  e
0567: 1f           rra
0568: d2 75 05     jp   nc,$0575
056b: 2a 5f 16     ld   hl,($165F)
056e: 23           inc  hl
056f: 22 5f 16     ld   ($165F),hl
0572: c3 36 05     jp   $0536
0575: 2a 5f 16     ld   hl,($165F)
0578: e5           push hl
0579: 21 04 00     ld   hl,$0004
057c: e5           push hl
057d: cd a4 3c     call $3CA4
0580: f1           pop  af
0581: d2 87 05     jp   nc,$0587
0584: c3 df 05     jp   $05DF
0587: 21 ad 14     ld   hl,$14AD
058a: e5           push hl
058b: 2a 5f 16     ld   hl,($165F)
058e: 2b           dec  hl
058f: e5           push hl
0590: 21 10 00     ld   hl,$0010
0593: e5           push hl
0594: cd f5 3e     call $3EF5
0597: e1           pop  hl
0598: d1           pop  de
0599: 19           add  hl,de
059a: e5           push hl
059b: 21 ad 14     ld   hl,$14AD
059e: e5           push hl
059f: 2a 61 16     ld   hl,($1661)
05a2: 2b           dec  hl
05a3: e5           push hl
05a4: 21 10 00     ld   hl,$0010
05a7: e5           push hl
05a8: cd f5 3e     call $3EF5
05ab: e1           pop  hl
05ac: d1           pop  de
05ad: 19           add  hl,de
05ae: e5           push hl
05af: 21 10 00     ld   hl,$0010
05b2: e5           push hl
05b3: cd e1 36     call $36E1
05b6: 21 ad 14     ld   hl,$14AD
05b9: e5           push hl
05ba: 2a 5f 16     ld   hl,($165F)
05bd: 2b           dec  hl
05be: e5           push hl
05bf: 21 10 00     ld   hl,$0010
05c2: e5           push hl
05c3: cd f5 3e     call $3EF5
05c6: e1           pop  hl
05c7: d1           pop  de
05c8: 19           add  hl,de
05c9: e5           push hl
05ca: 21 10 00     ld   hl,$0010
05cd: e5           push hl
05ce: 21 00 00     ld   hl,$0000
05d1: e5           push hl
05d2: cd 10 37     call $3710
05d5: 2a 61 16     ld   hl,($1661)
05d8: 23           inc  hl
05d9: 22 61 16     ld   ($1661),hl
05dc: c3 09 05     jp   $0509
05df: c9           ret
05e0: 2a d7 15     ld   hl,($15D7)
05e3: e5           push hl
05e4: 2a e9 15     ld   hl,($15E9)
05e7: e5           push hl
05e8: 21 00 00     ld   hl,$0000
05eb: e5           push hl
05ec: cd 71 3c     call $3C71
05ef: 2a d7 15     ld   hl,($15D7)
05f2: e5           push hl
05f3: 21 04 00     ld   hl,$0004
05f6: e5           push hl
05f7: cd 71 3c     call $3C71
05fa: e1           pop  hl
05fb: d1           pop  de
05fc: 7d           ld   a,l
05fd: a3           and  e
05fe: 6f           ld   l,a
05ff: d1           pop  de
0600: 19           add  hl,de
0601: 22 63 16     ld   ($1663),hl
0604: 2a 63 16     ld   hl,($1663)
0607: e3           ex   (sp),hl
0608: e9           jp   (hl)
0609: 2a d9 15     ld   hl,($15D9)
060c: e5           push hl
060d: 2a d7 15     ld   hl,($15D7)
0610: e5           push hl
0611: cd b9 3c     call $3CB9
0614: f1           pop  af
0615: d2 27 06     jp   nc,$0627
0618: cd ef 16     call $16EF
061b: 2a d7 15     ld   hl,($15D7)
061e: 22 d9 15     ld   ($15D9),hl
0621: cd 22 01     call $0122
0624: cd b0 27     call $27B0
0627: 21 1f 00     ld   hl,$001F
062a: e5           push hl
062b: 21 05 00     ld   hl,$0005
062e: e5           push hl
062f: 2a d7 15     ld   hl,($15D7)
0632: e5           push hl
0633: 21 04 00     ld   hl,$0004
0636: eb           ex   de,hl
0637: 2a e9 15     ld   hl,($15E9)
063a: 19           add  hl,de
063b: e5           push hl
063c: cd 3b 27     call $273B
063f: e1           pop  hl
0640: 22 d7 15     ld   ($15D7),hl
0643: 2a d7 15     ld   hl,($15D7)
0646: eb           ex   de,hl
0647: 21 bf 00     ld   hl,$00BF
064a: 7d           ld   a,l
064b: a3           and  e
064c: 6f           ld   l,a
064d: 7c           ld   a,h
064e: a2           and  d
064f: 67           ld   h,a
0650: 22 d7 15     ld   ($15D7),hl
0653: 2a d7 15     ld   hl,($15D7)
0656: e5           push hl
0657: 21 7f 00     ld   hl,$007F
065a: e5           push hl
065b: cd a4 3c     call $3CA4
065e: f1           pop  af
065f: d2 09 06     jp   nc,$0609
0662: 2a d7 15     ld   hl,($15D7)
0665: eb           ex   de,hl
0666: 21 7f 00     ld   hl,$007F
0669: 7d           ld   a,l
066a: a3           and  e
066b: 6f           ld   l,a
066c: 7c           ld   a,h
066d: a2           and  d
066e: 67           ld   h,a
066f: 22 d7 15     ld   ($15D7),hl
0672: 21 c9 00     ld   hl,$00C9
0675: e5           push hl
0676: 21 81 38     ld   hl,$3881
0679: e5           push hl
067a: cd f4 3c     call $3CF4
067d: cd fa 3c     call $3CFA
0680: cd aa 3e     call $3EAA
0683: c9           ret
0684: 21 01 00     ld   hl,$0001
0687: e5           push hl
0688: 21 0f 00     ld   hl,$000F
068b: e5           push hl
068c: 21 01 00     ld   hl,$0001
068f: e5           push hl
0690: 2a ed 14     ld   hl,($14ED)
0693: e5           push hl
0694: cd 17 27     call $2717
0697: e1           pop  hl
0698: 22 6d 16     ld   ($166D),hl
069b: 21 81 38     ld   hl,$3881
069e: e5           push hl
069f: cd f4 3c     call $3CF4
06a2: 21 20 00     ld   hl,$0020
06a5: e5           push hl
06a6: cd fa 3c     call $3CFA
06a9: cd aa 3e     call $3EAA
06ac: 2a 6d 16     ld   hl,($166D)
06af: e3           ex   (sp),hl
06b0: e9           jp   (hl)
06b1: cd 16 2b     call $2B16
06b4: 21 00 00     ld   hl,$0000
06b7: e5           push hl
06b8: 21 0d 00     ld   hl,$000D
06bb: e5           push hl
06bc: cd 2b 2b     call $2B2B
06bf: 21 01 00     ld   hl,$0001
06c2: e5           push hl
06c3: 2a cb 15     ld   hl,($15CB)
06c6: e5           push hl
06c7: d1           pop  de
06c8: e1           pop  hl
06c9: 2b           dec  hl
06ca: e5           push hl
06cb: d5           push de
06cc: 22 8d 16     ld   ($168D),hl
06cf: d1           pop  de
06d0: e1           pop  hl
06d1: 23           inc  hl
06d2: e5           push hl
06d3: d5           push de
06d4: cd 51 39     call $3951
06d7: 22 b9 16     ld   ($16B9),hl
06da: 2a 8d 16     ld   hl,($168D)
06dd: 23           inc  hl
06de: 22 8d 16     ld   ($168D),hl
06e1: 2a b9 16     ld   hl,($16B9)
06e4: 2b           dec  hl
06e5: 22 b9 16     ld   ($16B9),hl
06e8: 7c           ld   a,h
06e9: b5           or   l
06ea: ca 47 07     jp   z,$0747
06ed: 21 ef 14     ld   hl,$14EF
06f0: e5           push hl
06f1: 2a 8d 16     ld   hl,($168D)
06f4: 2b           dec  hl
06f5: e5           push hl
06f6: 21 16 00     ld   hl,$0016
06f9: e5           push hl
06fa: cd f5 3e     call $3EF5
06fd: e1           pop  hl
06fe: d1           pop  de
06ff: 19           add  hl,de
0700: 22 bb 16     ld   ($16BB),hl
0703: 21 83 16     ld   hl,$1683
0706: e5           push hl
0707: 2a 8d 16     ld   hl,($168D)
070a: 2b           dec  hl
070b: d1           pop  de
070c: 19           add  hl,de
070d: 16 00        ld   d,$00
070f: 5e           ld   e,(hl)
0710: eb           ex   de,hl
0711: 7d           ld   a,l
0712: 2f           cpl
0713: 1f           rra
0714: d2 44 07     jp   nc,$0744
0717: 21 38 00     ld   hl,$0038
071a: e5           push hl
071b: cd 3c 34     call $343C
071e: 2a bb 16     ld   hl,($16BB)
0721: 23           inc  hl
0722: e5           push hl
0723: 21 81 38     ld   hl,$3881
0726: e5           push hl
0727: cd f4 3c     call $3CF4
072a: cd fa 3c     call $3CFA
072d: cd 6b 3d     call $3D6B
0730: 21 4d 00     ld   hl,$004D
0733: e5           push hl
0734: cd 3c 34     call $343C
0737: cd fd 35     call $35FD
073a: 21 81 38     ld   hl,$3881
073d: e5           push hl
073e: cd f4 3c     call $3CF4
0741: cd 57 2c     call $2C57
0744: c3 da 06     jp   $06DA
0747: 21 36 00     ld   hl,$0036
074a: e5           push hl
074b: 21 0d 00     ld   hl,$000D
074e: e5           push hl
074f: 21 01 00     ld   hl,$0001
0752: e5           push hl
0753: 2a 79 16     ld   hl,($1679)
0756: e5           push hl
0757: cd 17 27     call $2717
075a: e1           pop  hl
075b: 22 8f 16     ld   ($168F),hl
075e: 21 81 38     ld   hl,$3881
0761: e5           push hl
0762: cd f4 3c     call $3CF4
0765: 21 20 00     ld   hl,$0020
0768: e5           push hl
0769: cd fa 3c     call $3CFA
076c: cd aa 3e     call $3EAA
076f: 2a 8f 16     ld   hl,($168F)
0772: e5           push hl
0773: 21 40 00     ld   hl,$0040
0776: e5           push hl
0777: cd a4 3c     call $3CA4
077a: f1           pop  af
077b: d2 8d 07     jp   nc,$078D
077e: 21 00 00     ld   hl,$0000
0781: 22 7b 16     ld   ($167B),hl
0784: 21 00 00     ld   hl,$0000
0787: 22 d9 15     ld   ($15D9),hl
078a: c3 c9 07     jp   $07C9
078d: 21 00 00     ld   hl,$0000
0790: 22 7b 16     ld   ($167B),hl
0793: 2a 7b 16     ld   hl,($167B)
0796: 23           inc  hl
0797: 22 7b 16     ld   ($167B),hl
079a: 21 83 16     ld   hl,$1683
079d: e5           push hl
079e: 2a 7b 16     ld   hl,($167B)
07a1: 2b           dec  hl
07a2: d1           pop  de
07a3: 19           add  hl,de
07a4: 7e           ld   a,(hl)
07a5: 1f           rra
07a6: d2 b3 07     jp   nc,$07B3
07a9: 2a 7b 16     ld   hl,($167B)
07ac: 23           inc  hl
07ad: 22 7b 16     ld   ($167B),hl
07b0: c3 9a 07     jp   $079A
07b3: 2a 8f 16     ld   hl,($168F)
07b6: 2b           dec  hl
07b7: 22 8f 16     ld   ($168F),hl
07ba: 2a 8f 16     ld   hl,($168F)
07bd: e5           push hl
07be: 21 00 00     ld   hl,$0000
07c1: e5           push hl
07c2: cd 71 3c     call $3C71
07c5: f1           pop  af
07c6: d2 93 07     jp   nc,$0793
07c9: c9           ret
07ca: 21 00 00     ld   hl,$0000
07cd: 22 7d 16     ld   ($167D),hl
07d0: 21 00 00     ld   hl,$0000
07d3: 22 91 16     ld   ($1691),hl
07d6: 21 00 00     ld   hl,$0000
07d9: 22 93 16     ld   ($1693),hl
07dc: 21 db 15     ld   hl,$15DB
07df: eb           ex   de,hl
07e0: 2a 91 16     ld   hl,($1691)
07e3: 19           add  hl,de
07e4: 16 00        ld   d,$00
07e6: 5e           ld   e,(hl)
07e7: d5           push de
07e8: 21 00 00     ld   hl,$0000
07eb: e5           push hl
07ec: cd 4f 3c     call $3C4F
07ef: 00           nop
07f0: 2a 91 16     ld   hl,($1691)
07f3: e5           push hl
07f4: 21 09 00     ld   hl,$0009
07f7: e5           push hl
07f8: cd d0 3c     call $3CD0
07fb: e1           pop  hl
07fc: d1           pop  de
07fd: 7d           ld   a,l
07fe: a3           and  e
07ff: 1f           rra
0800: d2 17 08     jp   nc,$0817
0803: 2a 93 16     ld   hl,($1693)
0806: 11 1e 00     ld   de,$001E
0809: 19           add  hl,de
080a: 22 93 16     ld   ($1693),hl
080d: 2a 91 16     ld   hl,($1691)
0810: 23           inc  hl
0811: 22 91 16     ld   ($1691),hl
0814: c3 dc 07     jp   $07DC
0817: 2a 93 16     ld   hl,($1693)
081a: e5           push hl
081b: 2a 7d 16     ld   hl,($167D)
081e: e5           push hl
081f: cd a4 3c     call $3CA4
0822: f1           pop  af
0823: d2 2c 08     jp   nc,$082C
0826: 2a 93 16     ld   hl,($1693)
0829: 22 7d 16     ld   ($167D),hl
082c: 2a 91 16     ld   hl,($1691)
082f: 23           inc  hl
0830: 22 91 16     ld   ($1691),hl
0833: 2a 91 16     ld   hl,($1691)
0836: e5           push hl
0837: 21 09 00     ld   hl,$0009
083a: e5           push hl
083b: cd a4 3c     call $3CA4
083e: f1           pop  af
083f: d2 d6 07     jp   nc,$07D6
0842: c9           ret
0843: 2a 7d 16     ld   hl,($167D)
0846: e5           push hl
0847: 21 1e 00     ld   hl,$001E
084a: e5           push hl
084b: cd 7f 3e     call $3E7F
084e: e1           pop  hl
084f: 22 95 16     ld   ($1695),hl
0852: cd 16 2b     call $2B16
0855: 21 00 00     ld   hl,$0000
0858: e5           push hl
0859: 21 0d 00     ld   hl,$000D
085c: e5           push hl
085d: cd 2b 2b     call $2B2B
0860: 21 01 00     ld   hl,$0001
0863: e5           push hl
0864: 2a 95 16     ld   hl,($1695)
0867: e5           push hl
0868: d1           pop  de
0869: e1           pop  hl
086a: 2b           dec  hl
086b: e5           push hl
086c: d5           push de
086d: 22 97 16     ld   ($1697),hl
0870: d1           pop  de
0871: e1           pop  hl
0872: 23           inc  hl
0873: e5           push hl
0874: d5           push de
0875: cd 51 39     call $3951
0878: 22 bd 16     ld   ($16BD),hl
087b: 2a 97 16     ld   hl,($1697)
087e: 23           inc  hl
087f: 22 97 16     ld   ($1697),hl
0882: 2a bd 16     ld   hl,($16BD)
0885: 2b           dec  hl
0886: 22 bd 16     ld   ($16BD),hl
0889: 7c           ld   a,h
088a: b5           or   l
088b: ca c4 08     jp   z,$08C4
088e: 21 40 00     ld   hl,$0040
0891: e5           push hl
0892: cd 3c 34     call $343C
0895: 2a 97 16     ld   hl,($1697)
0898: e5           push hl
0899: 21 1e 00     ld   hl,$001E
089c: e5           push hl
089d: cd f5 3e     call $3EF5
08a0: cd f5 16     call $16F5
08a3: 21 81 38     ld   hl,$3881
08a6: e5           push hl
08a7: cd f4 3c     call $3CF4
08aa: 21 20 00     ld   hl,$0020
08ad: e5           push hl
08ae: cd fa 3c     call $3CFA
08b1: cd aa 3e     call $3EAA
08b4: cd fd 35     call $35FD
08b7: 21 81 38     ld   hl,$3881
08ba: e5           push hl
08bb: cd f4 3c     call $3CF4
08be: cd 57 2c     call $2C57
08c1: c3 7b 08     jp   $087B
08c4: 21 3e 00     ld   hl,$003E
08c7: e5           push hl
08c8: 21 0d 00     ld   hl,$000D
08cb: e5           push hl
08cc: 21 01 00     ld   hl,$0001
08cf: e5           push hl
08d0: 2a 95 16     ld   hl,($1695)
08d3: e5           push hl
08d4: cd 17 27     call $2717
08d7: e1           pop  hl
08d8: 22 77 16     ld   ($1677),hl
08db: 2a 77 16     ld   hl,($1677)
08de: e5           push hl
08df: 21 40 00     ld   hl,$0040
08e2: e5           push hl
08e3: cd a4 3c     call $3CA4
08e6: f1           pop  af
08e7: d2 f9 08     jp   nc,$08F9
08ea: 21 00 00     ld   hl,$0000
08ed: 22 77 16     ld   ($1677),hl
08f0: 21 00 00     ld   hl,$0000
08f3: 22 d9 15     ld   ($15D9),hl
08f6: c3 08 09     jp   $0908
08f9: 2a 77 16     ld   hl,($1677)
08fc: e5           push hl
08fd: 21 1e 00     ld   hl,$001E
0900: e5           push hl
0901: cd f5 3e     call $3EF5
0904: e1           pop  hl
0905: 22 77 16     ld   ($1677),hl
0908: cd 16 2b     call $2B16
090b: c9           ret
090c: 21 0b 00     ld   hl,$000B
090f: 22 9f 16     ld   ($169F),hl
0912: 2a 77 16     ld   hl,($1677)
0915: e5           push hl
0916: 21 1e 00     ld   hl,$001E
0919: e5           push hl
091a: cd 7f 3e     call $3E7F
091d: e1           pop  hl
091e: 22 9b 16     ld   ($169B),hl
0921: 21 00 00     ld   hl,$0000
0924: 22 99 16     ld   ($1699),hl
0927: 21 00 00     ld   hl,$0000
092a: 22 9d 16     ld   ($169D),hl
092d: 21 db 15     ld   hl,$15DB
0930: eb           ex   de,hl
0931: 2a 99 16     ld   hl,($1699)
0934: 19           add  hl,de
0935: 16 00        ld   d,$00
0937: 5e           ld   e,(hl)
0938: d5           push de
0939: 21 00 00     ld   hl,$0000
093c: e5           push hl
093d: cd 4f 3c     call $3C4F
0940: 00           nop
0941: 2a 99 16     ld   hl,($1699)
0944: e5           push hl
0945: 21 09 00     ld   hl,$0009
0948: e5           push hl
0949: cd d0 3c     call $3CD0
094c: e1           pop  hl
094d: d1           pop  de
094e: 7d           ld   a,l
094f: a3           and  e
0950: 1f           rra
0951: d2 65 09     jp   nc,$0965
0954: 2a 9d 16     ld   hl,($169D)
0957: 23           inc  hl
0958: 22 9d 16     ld   ($169D),hl
095b: 2a 99 16     ld   hl,($1699)
095e: 23           inc  hl
095f: 22 99 16     ld   ($1699),hl
0962: c3 2d 09     jp   $092D
0965: 2a 9d 16     ld   hl,($169D)
0968: e5           push hl
0969: 2a 9b 16     ld   hl,($169B)
096c: e5           push hl
096d: cd 88 3c     call $3C88
0970: 2a 9d 16     ld   hl,($169D)
0973: e5           push hl
0974: 2a 9f 16     ld   hl,($169F)
0977: e5           push hl
0978: cd d9 3c     call $3CD9
097b: e1           pop  hl
097c: d1           pop  de
097d: 7d           ld   a,l
097e: a3           and  e
097f: 1f           rra
0980: d2 99 09     jp   nc,$0999
0983: 2a 9d 16     ld   hl,($169D)
0986: 22 9f 16     ld   ($169F),hl
0989: 2a 99 16     ld   hl,($1699)
098c: eb           ex   de,hl
098d: 2a 9d 16     ld   hl,($169D)
0990: 7b           ld   a,e
0991: 95           sub  l
0992: 6f           ld   l,a
0993: 7a           ld   a,d
0994: 9c           sbc  a,h
0995: 67           ld   h,a
0996: 22 a1 16     ld   ($16A1),hl
0999: 2a 99 16     ld   hl,($1699)
099c: 23           inc  hl
099d: 22 99 16     ld   ($1699),hl
09a0: 2a 99 16     ld   hl,($1699)
09a3: e5           push hl
09a4: 21 09 00     ld   hl,$0009
09a7: e5           push hl
09a8: cd a4 3c     call $3CA4
09ab: f1           pop  af
09ac: d2 27 09     jp   nc,$0927
09af: 21 ad 14     ld   hl,$14AD
09b2: e5           push hl
09b3: 2a ed 14     ld   hl,($14ED)
09b6: 2b           dec  hl
09b7: e5           push hl
09b8: 21 10 00     ld   hl,$0010
09bb: e5           push hl
09bc: cd f5 3e     call $3EF5
09bf: e1           pop  hl
09c0: d1           pop  de
09c1: 19           add  hl,de
09c2: 22 bf 16     ld   ($16BF),hl
09c5: 2a a1 16     ld   hl,($16A1)
09c8: e5           push hl
09c9: 21 1e 00     ld   hl,$001E
09cc: e5           push hl
09cd: cd f5 3e     call $3EF5
09d0: e1           pop  hl
09d1: 22 3d 16     ld   ($163D),hl
09d4: 2a bf 16     ld   hl,($16BF)
09d7: 11 08 00     ld   de,$0008
09da: 19           add  hl,de
09db: e5           push hl
09dc: 2a 3d 16     ld   hl,($163D)
09df: e5           push hl
09e0: 21 40 00     ld   hl,$0040
09e3: e5           push hl
09e4: cd f5 3e     call $3EF5
09e7: e1           pop  hl
09e8: eb           ex   de,hl
09e9: e1           pop  hl
09ea: 73           ld   (hl),e
09eb: 23           inc  hl
09ec: 72           ld   (hl),d
09ed: 2a bf 16     ld   hl,($16BF)
09f0: 11 0a 00     ld   de,$000A
09f3: 19           add  hl,de
09f4: e5           push hl
09f5: 21 00 00     ld   hl,$0000
09f8: eb           ex   de,hl
09f9: e1           pop  hl
09fa: 73           ld   (hl),e
09fb: 23           inc  hl
09fc: 72           ld   (hl),d
09fd: 2a bf 16     ld   hl,($16BF)
0a00: 23           inc  hl
0a01: 22 c1 16     ld   ($16C1),hl
0a04: 2a 3d 16     ld   hl,($163D)
0a07: e5           push hl
0a08: 21 00 00     ld   hl,$0000
0a0b: e5           push hl
0a0c: cd 71 3c     call $3C71
0a0f: f1           pop  af
0a10: d2 99 0a     jp   nc,$0A99
0a13: 2a bf 16     ld   hl,($16BF)
0a16: 23           inc  hl
0a17: 23           inc  hl
0a18: 23           inc  hl
0a19: 23           inc  hl
0a1a: 16 00        ld   d,$00
0a1c: 5e           ld   e,(hl)
0a1d: d5           push de
0a1e: 21 f0 00     ld   hl,$00F0
0a21: d1           pop  de
0a22: 7d           ld   a,l
0a23: a3           and  e
0a24: 6f           ld   l,a
0a25: 7c           ld   a,h
0a26: a2           and  d
0a27: 67           ld   h,a
0a28: e5           push hl
0a29: 21 f0 00     ld   hl,$00F0
0a2c: e5           push hl
0a2d: cd b9 3c     call $3CB9
0a30: f1           pop  af
0a31: d2 65 0a     jp   nc,$0A65
0a34: 2a c1 16     ld   hl,($16C1)
0a37: e5           push hl
0a38: 21 00 00     ld   hl,$0000
0a3b: eb           ex   de,hl
0a3c: e1           pop  hl
0a3d: 73           ld   (hl),e
0a3e: 2a c1 16     ld   hl,($16C1)
0a41: 23           inc  hl
0a42: e5           push hl
0a43: 21 02 00     ld   hl,$0002
0a46: eb           ex   de,hl
0a47: e1           pop  hl
0a48: 73           ld   (hl),e
0a49: 2a bf 16     ld   hl,($16BF)
0a4c: 11 08 00     ld   de,$0008
0a4f: 19           add  hl,de
0a50: e5           push hl
0a51: 2a bf 16     ld   hl,($16BF)
0a54: 11 08 00     ld   de,$0008
0a57: 19           add  hl,de
0a58: 5e           ld   e,(hl)
0a59: 23           inc  hl
0a5a: 56           ld   d,(hl)
0a5b: eb           ex   de,hl
0a5c: 23           inc  hl
0a5d: eb           ex   de,hl
0a5e: e1           pop  hl
0a5f: 73           ld   (hl),e
0a60: 23           inc  hl
0a61: 72           ld   (hl),d
0a62: c3 96 0a     jp   $0A96
0a65: 2a c1 16     ld   hl,($16C1)
0a68: e5           push hl
0a69: 21 01 00     ld   hl,$0001
0a6c: eb           ex   de,hl
0a6d: e1           pop  hl
0a6e: 73           ld   (hl),e
0a6f: 2a c1 16     ld   hl,($16C1)
0a72: 23           inc  hl
0a73: e5           push hl
0a74: 21 01 00     ld   hl,$0001
0a77: eb           ex   de,hl
0a78: e1           pop  hl
0a79: 73           ld   (hl),e
0a7a: 2a bf 16     ld   hl,($16BF)
0a7d: 11 08 00     ld   de,$0008
0a80: 19           add  hl,de
0a81: e5           push hl
0a82: 2a bf 16     ld   hl,($16BF)
0a85: 11 08 00     ld   de,$0008
0a88: 19           add  hl,de
0a89: 5e           ld   e,(hl)
0a8a: 23           inc  hl
0a8b: 56           ld   d,(hl)
0a8c: eb           ex   de,hl
0a8d: 11 11 00     ld   de,$0011
0a90: 19           add  hl,de
0a91: eb           ex   de,hl
0a92: e1           pop  hl
0a93: 73           ld   (hl),e
0a94: 23           inc  hl
0a95: 72           ld   (hl),d
0a96: c3 ae 0a     jp   $0AAE
0a99: 2a c1 16     ld   hl,($16C1)
0a9c: e5           push hl
0a9d: 21 00 00     ld   hl,$0000
0aa0: eb           ex   de,hl
0aa1: e1           pop  hl
0aa2: 73           ld   (hl),e
0aa3: 2a c1 16     ld   hl,($16C1)
0aa6: 23           inc  hl
0aa7: e5           push hl
0aa8: 21 01 00     ld   hl,$0001
0aab: eb           ex   de,hl
0aac: e1           pop  hl
0aad: 73           ld   (hl),e
0aae: 2a bf 16     ld   hl,($16BF)
0ab1: 23           inc  hl
0ab2: e5           push hl
0ab3: 2a 3d 16     ld   hl,($163D)
0ab6: e5           push hl
0ab7: cd da 2b     call $2BDA
0aba: 2a 3d 16     ld   hl,($163D)
0abd: eb           ex   de,hl
0abe: 2a 77 16     ld   hl,($1677)
0ac1: 19           add  hl,de
0ac2: 2b           dec  hl
0ac3: 22 3d 16     ld   ($163D),hl
0ac6: 2a 3d 16     ld   hl,($163D)
0ac9: e5           push hl
0aca: 21 2b 01     ld   hl,$012B
0acd: e5           push hl
0ace: cd 71 3c     call $3C71
0ad1: f1           pop  af
0ad2: d2 db 0a     jp   nc,$0ADB
0ad5: 21 30 01     ld   hl,$0130
0ad8: 22 3d 16     ld   ($163D),hl
0adb: 2a bf 16     ld   hl,($16BF)
0ade: 11 0c 00     ld   de,$000C
0ae1: 19           add  hl,de
0ae2: e5           push hl
0ae3: 2a 3d 16     ld   hl,($163D)
0ae6: 23           inc  hl
0ae7: e5           push hl
0ae8: 21 40 00     ld   hl,$0040
0aeb: e5           push hl
0aec: cd f5 3e     call $3EF5
0aef: 2a bf 16     ld   hl,($16BF)
0af2: 11 08 00     ld   de,$0008
0af5: 19           add  hl,de
0af6: 5e           ld   e,(hl)
0af7: 23           inc  hl
0af8: 56           ld   d,(hl)
0af9: eb           ex   de,hl
0afa: d1           pop  de
0afb: 7b           ld   a,e
0afc: 95           sub  l
0afd: 6f           ld   l,a
0afe: 7a           ld   a,d
0aff: 9c           sbc  a,h
0b00: 67           ld   h,a
0b01: eb           ex   de,hl
0b02: e1           pop  hl
0b03: 73           ld   (hl),e
0b04: 23           inc  hl
0b05: 72           ld   (hl),d
0b06: 2a bf 16     ld   hl,($16BF)
0b09: 11 0e 00     ld   de,$000E
0b0c: 19           add  hl,de
0b0d: e5           push hl
0b0e: 21 00 00     ld   hl,$0000
0b11: eb           ex   de,hl
0b12: e1           pop  hl
0b13: 73           ld   (hl),e
0b14: 23           inc  hl
0b15: 72           ld   (hl),d
0b16: 2a bf 16     ld   hl,($16BF)
0b19: 11 05 00     ld   de,$0005
0b1c: 19           add  hl,de
0b1d: 22 c3 16     ld   ($16C3),hl
0b20: 2a c3 16     ld   hl,($16C3)
0b23: 23           inc  hl
0b24: e5           push hl
0b25: 21 11 00     ld   hl,$0011
0b28: eb           ex   de,hl
0b29: e1           pop  hl
0b2a: 73           ld   (hl),e
0b2b: 2a c3 16     ld   hl,($16C3)
0b2e: e5           push hl
0b2f: 21 03 00     ld   hl,$0003
0b32: eb           ex   de,hl
0b33: e1           pop  hl
0b34: 73           ld   (hl),e
0b35: 2a bf 16     ld   hl,($16BF)
0b38: 11 05 00     ld   de,$0005
0b3b: 19           add  hl,de
0b3c: e5           push hl
0b3d: 2a 3d 16     ld   hl,($163D)
0b40: e5           push hl
0b41: cd da 2b     call $2BDA
0b44: c9           ret
0b45: 21 00 00     ld   hl,$0000
0b48: 22 79 16     ld   ($1679),hl
0b4b: 21 01 00     ld   hl,$0001
0b4e: e5           push hl
0b4f: 2a cb 15     ld   hl,($15CB)
0b52: e5           push hl
0b53: d1           pop  de
0b54: e1           pop  hl
0b55: 2b           dec  hl
0b56: e5           push hl
0b57: d5           push de
0b58: 22 81 16     ld   ($1681),hl
0b5b: d1           pop  de
0b5c: e1           pop  hl
0b5d: 23           inc  hl
0b5e: e5           push hl
0b5f: d5           push de
0b60: cd 51 39     call $3951
0b63: 22 c5 16     ld   ($16C5),hl
0b66: 2a 81 16     ld   hl,($1681)
0b69: 23           inc  hl
0b6a: 22 81 16     ld   ($1681),hl
0b6d: 2a c5 16     ld   hl,($16C5)
0b70: 2b           dec  hl
0b71: 22 c5 16     ld   ($16C5),hl
0b74: 7c           ld   a,h
0b75: b5           or   l
0b76: ca 0f 0c     jp   z,$0C0F
0b79: 21 ef 14     ld   hl,$14EF
0b7c: e5           push hl
0b7d: 2a 81 16     ld   hl,($1681)
0b80: 2b           dec  hl
0b81: e5           push hl
0b82: 21 16 00     ld   hl,$0016
0b85: e5           push hl
0b86: cd f5 3e     call $3EF5
0b89: e1           pop  hl
0b8a: d1           pop  de
0b8b: 19           add  hl,de
0b8c: 22 c7 16     ld   ($16C7),hl
0b8f: 21 01 00     ld   hl,$0001
0b92: 22 7f 16     ld   ($167F),hl
0b95: 21 ad 14     ld   hl,$14AD
0b98: e5           push hl
0b99: 2a 7f 16     ld   hl,($167F)
0b9c: 2b           dec  hl
0b9d: e5           push hl
0b9e: 21 10 00     ld   hl,$0010
0ba1: e5           push hl
0ba2: cd f5 3e     call $3EF5
0ba5: e1           pop  hl
0ba6: d1           pop  de
0ba7: 19           add  hl,de
0ba8: 23           inc  hl
0ba9: 23           inc  hl
0baa: 23           inc  hl
0bab: 23           inc  hl
0bac: 16 00        ld   d,$00
0bae: 5e           ld   e,(hl)
0baf: d5           push de
0bb0: 2a c7 16     ld   hl,($16C7)
0bb3: 16 00        ld   d,$00
0bb5: 5e           ld   e,(hl)
0bb6: d5           push de
0bb7: cd b9 3c     call $3CB9
0bba: 2a 7f 16     ld   hl,($167F)
0bbd: e5           push hl
0bbe: 2a ed 14     ld   hl,($14ED)
0bc1: e5           push hl
0bc2: cd d0 3c     call $3CD0
0bc5: e1           pop  hl
0bc6: d1           pop  de
0bc7: 7d           ld   a,l
0bc8: a3           and  e
0bc9: 1f           rra
0bca: d2 d7 0b     jp   nc,$0BD7
0bcd: 2a 7f 16     ld   hl,($167F)
0bd0: 23           inc  hl
0bd1: 22 7f 16     ld   ($167F),hl
0bd4: c3 95 0b     jp   $0B95
0bd7: 21 83 16     ld   hl,$1683
0bda: e5           push hl
0bdb: 2a 81 16     ld   hl,($1681)
0bde: 2b           dec  hl
0bdf: d1           pop  de
0be0: 19           add  hl,de
0be1: e5           push hl
0be2: 2a 7f 16     ld   hl,($167F)
0be5: e5           push hl
0be6: 2a ed 14     ld   hl,($14ED)
0be9: e5           push hl
0bea: cd d0 3c     call $3CD0
0bed: e1           pop  hl
0bee: eb           ex   de,hl
0bef: e1           pop  hl
0bf0: 73           ld   (hl),e
0bf1: 21 83 16     ld   hl,$1683
0bf4: e5           push hl
0bf5: 2a 81 16     ld   hl,($1681)
0bf8: 2b           dec  hl
0bf9: d1           pop  de
0bfa: 19           add  hl,de
0bfb: 16 00        ld   d,$00
0bfd: 5e           ld   e,(hl)
0bfe: eb           ex   de,hl
0bff: 7d           ld   a,l
0c00: 2f           cpl
0c01: 1f           rra
0c02: d2 0c 0c     jp   nc,$0C0C
0c05: 2a 79 16     ld   hl,($1679)
0c08: 23           inc  hl
0c09: 22 79 16     ld   ($1679),hl
0c0c: c3 66 0b     jp   $0B66
0c0f: 2a 79 16     ld   hl,($1679)
0c12: e5           push hl
0c13: 21 00 00     ld   hl,$0000
0c16: e5           push hl
0c17: cd 71 3c     call $3C71
0c1a: f1           pop  af
0c1b: d2 72 0c     jp   nc,$0C72
0c1e: cd ef 16     call $16EF
0c21: 21 07 00     ld   hl,$0007
0c24: e5           push hl
0c25: 21 81 38     ld   hl,$3881
0c28: e5           push hl
0c29: cd f4 3c     call $3CF4
0c2c: cd fa 3c     call $3CFA
0c2f: cd aa 3e     call $3EAA
0c32: 21 50 00     ld   hl,$0050
0c35: e5           push hl
0c36: cd 6c 0c     call $0C6C
0c39: 32 41 6c     ld   ($6C41),a
0c3c: 6c           ld   l,h
0c3d: 20 61        jr   nz,$0CA0
0c3f: 76           halt
0c40: 61           ld   h,c
0c41: 69           ld   l,c
0c42: 6c           ld   l,h
0c43: 61           ld   h,c
0c44: 62           ld   h,d
0c45: 6c           ld   l,h
0c46: 65           ld   h,l
0c47: 20 6f        jr   nz,$0CB8
0c49: 70           ld   (hl),b
0c4a: 65           ld   h,l
0c4b: 72           ld   (hl),d
0c4c: 61           ld   h,c
0c4d: 74           ld   (hl),h
0c4e: 69           ld   l,c
0c4f: 6e           ld   l,(hl)
0c50: 67           ld   h,a
0c51: 20 73        jr   nz,$0CC6
0c53: 79           ld   a,c
0c54: 73           ld   (hl),e
0c55: 74           ld   (hl),h
0c56: 65           ld   h,l
0c57: 6d           ld   l,l
0c58: 73           ld   (hl),e
0c59: 20 68        jr   nz,$0CC3
0c5b: 61           ld   h,c
0c5c: 76           halt
0c5d: 65           ld   h,l
0c5e: 20 62        jr   nz,$0CC2
0c60: 65           ld   h,l
0c61: 65           ld   h,l
0c62: 6e           ld   l,(hl)
0c63: 20 61        jr   nz,$0CC6
0c65: 73           ld   (hl),e
0c66: 73           ld   (hl),e
0c67: 69           ld   l,c
0c68: 67           ld   h,a
0c69: 6e           ld   l,(hl)
0c6a: 65           ld   h,l
0c6b: 64           ld   h,h
0c6c: cd 14 35     call $3514
0c6f: c3 5e 0e     jp   $0E5E
0c72: 3a e5 15     ld   a,($15E5)
0c75: 26 00        ld   h,$00
0c77: 1f           rra
0c78: d2 c7 0c     jp   nc,$0CC7
0c7b: cd ef 16     call $16EF
0c7e: 21 07 00     ld   hl,$0007
0c81: e5           push hl
0c82: 21 81 38     ld   hl,$3881
0c85: e5           push hl
0c86: cd f4 3c     call $3CF4
0c89: cd fa 3c     call $3CFA
0c8c: cd aa 3e     call $3EAA
0c8f: 21 50 00     ld   hl,$0050
0c92: e5           push hl
0c93: cd c1 0c     call $0CC1
0c96: 2a 31 30     ld   hl,($3031)
0c99: 30 25        jr   nc,$0CC0
0c9b: 20 6f        jr   nz,$0D0C
0c9d: 66           ld   h,(hl)
0c9e: 20 64        jr   nz,$0D04
0ca0: 69           ld   l,c
0ca1: 73           ld   (hl),e
0ca2: 6b           ld   l,e
0ca3: 20 61        jr   nz,$0D06
0ca5: 6c           ld   l,h
0ca6: 72           ld   (hl),d
0ca7: 65           ld   h,l
0ca8: 61           ld   h,c
0ca9: 64           ld   h,h
0caa: 79           ld   a,c
0cab: 20 61        jr   nz,$0D0E
0cad: 73           ld   (hl),e
0cae: 73           ld   (hl),e
0caf: 69           ld   l,c
0cb0: 67           ld   h,a
0cb1: 6e           ld   l,(hl)
0cb2: 65           ld   h,l
0cb3: 64           ld   h,h
0cb4: 20 2d        jr   nz,$0CE3
0cb6: 20 63        jr   nz,$0D1B
0cb8: 61           ld   h,c
0cb9: 6e           ld   l,(hl)
0cba: 6e           ld   l,(hl)
0cbb: 6f           ld   l,a
0cbc: 74           ld   (hl),h
0cbd: 20 61        jr   nz,$0D20
0cbf: 64           ld   h,h
0cc0: 64           ld   h,h
0cc1: cd 14 35     call $3514
0cc4: c3 5e 0e     jp   $0E5E
0cc7: 2a ed 14     ld   hl,($14ED)
0cca: e5           push hl
0ccb: 21 04 00     ld   hl,$0004
0cce: e5           push hl
0ccf: cd 71 3c     call $3C71
0cd2: f1           pop  af
0cd3: d2 60 0d     jp   nc,$0D60
0cd6: cd ef 16     call $16EF
0cd9: 21 07 00     ld   hl,$0007
0cdc: e5           push hl
0cdd: 21 81 38     ld   hl,$3881
0ce0: e5           push hl
0ce1: cd f4 3c     call $3CF4
0ce4: cd fa 3c     call $3CFA
0ce7: cd aa 3e     call $3EAA
0cea: 21 04 00     ld   hl,$0004
0ced: e5           push hl
0cee: 21 eb 15     ld   hl,$15EB
0cf1: e5           push hl
0cf2: cd 3b 35     call $353B
0cf5: 21 eb 15     ld   hl,$15EB
0cf8: e5           push hl
0cf9: cd ff 39     call $39FF
0cfc: cd 16 0d     call $0D16
0cff: 16 50        ld   d,$50
0d01: 61           ld   h,c
0d02: 72           ld   (hl),d
0d03: 74           ld   (hl),h
0d04: 69           ld   l,c
0d05: 74           ld   (hl),h
0d06: 69           ld   l,c
0d07: 6f           ld   l,a
0d08: 6e           ld   l,(hl)
0d09: 20 74        jr   nz,$0D7F
0d0b: 61           ld   h,c
0d0c: 62           ld   h,d
0d0d: 6c           ld   l,h
0d0e: 65           ld   h,l
0d0f: 20 66        jr   nz,$0D77
0d11: 75           ld   (hl),l
0d12: 6c           ld   l,h
0d13: 6c           ld   l,h
0d14: 20 28        jr   nz,$0D3E
0d16: cd 0d 3a     call $3A0D
0d19: 21 eb 15     ld   hl,$15EB
0d1c: e5           push hl
0d1d: cd 0d 3a     call $3A0D
0d20: cd 45 0d     call $0D45
0d23: 21 20 70     ld   hl,$7020
0d26: 61           ld   h,c
0d27: 72           ld   (hl),d
0d28: 74           ld   (hl),h
0d29: 69           ld   l,c
0d2a: 74           ld   (hl),h
0d2b: 69           ld   l,c
0d2c: 6f           ld   l,a
0d2d: 6e           ld   l,(hl)
0d2e: 73           ld   (hl),e
0d2f: 20 6d        jr   nz,$0D9E
0d31: 61           ld   h,c
0d32: 78           ld   a,b
0d33: 69           ld   l,c
0d34: 6d           ld   l,l
0d35: 75           ld   (hl),l
0d36: 6d           ld   l,l
0d37: 29           add  hl,hl
0d38: 20 2d        jr   nz,$0D67
0d3a: 20 63        jr   nz,$0D9F
0d3c: 61           ld   h,c
0d3d: 6e           ld   l,(hl)
0d3e: 6e           ld   l,(hl)
0d3f: 6f           ld   l,a
0d40: 74           ld   (hl),h
0d41: 20 61        jr   nz,$0DA4
0d43: 64           ld   h,h
0d44: 64           ld   h,h
0d45: cd 0d 3a     call $3A0D
0d48: cd fa 39     call $39FA
0d4b: 21 50 00     ld   hl,$0050
0d4e: e5           push hl
0d4f: cd 1a 3d     call $3D1A
0d52: 21 50 00     ld   hl,$0050
0d55: e5           push hl
0d56: 21 eb 15     ld   hl,$15EB
0d59: e5           push hl
0d5a: cd 14 35     call $3514
0d5d: c3 5e 0e     jp   $0E5E
0d60: cd 31 01     call $0131
0d63: 21 eb 15     ld   hl,$15EB
0d66: e5           push hl
0d67: cd 78 0d     call $0D78
0d6a: 0d           dec  c
0d6b: 73           ld   (hl),e
0d6c: 65           ld   h,l
0d6d: 6c           ld   l,h
0d6e: 65           ld   h,l
0d6f: 63           ld   h,e
0d70: 74           ld   (hl),h
0d71: 20 73        jr   nz,$0DE6
0d73: 79           ld   a,c
0d74: 73           ld   (hl),e
0d75: 74           ld   (hl),h
0d76: 65           ld   h,l
0d77: 6d           ld   l,l
0d78: 21 50 00     ld   hl,$0050
0d7b: e5           push hl
0d7c: cd 1a 3d     call $3D1A
0d7f: cd e9 16     call $16E9
0d82: 21 eb 15     ld   hl,$15EB
0d85: e5           push hl
0d86: cd 97 0d     call $0D97
0d89: 0d           dec  c
0d8a: 61           ld   h,c
0d8b: 73           ld   (hl),e
0d8c: 73           ld   (hl),e
0d8d: 69           ld   l,c
0d8e: 67           ld   h,a
0d8f: 6e           ld   l,(hl)
0d90: 20 73        jr   nz,$0E05
0d92: 79           ld   a,c
0d93: 73           ld   (hl),e
0d94: 74           ld   (hl),h
0d95: 65           ld   h,l
0d96: 6d           ld   l,l
0d97: 21 50 00     ld   hl,$0050
0d9a: e5           push hl
0d9b: cd 1a 3d     call $3D1A
0d9e: cd ec 16     call $16EC
0da1: cd 2e 01     call $012E
0da4: 2a 7b 16     ld   hl,($167B)
0da7: e5           push hl
0da8: 21 00 00     ld   hl,$0000
0dab: e5           push hl
0dac: cd 71 3c     call $3C71
0daf: f1           pop  af
0db0: d2 b6 0d     jp   nc,$0DB6
0db3: c3 5e 0e     jp   $0E5E
0db6: 21 eb 15     ld   hl,$15EB
0db9: e5           push hl
0dba: cd c9 0d     call $0DC9
0dbd: 0b           dec  bc
0dbe: 73           ld   (hl),e
0dbf: 65           ld   h,l
0dc0: 6c           ld   l,h
0dc1: 65           ld   h,l
0dc2: 63           ld   h,e
0dc3: 74           ld   (hl),h
0dc4: 20 73        jr   nz,$0E39
0dc6: 69           ld   l,c
0dc7: 7a           ld   a,d
0dc8: 65           ld   h,l
0dc9: 21 50 00     ld   hl,$0050
0dcc: e5           push hl
0dcd: cd 1a 3d     call $3D1A
0dd0: cd e9 16     call $16E9
0dd3: 21 eb 15     ld   hl,$15EB
0dd6: e5           push hl
0dd7: cd e6 0d     call $0DE6
0dda: 0b           dec  bc
0ddb: 61           ld   h,c
0ddc: 73           ld   (hl),e
0ddd: 73           ld   (hl),e
0dde: 69           ld   l,c
0ddf: 67           ld   h,a
0de0: 6e           ld   l,(hl)
0de1: 20 73        jr   nz,$0E56
0de3: 69           ld   l,c
0de4: 7a           ld   a,d
0de5: 65           ld   h,l
0de6: 21 50 00     ld   hl,$0050
0de9: e5           push hl
0dea: cd 1a 3d     call $3D1A
0ded: cd ec 16     call $16EC
0df0: cd 34 01     call $0134
0df3: 2a 77 16     ld   hl,($1677)
0df6: e5           push hl
0df7: 21 00 00     ld   hl,$0000
0dfa: e5           push hl
0dfb: cd 71 3c     call $3C71
0dfe: f1           pop  af
0dff: d2 05 0e     jp   nc,$0E05
0e02: c3 5e 0e     jp   $0E5E
0e05: 2a ed 14     ld   hl,($14ED)
0e08: 23           inc  hl
0e09: 22 ed 14     ld   ($14ED),hl
0e0c: 21 ad 14     ld   hl,$14AD
0e0f: e5           push hl
0e10: 2a ed 14     ld   hl,($14ED)
0e13: 2b           dec  hl
0e14: e5           push hl
0e15: 21 10 00     ld   hl,$0010
0e18: e5           push hl
0e19: cd f5 3e     call $3EF5
0e1c: e1           pop  hl
0e1d: d1           pop  de
0e1e: 19           add  hl,de
0e1f: 23           inc  hl
0e20: 23           inc  hl
0e21: 23           inc  hl
0e22: 23           inc  hl
0e23: e5           push hl
0e24: 21 ef 14     ld   hl,$14EF
0e27: e5           push hl
0e28: 2a 7b 16     ld   hl,($167B)
0e2b: 2b           dec  hl
0e2c: e5           push hl
0e2d: 21 16 00     ld   hl,$0016
0e30: e5           push hl
0e31: cd f5 3e     call $3EF5
0e34: e1           pop  hl
0e35: d1           pop  de
0e36: 19           add  hl,de
0e37: 16 00        ld   d,$00
0e39: 5e           ld   e,(hl)
0e3a: eb           ex   de,hl
0e3b: eb           ex   de,hl
0e3c: e1           pop  hl
0e3d: 73           ld   (hl),e
0e3e: 21 cd 15     ld   hl,$15CD
0e41: e5           push hl
0e42: 2a 7b 16     ld   hl,($167B)
0e45: 2b           dec  hl
0e46: d1           pop  de
0e47: 19           add  hl,de
0e48: e5           push hl
0e49: 21 01 00     ld   hl,$0001
0e4c: eb           ex   de,hl
0e4d: e1           pop  hl
0e4e: 73           ld   (hl),e
0e4f: cd 37 01     call $0137
0e52: cd f2 16     call $16F2
0e55: cd e6 16     call $16E6
0e58: 21 00 00     ld   hl,$0000
0e5b: 22 d9 15     ld   ($15D9),hl
0e5e: c9           ret
0e5f: 2a ed 14     ld   hl,($14ED)
0e62: e5           push hl
0e63: 21 00 00     ld   hl,$0000
0e66: e5           push hl
0e67: cd 71 3c     call $3C71
0e6a: f1           pop  af
0e6b: d2 ac 0e     jp   nc,$0EAC
0e6e: cd ef 16     call $16EF
0e71: 21 07 00     ld   hl,$0007
0e74: e5           push hl
0e75: 21 81 38     ld   hl,$3881
0e78: e5           push hl
0e79: cd f4 3c     call $3CF4
0e7c: cd fa 3c     call $3CFA
0e7f: cd aa 3e     call $3EAA
0e82: 21 50 00     ld   hl,$0050
0e85: e5           push hl
0e86: cd 9f 0e     call $0E9F
0e89: 15           dec  d
0e8a: 50           ld   d,b
0e8b: 61           ld   h,c
0e8c: 72           ld   (hl),d
0e8d: 74           ld   (hl),h
0e8e: 69           ld   l,c
0e8f: 74           ld   (hl),h
0e90: 69           ld   l,c
0e91: 6f           ld   l,a
0e92: 6e           ld   l,(hl)
0e93: 20 74        jr   nz,$0F09
0e95: 61           ld   h,c
0e96: 62           ld   h,d
0e97: 6c           ld   l,h
0e98: 65           ld   h,l
0e99: 20 65        jr   nz,$0F00
0e9b: 6d           ld   l,l
0e9c: 70           ld   (hl),b
0e9d: 74           ld   (hl),h
0e9e: 79           ld   a,c
0e9f: cd 14 35     call $3514
0ea2: 21 01 00     ld   hl,$0001
0ea5: 7d           ld   a,l
0ea6: 32 a3 16     ld   ($16A3),a
0ea9: c3 b3 0e     jp   $0EB3
0eac: 21 00 00     ld   hl,$0000
0eaf: 7d           ld   a,l
0eb0: 32 a3 16     ld   ($16A3),a
0eb3: 3a a3 16     ld   a,($16A3)
0eb6: 26 00        ld   h,$00
0eb8: 6f           ld   l,a
0eb9: e3           ex   (sp),hl
0eba: e9           jp   (hl)
0ebb: cd 3a 01     call $013A
0ebe: f1           pop  af
0ebf: d2 c5 0e     jp   nc,$0EC5
0ec2: c3 16 10     jp   $1016
0ec5: 21 eb 15     ld   hl,$15EB
0ec8: e5           push hl
0ec9: cd dd 0e     call $0EDD
0ecc: 10 73        djnz $0F41
0ece: 65           ld   h,l
0ecf: 6c           ld   l,h
0ed0: 65           ld   h,l
0ed1: 63           ld   h,e
0ed2: 74           ld   (hl),h
0ed3: 20 70        jr   nz,$0F45
0ed5: 61           ld   h,c
0ed6: 72           ld   (hl),d
0ed7: 74           ld   (hl),h
0ed8: 69           ld   l,c
0ed9: 74           ld   (hl),h
0eda: 69           ld   l,c
0edb: 6f           ld   l,a
0edc: 6e           ld   l,(hl)
0edd: 21 50 00     ld   hl,$0050
0ee0: e5           push hl
0ee1: cd 1a 3d     call $3D1A
0ee4: cd e9 16     call $16E9
0ee7: 21 eb 15     ld   hl,$15EB
0eea: e5           push hl
0eeb: cd ff 0e     call $0EFF
0eee: 10 64        djnz $0F54
0ef0: 65           ld   h,l
0ef1: 6c           ld   l,h
0ef2: 65           ld   h,l
0ef3: 74           ld   (hl),h
0ef4: 65           ld   h,l
0ef5: 20 70        jr   nz,$0F67
0ef7: 61           ld   h,c
0ef8: 72           ld   (hl),d
0ef9: 74           ld   (hl),h
0efa: 69           ld   l,c
0efb: 74           ld   (hl),h
0efc: 69           ld   l,c
0efd: 6f           ld   l,a
0efe: 6e           ld   l,(hl)
0eff: 21 50 00     ld   hl,$0050
0f02: e5           push hl
0f03: cd 1a 3d     call $3D1A
0f06: cd ec 16     call $16EC
0f09: cd 28 01     call $0128
0f0c: e1           pop  hl
0f0d: 22 ad 16     ld   ($16AD),hl
0f10: 2a ad 16     ld   hl,($16AD)
0f13: e5           push hl
0f14: 21 40 00     ld   hl,$0040
0f17: e5           push hl
0f18: cd a4 3c     call $3CA4
0f1b: f1           pop  af
0f1c: d2 22 0f     jp   nc,$0F22
0f1f: c3 16 10     jp   $1016
0f22: 21 01 00     ld   hl,$0001
0f25: 22 af 16     ld   ($16AF),hl
0f28: 21 ef 14     ld   hl,$14EF
0f2b: e5           push hl
0f2c: 2a af 16     ld   hl,($16AF)
0f2f: 2b           dec  hl
0f30: e5           push hl
0f31: 21 16 00     ld   hl,$0016
0f34: e5           push hl
0f35: cd f5 3e     call $3EF5
0f38: e1           pop  hl
0f39: d1           pop  de
0f3a: 19           add  hl,de
0f3b: 16 00        ld   d,$00
0f3d: 5e           ld   e,(hl)
0f3e: d5           push de
0f3f: 21 ad 14     ld   hl,$14AD
0f42: e5           push hl
0f43: 2a ad 16     ld   hl,($16AD)
0f46: 2b           dec  hl
0f47: e5           push hl
0f48: 21 10 00     ld   hl,$0010
0f4b: e5           push hl
0f4c: cd f5 3e     call $3EF5
0f4f: e1           pop  hl
0f50: d1           pop  de
0f51: 19           add  hl,de
0f52: 23           inc  hl
0f53: 23           inc  hl
0f54: 23           inc  hl
0f55: 23           inc  hl
0f56: 16 00        ld   d,$00
0f58: 5e           ld   e,(hl)
0f59: d5           push de
0f5a: cd b9 3c     call $3CB9
0f5d: 2a af 16     ld   hl,($16AF)
0f60: e5           push hl
0f61: 2a cb 15     ld   hl,($15CB)
0f64: e5           push hl
0f65: cd d0 3c     call $3CD0
0f68: e1           pop  hl
0f69: d1           pop  de
0f6a: 7d           ld   a,l
0f6b: a3           and  e
0f6c: 1f           rra
0f6d: d2 7a 0f     jp   nc,$0F7A
0f70: 2a af 16     ld   hl,($16AF)
0f73: 23           inc  hl
0f74: 22 af 16     ld   ($16AF),hl
0f77: c3 28 0f     jp   $0F28
0f7a: 2a af 16     ld   hl,($16AF)
0f7d: e5           push hl
0f7e: 2a cb 15     ld   hl,($15CB)
0f81: e5           push hl
0f82: cd d0 3c     call $3CD0
0f85: f1           pop  af
0f86: d2 9a 0f     jp   nc,$0F9A
0f89: 21 cd 15     ld   hl,$15CD
0f8c: e5           push hl
0f8d: 2a af 16     ld   hl,($16AF)
0f90: 2b           dec  hl
0f91: d1           pop  de
0f92: 19           add  hl,de
0f93: e5           push hl
0f94: 21 00 00     ld   hl,$0000
0f97: eb           ex   de,hl
0f98: e1           pop  hl
0f99: 73           ld   (hl),e
0f9a: 2a ad 16     ld   hl,($16AD)
0f9d: e5           push hl
0f9e: 21 04 00     ld   hl,$0004
0fa1: e5           push hl
0fa2: cd d9 3c     call $3CD9
0fa5: f1           pop  af
0fa6: d2 ea 0f     jp   nc,$0FEA
0fa9: 21 ad 14     ld   hl,$14AD
0fac: e5           push hl
0fad: 2a ad 16     ld   hl,($16AD)
0fb0: 23           inc  hl
0fb1: 2b           dec  hl
0fb2: e5           push hl
0fb3: 21 10 00     ld   hl,$0010
0fb6: e5           push hl
0fb7: cd f5 3e     call $3EF5
0fba: e1           pop  hl
0fbb: d1           pop  de
0fbc: 19           add  hl,de
0fbd: e5           push hl
0fbe: 21 ad 14     ld   hl,$14AD
0fc1: e5           push hl
0fc2: 2a ad 16     ld   hl,($16AD)
0fc5: 2b           dec  hl
0fc6: e5           push hl
0fc7: 21 10 00     ld   hl,$0010
0fca: e5           push hl
0fcb: cd f5 3e     call $3EF5
0fce: e1           pop  hl
0fcf: d1           pop  de
0fd0: 19           add  hl,de
0fd1: e5           push hl
0fd2: 21 04 00     ld   hl,$0004
0fd5: eb           ex   de,hl
0fd6: 2a ad 16     ld   hl,($16AD)
0fd9: 7b           ld   a,e
0fda: 95           sub  l
0fdb: 6f           ld   l,a
0fdc: 7a           ld   a,d
0fdd: 9c           sbc  a,h
0fde: 67           ld   h,a
0fdf: e5           push hl
0fe0: 21 10 00     ld   hl,$0010
0fe3: e5           push hl
0fe4: cd f5 3e     call $3EF5
0fe7: cd e1 36     call $36E1
0fea: 21 ad 14     ld   hl,$14AD
0fed: e5           push hl
0fee: 21 04 00     ld   hl,$0004
0ff1: 2b           dec  hl
0ff2: e5           push hl
0ff3: 21 10 00     ld   hl,$0010
0ff6: e5           push hl
0ff7: cd f5 3e     call $3EF5
0ffa: e1           pop  hl
0ffb: d1           pop  de
0ffc: 19           add  hl,de
0ffd: e5           push hl
0ffe: 21 10 00     ld   hl,$0010
1001: e5           push hl
1002: 21 00 00     ld   hl,$0000
1005: e5           push hl
1006: cd 10 37     call $3710
1009: 2a ed 14     ld   hl,($14ED)
100c: 2b           dec  hl
100d: 22 ed 14     ld   ($14ED),hl
1010: cd f2 16     call $16F2
1013: cd e6 16     call $16E6
1016: c9           ret
1017: cd 3a 01     call $013A
101a: f1           pop  af
101b: d2 21 10     jp   nc,$1021
101e: c3 0c 11     jp   $110C
1021: 21 eb 15     ld   hl,$15EB
1024: e5           push hl
1025: cd 39 10     call $1039
1028: 10 73        djnz $109D
102a: 65           ld   h,l
102b: 6c           ld   l,h
102c: 65           ld   h,l
102d: 63           ld   h,e
102e: 74           ld   (hl),h
102f: 20 70        jr   nz,$10A1
1031: 61           ld   h,c
1032: 72           ld   (hl),d
1033: 74           ld   (hl),h
1034: 69           ld   l,c
1035: 74           ld   (hl),h
1036: 69           ld   l,c
1037: 6f           ld   l,a
1038: 6e           ld   l,(hl)
1039: 21 50 00     ld   hl,$0050
103c: e5           push hl
103d: cd 1a 3d     call $3D1A
1040: cd e9 16     call $16E9
1043: 21 eb 15     ld   hl,$15EB
1046: e5           push hl
1047: cd 5a 10     call $105A
104a: 0f           rrca
104b: 61           ld   h,c
104c: 73           ld   (hl),e
104d: 73           ld   (hl),e
104e: 69           ld   l,c
104f: 67           ld   h,a
1050: 6e           ld   l,(hl)
1051: 20 62        jr   nz,$10B5
1053: 6f           ld   l,a
1054: 6f           ld   l,a
1055: 74           ld   (hl),h
1056: 61           ld   h,c
1057: 62           ld   h,d
1058: 6c           ld   l,h
1059: 65           ld   h,l
105a: 21 50 00     ld   hl,$0050
105d: e5           push hl
105e: cd 1a 3d     call $3D1A
1061: cd ec 16     call $16EC
1064: cd 28 01     call $0128
1067: e1           pop  hl
1068: 22 b1 16     ld   ($16B1),hl
106b: 2a b1 16     ld   hl,($16B1)
106e: e5           push hl
106f: 21 40 00     ld   hl,$0040
1072: e5           push hl
1073: cd a4 3c     call $3CA4
1076: f1           pop  af
1077: d2 7d 10     jp   nc,$107D
107a: c3 0c 11     jp   $110C
107d: 21 01 00     ld   hl,$0001
1080: e5           push hl
1081: 2a ed 14     ld   hl,($14ED)
1084: e5           push hl
1085: d1           pop  de
1086: e1           pop  hl
1087: 2b           dec  hl
1088: e5           push hl
1089: d5           push de
108a: 22 b3 16     ld   ($16B3),hl
108d: d1           pop  de
108e: e1           pop  hl
108f: 23           inc  hl
1090: e5           push hl
1091: d5           push de
1092: cd 51 39     call $3951
1095: 22 c9 16     ld   ($16C9),hl
1098: 2a b3 16     ld   hl,($16B3)
109b: 23           inc  hl
109c: 22 b3 16     ld   ($16B3),hl
109f: 2a c9 16     ld   hl,($16C9)
10a2: 2b           dec  hl
10a3: 22 c9 16     ld   ($16C9),hl
10a6: 7c           ld   a,h
10a7: b5           or   l
10a8: ca 09 11     jp   z,$1109
10ab: 21 ad 14     ld   hl,$14AD
10ae: e5           push hl
10af: 2a b3 16     ld   hl,($16B3)
10b2: 2b           dec  hl
10b3: e5           push hl
10b4: 21 10 00     ld   hl,$0010
10b7: e5           push hl
10b8: cd f5 3e     call $3EF5
10bb: e1           pop  hl
10bc: d1           pop  de
10bd: 19           add  hl,de
10be: 22 cb 16     ld   ($16CB),hl
10c1: 2a b3 16     ld   hl,($16B3)
10c4: e5           push hl
10c5: 2a b1 16     ld   hl,($16B1)
10c8: e5           push hl
10c9: cd b9 3c     call $3CB9
10cc: f1           pop  af
10cd: d2 dd 10     jp   nc,$10DD
10d0: 2a cb 16     ld   hl,($16CB)
10d3: e5           push hl
10d4: 21 00 00     ld   hl,$0000
10d7: eb           ex   de,hl
10d8: e1           pop  hl
10d9: 73           ld   (hl),e
10da: c3 06 11     jp   $1106
10dd: 2a cb 16     ld   hl,($16CB)
10e0: 16 00        ld   d,$00
10e2: 5e           ld   e,(hl)
10e3: d5           push de
10e4: 21 80 00     ld   hl,$0080
10e7: e5           push hl
10e8: cd 71 3c     call $3C71
10eb: f1           pop  af
10ec: d2 fc 10     jp   nc,$10FC
10ef: 2a cb 16     ld   hl,($16CB)
10f2: e5           push hl
10f3: 21 00 00     ld   hl,$0000
10f6: eb           ex   de,hl
10f7: e1           pop  hl
10f8: 73           ld   (hl),e
10f9: c3 06 11     jp   $1106
10fc: 2a cb 16     ld   hl,($16CB)
10ff: e5           push hl
1100: 21 80 00     ld   hl,$0080
1103: eb           ex   de,hl
1104: e1           pop  hl
1105: 73           ld   (hl),e
1106: c3 98 10     jp   $1098
1109: cd e6 16     call $16E6
110c: c9           ret
110d: cd cb 35     call $35CB
1110: 21 00 00     ld   hl,$0000
1113: e5           push hl
1114: 21 0c 00     ld   hl,$000C
1117: e5           push hl
1118: cd 2b 2b     call $2B2B
111b: 21 50 00     ld   hl,$0050
111e: e5           push hl
111f: 21 eb 15     ld   hl,$15EB
1122: e5           push hl
1123: cd 05 35     call $3505
1126: 21 81 38     ld   hl,$3881
1129: e5           push hl
112a: cd f4 3c     call $3CF4
112d: cd 57 2c     call $2C57
1130: 21 81 38     ld   hl,$3881
1133: e5           push hl
1134: cd f4 3c     call $3CF4
1137: cd 57 2c     call $2C57
113a: cd 7f 39     call $397F
113d: c9           ret
113e: 21 81 38     ld   hl,$3881
1141: e5           push hl
1142: cd f4 3c     call $3CF4
1145: cd 57 2c     call $2C57
1148: 21 50 00     ld   hl,$0050
114b: e5           push hl
114c: cd 60 11     call $1160
114f: 10 48        djnz $1199
1151: 44           ld   b,h
1152: 50           ld   d,b
1153: 41           ld   b,c
1154: 52           ld   d,d
1155: 54           ld   d,h
1156: 20 2d        jr   nz,$1185
1158: 20 61        jr   nz,$11BB
115a: 62           ld   h,d
115b: 6f           ld   l,a
115c: 72           ld   (hl),d
115d: 74           ld   (hl),h
115e: 65           ld   h,l
115f: 64           ld   h,h
1160: cd 05 35     call $3505
1163: 21 81 38     ld   hl,$3881
1166: e5           push hl
1167: cd f4 3c     call $3CF4
116a: cd 57 2c     call $2C57
116d: cd 7f 39     call $397F
1170: c9           ret
1171: cd cb 35     call $35CB
1174: 21 00 00     ld   hl,$0000
1177: e5           push hl
1178: 21 0b 00     ld   hl,$000B
117b: e5           push hl
117c: cd 2b 2b     call $2B2B
117f: 21 50 00     ld   hl,$0050
1182: e5           push hl
1183: cd 9f 11     call $119F
1186: 18 55        jr   $11DD
1188: 50           ld   d,b
1189: 44           ld   b,h
118a: 41           ld   b,c
118b: 54           ld   d,h
118c: 49           ld   c,c
118d: 4e           ld   c,(hl)
118e: 47           ld   b,a
118f: 20 50        jr   nz,$11E1
1191: 41           ld   b,c
1192: 52           ld   d,d
1193: 54           ld   d,h
1194: 49           ld   c,c
1195: 54           ld   d,h
1196: 49           ld   c,c
1197: 4f           ld   c,a
1198: 4e           ld   c,(hl)
1199: 20 54        jr   nz,$11EF
119b: 41           ld   b,c
119c: 42           ld   b,d
119d: 4c           ld   c,h
119e: 45           ld   b,l
119f: cd 05 35     call $3505
11a2: 21 81 38     ld   hl,$3881
11a5: e5           push hl
11a6: cd f4 3c     call $3CF4
11a9: cd 57 2c     call $2C57
11ac: 21 50 00     ld   hl,$0050
11af: e5           push hl
11b0: cd d9 11     call $11D9
11b3: 25           dec  h
11b4: 54           ld   d,h
11b5: 79           ld   a,c
11b6: 70           ld   (hl),b
11b7: 65           ld   h,l
11b8: 20 22        jr   nz,$11DC
11ba: 55           ld   d,l
11bb: 22 20 74     ld   ($7420),hl
11be: 6f           ld   l,a
11bf: 20 75        jr   nz,$1236
11c1: 70           ld   (hl),b
11c2: 64           ld   h,h
11c3: 61           ld   h,c
11c4: 74           ld   (hl),h
11c5: 65           ld   h,l
11c6: 20 6f        jr   nz,$1237
11c8: 72           ld   (hl),d
11c9: 20 52        jr   nz,$121D
11cb: 45           ld   b,l
11cc: 54           ld   d,h
11cd: 55           ld   d,l
11ce: 52           ld   d,d
11cf: 4e           ld   c,(hl)
11d0: 20 74        jr   nz,$1246
11d2: 6f           ld   l,a
11d3: 20 61        jr   nz,$1236
11d5: 62           ld   h,d
11d6: 6f           ld   l,a
11d7: 72           ld   (hl),d
11d8: 74           ld   (hl),h
11d9: cd 14 35     call $3514
11dc: 21 41 16     ld   hl,$1641
11df: e5           push hl
11e0: cd ff 39     call $39FF
11e3: 21 55 00     ld   hl,$0055
11e6: e5           push hl
11e7: cd 53 3a     call $3A53
11ea: 21 0d 00     ld   hl,$000D
11ed: e5           push hl
11ee: cd 53 3a     call $3A53
11f1: cd fa 39     call $39FA
11f4: cd a5 34     call $34A5
11f7: 21 00 00     ld   hl,$0000
11fa: e5           push hl
11fb: 21 0d 00     ld   hl,$000D
11fe: e5           push hl
11ff: cd 2b 2b     call $2B2B
1202: cd d5 35     call $35D5
1205: 3a 41 16     ld   a,($1641)
1208: 26 00        ld   h,$00
120a: 6f           ld   l,a
120b: e5           push hl
120c: 21 55 00     ld   hl,$0055
120f: e5           push hl
1210: cd 71 3c     call $3C71
1213: f1           pop  af
1214: d2 a1 13     jp   nc,$13A1
1217: cd 6e 2b     call $2B6E
121a: f1           pop  af
121b: d2 64 13     jp   nc,$1364
121e: 21 01 00     ld   hl,$0001
1221: e5           push hl
1222: 2a cb 15     ld   hl,($15CB)
1225: e5           push hl
1226: d1           pop  de
1227: e1           pop  hl
1228: 2b           dec  hl
1229: e5           push hl
122a: d5           push de
122b: 22 b5 16     ld   ($16B5),hl
122e: d1           pop  de
122f: e1           pop  hl
1230: 23           inc  hl
1231: e5           push hl
1232: d5           push de
1233: cd 51 39     call $3951
1236: 22 cd 16     ld   ($16CD),hl
1239: 2a b5 16     ld   hl,($16B5)
123c: 23           inc  hl
123d: 22 b5 16     ld   ($16B5),hl
1240: 2a cd 16     ld   hl,($16CD)
1243: 2b           dec  hl
1244: 22 cd 16     ld   ($16CD),hl
1247: 7c           ld   a,h
1248: b5           or   l
1249: ca 0b 13     jp   z,$130B
124c: 21 ef 14     ld   hl,$14EF
124f: e5           push hl
1250: 2a b5 16     ld   hl,($16B5)
1253: 2b           dec  hl
1254: e5           push hl
1255: 21 16 00     ld   hl,$0016
1258: e5           push hl
1259: cd f5 3e     call $3EF5
125c: e1           pop  hl
125d: d1           pop  de
125e: 19           add  hl,de
125f: 16 00        ld   d,$00
1261: 5e           ld   e,(hl)
1262: d5           push de
1263: 21 f0 00     ld   hl,$00F0
1266: e5           push hl
1267: cd 71 3c     call $3C71
126a: 21 cd 15     ld   hl,$15CD
126d: e5           push hl
126e: 2a b5 16     ld   hl,($16B5)
1271: 2b           dec  hl
1272: d1           pop  de
1273: 19           add  hl,de
1274: 16 00        ld   d,$00
1276: 5e           ld   e,(hl)
1277: eb           ex   de,hl
1278: d1           pop  de
1279: 7d           ld   a,l
127a: a3           and  e
127b: 1f           rra
127c: d2 08 13     jp   nc,$1308
127f: 21 01 00     ld   hl,$0001
1282: 22 b7 16     ld   ($16B7),hl
1285: 21 ad 14     ld   hl,$14AD
1288: e5           push hl
1289: 2a b7 16     ld   hl,($16B7)
128c: 2b           dec  hl
128d: e5           push hl
128e: 21 10 00     ld   hl,$0010
1291: e5           push hl
1292: cd f5 3e     call $3EF5
1295: e1           pop  hl
1296: d1           pop  de
1297: 19           add  hl,de
1298: 23           inc  hl
1299: 23           inc  hl
129a: 23           inc  hl
129b: 23           inc  hl
129c: 16 00        ld   d,$00
129e: 5e           ld   e,(hl)
129f: d5           push de
12a0: 21 f0 00     ld   hl,$00F0
12a3: e5           push hl
12a4: cd b9 3c     call $3CB9
12a7: f1           pop  af
12a8: d2 b5 12     jp   nc,$12B5
12ab: 2a b7 16     ld   hl,($16B7)
12ae: 23           inc  hl
12af: 22 b7 16     ld   ($16B7),hl
12b2: c3 85 12     jp   $1285
12b5: 21 ad 14     ld   hl,$14AD
12b8: e5           push hl
12b9: 2a b7 16     ld   hl,($16B7)
12bc: 2b           dec  hl
12bd: e5           push hl
12be: 21 10 00     ld   hl,$0010
12c1: e5           push hl
12c2: cd f5 3e     call $3EF5
12c5: e1           pop  hl
12c6: d1           pop  de
12c7: 19           add  hl,de
12c8: 22 cf 16     ld   ($16CF),hl
12cb: 2a cf 16     ld   hl,($16CF)
12ce: 23           inc  hl
12cf: e5           push hl
12d0: cd eb 2b     call $2BEB
12d3: 21 02 00     ld   hl,$0002
12d6: e5           push hl
12d7: cd 12 36     call $3612
12da: 2a cf 16     ld   hl,($16CF)
12dd: 23           inc  hl
12de: 16 00        ld   d,$00
12e0: 5e           ld   e,(hl)
12e1: eb           ex   de,hl
12e2: d1           pop  de
12e3: 19           add  hl,de
12e4: e5           push hl
12e5: 2a cf 16     ld   hl,($16CF)
12e8: 11 05 00     ld   de,$0005
12eb: 19           add  hl,de
12ec: e5           push hl
12ed: cd eb 2b     call $2BEB
12f0: 21 02 00     ld   hl,$0002
12f3: e5           push hl
12f4: cd 12 36     call $3612
12f7: 2a cf 16     ld   hl,($16CF)
12fa: 11 05 00     ld   de,$0005
12fd: 19           add  hl,de
12fe: 16 00        ld   d,$00
1300: 5e           ld   e,(hl)
1301: eb           ex   de,hl
1302: d1           pop  de
1303: 19           add  hl,de
1304: e5           push hl
1305: cd fa 2b     call $2BFA
1308: c3 39 12     jp   $1239
130b: 21 00 00     ld   hl,$0000
130e: e5           push hl
130f: 21 14 00     ld   hl,$0014
1312: e5           push hl
1313: cd 2b 2b     call $2B2B
1316: 21 50 00     ld   hl,$0050
1319: e5           push hl
131a: cd 5c 13     call $135C
131d: 3e 50        ld   a,$50
131f: 61           ld   h,c
1320: 72           ld   (hl),d
1321: 74           ld   (hl),h
1322: 69           ld   l,c
1323: 74           ld   (hl),h
1324: 69           ld   l,c
1325: 6f           ld   l,a
1326: 6e           ld   l,(hl)
1327: 20 74        jr   nz,$139D
1329: 61           ld   h,c
132a: 62           ld   h,d
132b: 6c           ld   l,h
132c: 65           ld   h,l
132d: 20 75        jr   nz,$13A4
132f: 70           ld   (hl),b
1330: 64           ld   h,h
1331: 61           ld   h,c
1332: 74           ld   (hl),h
1333: 65           ld   h,l
1334: 64           ld   h,h
1335: 20 2d        jr   nz,$1364
1337: 20 70        jr   nz,$13A9
1339: 72           ld   (hl),d
133a: 65           ld   h,l
133b: 73           ld   (hl),e
133c: 73           ld   (hl),e
133d: 20 72        jr   nz,$13B1
133f: 65           ld   h,l
1340: 73           ld   (hl),e
1341: 65           ld   h,l
1342: 74           ld   (hl),h
1343: 20 62        jr   nz,$13A7
1345: 75           ld   (hl),l
1346: 74           ld   (hl),h
1347: 74           ld   (hl),h
1348: 6f           ld   l,a
1349: 6e           ld   l,(hl)
134a: 20 74        jr   nz,$13C0
134c: 6f           ld   l,a
134d: 20 72        jr   nz,$13C1
134f: 65           ld   h,l
1350: 2d           dec  l
1351: 62           ld   h,d
1352: 6f           ld   l,a
1353: 6f           ld   l,a
1354: 74           ld   (hl),h
1355: 20 73        jr   nz,$13CA
1357: 79           ld   a,c
1358: 73           ld   (hl),e
1359: 74           ld   (hl),h
135a: 65           ld   h,l
135b: 6d           ld   l,l
135c: cd 14 35     call $3514
135f: f3           di
1360: 76           halt
1361: c3 9e 13     jp   $139E
1364: 21 eb 15     ld   hl,$15EB
1367: e5           push hl
1368: cd 94 13     call $1394
136b: 28 45        jr   z,$13B2
136d: 72           ld   (hl),d
136e: 72           ld   (hl),d
136f: 6f           ld   l,a
1370: 72           ld   (hl),d
1371: 20 77        jr   nz,$13EA
1373: 72           ld   (hl),d
1374: 69           ld   l,c
1375: 74           ld   (hl),h
1376: 69           ld   l,c
1377: 6e           ld   l,(hl)
1378: 67           ld   h,a
1379: 20 70        jr   nz,$13EB
137b: 61           ld   h,c
137c: 72           ld   (hl),d
137d: 74           ld   (hl),h
137e: 69           ld   l,c
137f: 74           ld   (hl),h
1380: 69           ld   l,c
1381: 6f           ld   l,a
1382: 6e           ld   l,(hl)
1383: 20 74        jr   nz,$13F9
1385: 61           ld   h,c
1386: 62           ld   h,d
1387: 6c           ld   l,h
1388: 65           ld   h,l
1389: 20 2d        jr   nz,$13B8
138b: 20 61        jr   nz,$13EE
138d: 62           ld   h,d
138e: 6f           ld   l,a
138f: 72           ld   (hl),d
1390: 74           ld   (hl),h
1391: 69           ld   l,c
1392: 6e           ld   l,(hl)
1393: 67           ld   h,a
1394: 21 50 00     ld   hl,$0050
1397: e5           push hl
1398: cd 1a 3d     call $3D1A
139b: cd 43 01     call $0143
139e: c3 dd 13     jp   $13DD
13a1: 21 eb 15     ld   hl,$15EB
13a4: e5           push hl
13a5: cd d3 13     call $13D3
13a8: 2a 48 44     ld   hl,($4448)
13ab: 50           ld   d,b
13ac: 41           ld   b,c
13ad: 52           ld   d,d
13ae: 54           ld   d,h
13af: 20 61        jr   nz,$1412
13b1: 62           ld   h,d
13b2: 6f           ld   l,a
13b3: 72           ld   (hl),d
13b4: 74           ld   (hl),h
13b5: 65           ld   h,l
13b6: 64           ld   h,h
13b7: 20 2d        jr   nz,$13E6
13b9: 20 70        jr   nz,$142B
13bb: 61           ld   h,c
13bc: 72           ld   (hl),d
13bd: 74           ld   (hl),h
13be: 69           ld   l,c
13bf: 74           ld   (hl),h
13c0: 69           ld   l,c
13c1: 6f           ld   l,a
13c2: 6e           ld   l,(hl)
13c3: 20 74        jr   nz,$1439
13c5: 61           ld   h,c
13c6: 62           ld   h,d
13c7: 6c           ld   l,h
13c8: 65           ld   h,l
13c9: 20 75        jr   nz,$1440
13cb: 6e           ld   l,(hl)
13cc: 74           ld   (hl),h
13cd: 6f           ld   l,a
13ce: 75           ld   (hl),l
13cf: 63           ld   h,e
13d0: 68           ld   l,b
13d1: 65           ld   h,l
13d2: 64           ld   h,h
13d3: 21 50 00     ld   hl,$0050
13d6: e5           push hl
13d7: cd 1a 3d     call $3D1A
13da: cd 43 01     call $0143
13dd: c9           ret
13de: 2a 06 00     ld   hl,($0006)
13e1: f9           ld   sp,hl
13e2: cd 20 37     call $3720
13e5: cd c5 31     call $31C5
13e8: cd e3 16     call $16E3
13eb: cd 13 01     call $0113
13ee: 21 eb 15     ld   hl,$15EB
13f1: e5           push hl
13f2: cd 04 14     call $1404
13f5: 0e 73        ld   c,$73
13f7: 65           ld   h,l
13f8: 6c           ld   l,h
13f9: 65           ld   h,l
13fa: 63           ld   h,e
13fb: 74           ld   (hl),h
13fc: 20 63        jr   nz,$1461
13fe: 6f           ld   l,a
13ff: 6d           ld   l,l
1400: 6d           ld   l,l
1401: 61           ld   h,c
1402: 6e           ld   l,(hl)
1403: 64           ld   h,h
1404: 21 50 00     ld   hl,$0050
1407: e5           push hl
1408: cd 1a 3d     call $3D1A
140b: cd e9 16     call $16E9
140e: 21 eb 15     ld   hl,$15EB
1411: e5           push hl
1412: cd 25 14     call $1425
1415: 0f           rrca
1416: 65           ld   h,l
1417: 78           ld   a,b
1418: 65           ld   h,l
1419: 63           ld   h,e
141a: 75           ld   (hl),l
141b: 74           ld   (hl),h
141c: 65           ld   h,l
141d: 20 63        jr   nz,$1482
141f: 6f           ld   l,a
1420: 6d           ld   l,l
1421: 6d           ld   l,l
1422: 61           ld   h,c
1423: 6e           ld   l,(hl)
1424: 64           ld   h,h
1425: 21 50 00     ld   hl,$0050
1428: e5           push hl
1429: cd 1a 3d     call $3D1A
142c: cd ec 16     call $16EC
142f: cd 25 01     call $0125
1432: cd 22 01     call $0122
1435: c3 8f 14     jp   $148F
1438: 21 eb 15     ld   hl,$15EB
143b: e5           push hl
143c: cd 6a 14     call $146A
143f: 2a 48 44     ld   hl,($4448)
1442: 50           ld   d,b
1443: 41           ld   b,c
1444: 52           ld   d,d
1445: 54           ld   d,h
1446: 20 61        jr   nz,$14A9
1448: 62           ld   h,d
1449: 6f           ld   l,a
144a: 72           ld   (hl),d
144b: 74           ld   (hl),h
144c: 65           ld   h,l
144d: 64           ld   h,h
144e: 20 2d        jr   nz,$147D
1450: 20 70        jr   nz,$14C2
1452: 61           ld   h,c
1453: 72           ld   (hl),d
1454: 74           ld   (hl),h
1455: 69           ld   l,c
1456: 74           ld   (hl),h
1457: 69           ld   l,c
1458: 6f           ld   l,a
1459: 6e           ld   l,(hl)
145a: 20 74        jr   nz,$14D0
145c: 61           ld   h,c
145d: 62           ld   h,d
145e: 6c           ld   l,h
145f: 65           ld   h,l
1460: 20 75        jr   nz,$14D7
1462: 6e           ld   l,(hl)
1463: 74           ld   (hl),h
1464: 6f           ld   l,a
1465: 75           ld   (hl),l
1466: 63           ld   h,e
1467: 68           ld   l,b
1468: 65           ld   h,l
1469: 64           ld   h,h
146a: 21 50 00     ld   hl,$0050
146d: e5           push hl
146e: cd 1a 3d     call $3D1A
1471: cd 43 01     call $0143
1474: c3 a2 14     jp   $14A2
1477: cd 2b 01     call $012B
147a: c3 a2 14     jp   $14A2
147d: cd 3d 01     call $013D
1480: c3 a2 14     jp   $14A2
1483: cd 40 01     call $0140
1486: c3 a2 14     jp   $14A2
1489: cd 49 01     call $0149
148c: c3 a2 14     jp   $14A2
148f: cd 8f 39     call $398F
1492: 01 00 04     ld   bc,$0400
1495: 00           nop
1496: 38 14        jr   c,$14AC
1498: 77           ld   (hl),a
1499: 14           inc  d
149a: 7d           ld   a,l
149b: 14           inc  d
149c: 83           add  a,e
149d: 14           inc  d
149e: 89           adc  a,c
149f: 14           inc  d
14a0: a2           and  d
14a1: 14           inc  d
14a2: 21 00 00     ld   hl,$0000
14a5: 7d           ld   a,l
14a6: 1f           rra
14a7: d2 ee 13     jp   nc,$13EE
14aa: cd 7f 39     call $397F
14ad: 00           nop
14ae: 00           nop
14af: 00           nop
14b0: 00           nop
14b1: 00           nop
14b2: 00           nop
14b3: 00           nop
14b4: 00           nop
14b5: 00           nop
14b6: 00           nop
14b7: 00           nop
14b8: 00           nop
14b9: 00           nop
14ba: 00           nop
14bb: 00           nop
14bc: 00           nop
14bd: 00           nop
14be: 00           nop
14bf: 00           nop
14c0: 00           nop
14c1: 00           nop
14c2: 00           nop
14c3: 00           nop
14c4: 00           nop
14c5: 00           nop
14c6: 00           nop
14c7: 00           nop
14c8: 00           nop
14c9: 00           nop
14ca: 00           nop
14cb: 00           nop
14cc: 00           nop
14cd: 00           nop
14ce: 00           nop
14cf: 00           nop
14d0: 00           nop
14d1: 00           nop
14d2: 00           nop
14d3: 00           nop
14d4: 00           nop
14d5: 00           nop
14d6: 00           nop
14d7: 00           nop
14d8: 00           nop
14d9: 00           nop
14da: 00           nop
14db: 00           nop
14dc: 00           nop
14dd: 00           nop
14de: 00           nop
14df: 00           nop
14e0: 00           nop
14e1: 00           nop
14e2: 00           nop
14e3: 00           nop
14e4: 00           nop
14e5: 00           nop
14e6: 00           nop
14e7: 00           nop
14e8: 00           nop
14e9: 00           nop
14ea: 00           nop
14eb: 00           nop
14ec: 00           nop
14ed: 00           nop
14ee: 00           nop
14ef: 00           nop
14f0: 00           nop
14f1: 00           nop
14f2: 00           nop
14f3: 00           nop
14f4: 00           nop
14f5: 00           nop
14f6: 00           nop
14f7: 00           nop
14f8: 00           nop
14f9: 00           nop
14fa: 00           nop
14fb: 00           nop
14fc: 00           nop
14fd: 00           nop
14fe: 00           nop
14ff: 00           nop
1500: 00           nop
1501: 00           nop
1502: 00           nop
1503: 00           nop
1504: 00           nop
1505: 00           nop
1506: 00           nop
1507: 00           nop
1508: 00           nop
1509: 00           nop
150a: 00           nop
150b: 00           nop
150c: 00           nop
150d: 00           nop
150e: 00           nop
150f: 00           nop
1510: 00           nop
1511: 00           nop
1512: 00           nop
1513: 00           nop
1514: 00           nop
1515: 00           nop
1516: 00           nop
1517: 00           nop
1518: 00           nop
1519: 00           nop
151a: 00           nop
151b: 00           nop
151c: 00           nop
151d: 00           nop
151e: 00           nop
151f: 00           nop
1520: 00           nop
1521: 00           nop
1522: 00           nop
1523: 00           nop
1524: 00           nop
1525: 00           nop
1526: 00           nop
1527: 00           nop
1528: 00           nop
1529: 00           nop
152a: 00           nop
152b: 00           nop
152c: 00           nop
152d: 00           nop
152e: 00           nop
152f: 00           nop
1530: 00           nop
1531: 00           nop
1532: 00           nop
1533: 00           nop
1534: 00           nop
1535: 00           nop
1536: 00           nop
1537: 00           nop
1538: 00           nop
1539: 00           nop
153a: 00           nop
153b: 00           nop
153c: 00           nop
153d: 00           nop
153e: 00           nop
153f: 00           nop
1540: 00           nop
1541: 00           nop
1542: 00           nop
1543: 00           nop
1544: 00           nop
1545: 00           nop
1546: 00           nop
1547: 00           nop
1548: 00           nop
1549: 00           nop
154a: 00           nop
154b: 00           nop
154c: 00           nop
154d: 00           nop
154e: 00           nop
154f: 00           nop
1550: 00           nop
1551: 00           nop
1552: 00           nop
1553: 00           nop
1554: 00           nop
1555: 00           nop
1556: 00           nop
1557: 00           nop
1558: 00           nop
1559: 00           nop
155a: 00           nop
155b: 00           nop
155c: 00           nop
155d: 00           nop
155e: 00           nop
155f: 00           nop
1560: 00           nop
1561: 00           nop
1562: 00           nop
1563: 00           nop
1564: 00           nop
1565: 00           nop
1566: 00           nop
1567: 00           nop
1568: 00           nop
1569: 00           nop
156a: 00           nop
156b: 00           nop
156c: 00           nop
156d: 00           nop
156e: 00           nop
156f: 00           nop
1570: 00           nop
1571: 00           nop
1572: 00           nop
1573: 00           nop
1574: 00           nop
1575: 00           nop
1576: 00           nop
1577: 00           nop
1578: 00           nop
1579: 00           nop
157a: 00           nop
157b: 00           nop
157c: 00           nop
157d: 00           nop
157e: 00           nop
157f: 00           nop
1580: 00           nop
1581: 00           nop
1582: 00           nop
1583: 00           nop
1584: 00           nop
1585: 00           nop
1586: 00           nop
1587: 00           nop
1588: 00           nop
1589: 00           nop
158a: 00           nop
158b: 00           nop
158c: 00           nop
158d: 00           nop
158e: 00           nop
158f: 00           nop
1590: 00           nop
1591: 00           nop
1592: 00           nop
1593: 00           nop
1594: 00           nop
1595: 00           nop
1596: 00           nop
1597: 00           nop
1598: 00           nop
1599: 00           nop
159a: 00           nop
159b: 00           nop
159c: 00           nop
159d: 00           nop
159e: 00           nop
159f: 00           nop
15a0: 00           nop
15a1: 00           nop
15a2: 00           nop
15a3: 00           nop
15a4: 00           nop
15a5: 00           nop
15a6: 00           nop
15a7: 00           nop
15a8: 00           nop
15a9: 00           nop
15aa: 00           nop
15ab: 00           nop
15ac: 00           nop
15ad: 00           nop
15ae: 00           nop
15af: 00           nop
15b0: 00           nop
15b1: 00           nop
15b2: 00           nop
15b3: 00           nop
15b4: 00           nop
15b5: 00           nop
15b6: 00           nop
15b7: 00           nop
15b8: 00           nop
15b9: 00           nop
15ba: 00           nop
15bb: 00           nop
15bc: 00           nop
15bd: 00           nop
15be: 00           nop
15bf: 00           nop
15c0: 00           nop
15c1: 00           nop
15c2: 00           nop
15c3: 00           nop
15c4: 00           nop
15c5: 00           nop
15c6: 00           nop
15c7: 00           nop
15c8: 00           nop
15c9: 00           nop
15ca: 00           nop
15cb: 00           nop
15cc: 00           nop
15cd: 00           nop
15ce: 00           nop
15cf: 00           nop
15d0: 00           nop
15d1: 00           nop
15d2: 00           nop
15d3: 00           nop
15d4: 00           nop
15d5: 00           nop
15d6: 00           nop
15d7: 00           nop
15d8: 00           nop
15d9: 00           nop
15da: 00           nop
15db: 00           nop
15dc: 00           nop
15dd: 00           nop
15de: 00           nop
15df: 00           nop
15e0: 00           nop
15e1: 00           nop
15e2: 00           nop
15e3: 00           nop
15e4: 00           nop
15e5: 00           nop
15e6: 00           nop
15e7: 00           nop
15e8: 00           nop
15e9: 00           nop
15ea: 00           nop
15eb: 00           nop
15ec: 00           nop
15ed: 00           nop
15ee: 00           nop
15ef: 00           nop
15f0: 00           nop
15f1: 00           nop
15f2: 00           nop
15f3: 00           nop
15f4: 00           nop
15f5: 00           nop
15f6: 00           nop
15f7: 00           nop
15f8: 00           nop
15f9: 00           nop
15fa: 00           nop
15fb: 00           nop
15fc: 00           nop
15fd: 00           nop
15fe: 00           nop
15ff: 00           nop
1600: 00           nop
1601: 00           nop
1602: 00           nop
1603: 00           nop
1604: 00           nop
1605: 00           nop
1606: 00           nop
1607: 00           nop
1608: 00           nop
1609: 00           nop
160a: 00           nop
160b: 00           nop
160c: 00           nop
160d: 00           nop
160e: 00           nop
160f: 00           nop
1610: 00           nop
1611: 00           nop
1612: 00           nop
1613: 00           nop
1614: 00           nop
1615: 00           nop
1616: 00           nop
1617: 00           nop
1618: 00           nop
1619: 00           nop
161a: 00           nop
161b: 00           nop
161c: 00           nop
161d: 00           nop
161e: 00           nop
161f: 00           nop
1620: 00           nop
1621: 00           nop
1622: 00           nop
1623: 00           nop
1624: 00           nop
1625: 00           nop
1626: 00           nop
1627: 00           nop
1628: 00           nop
1629: 00           nop
162a: 00           nop
162b: 00           nop
162c: 00           nop
162d: 00           nop
162e: 00           nop
162f: 00           nop
1630: 00           nop
1631: 00           nop
1632: 00           nop
1633: 00           nop
1634: 00           nop
1635: 00           nop
1636: 00           nop
1637: 00           nop
1638: 00           nop
1639: 00           nop
163a: 00           nop
163b: 00           nop
163c: 00           nop
163d: 00           nop
163e: 00           nop
163f: 00           nop
1640: 00           nop
1641: 00           nop
1642: 00           nop
1643: 00           nop
1644: 00           nop
1645: 00           nop
1646: 00           nop
1647: 00           nop
1648: 00           nop
1649: 00           nop
164a: 00           nop
164b: 00           nop
164c: 00           nop
164d: 00           nop
164e: 00           nop
164f: 00           nop
1650: 00           nop
1651: 00           nop
1652: 00           nop
1653: 00           nop
1654: 00           nop
1655: 00           nop
1656: 00           nop
1657: 00           nop
1658: 00           nop
1659: 00           nop
165a: 00           nop
165b: 00           nop
165c: 00           nop
165d: 00           nop
165e: 00           nop
165f: 00           nop
1660: 00           nop
1661: 00           nop
1662: 00           nop
1663: 00           nop
1664: 00           nop
1665: 00           nop
1666: 00           nop
1667: 00           nop
1668: 00           nop
1669: 00           nop
166a: 00           nop
166b: 00           nop
166c: 00           nop
166d: 00           nop
166e: 00           nop
166f: 00           nop
1670: 00           nop
1671: 00           nop
1672: 00           nop
1673: 00           nop
1674: 00           nop
1675: 00           nop
1676: 00           nop
1677: 00           nop
1678: 00           nop
1679: 00           nop
167a: 00           nop
167b: 00           nop
167c: 00           nop
167d: 00           nop
167e: 00           nop
167f: 00           nop
1680: 00           nop
1681: 00           nop
1682: 00           nop
1683: 00           nop
1684: 00           nop
1685: 00           nop
1686: 00           nop
1687: 00           nop
1688: 00           nop
1689: 00           nop
168a: 00           nop
168b: 00           nop
168c: 00           nop
168d: 00           nop
168e: 00           nop
168f: 00           nop
1690: 00           nop
1691: 00           nop
1692: 00           nop
1693: 00           nop
1694: 00           nop
1695: 00           nop
1696: 00           nop
1697: 00           nop
1698: 00           nop
1699: 00           nop
169a: 00           nop
169b: 00           nop
169c: 00           nop
169d: 00           nop
169e: 00           nop
169f: 00           nop
16a0: 00           nop
16a1: 00           nop
16a2: 00           nop
16a3: 00           nop
16a4: 00           nop
16a5: 00           nop
16a6: 00           nop
16a7: 00           nop
16a8: 00           nop
16a9: 00           nop
16aa: 00           nop
16ab: 00           nop
16ac: 00           nop
16ad: 00           nop
16ae: 00           nop
16af: 00           nop
16b0: 00           nop
16b1: 00           nop
16b2: 00           nop
16b3: 00           nop
16b4: 00           nop
16b5: 00           nop
16b6: 00           nop
16b7: 00           nop
16b8: 00           nop
16b9: 00           nop
16ba: 00           nop
16bb: 00           nop
16bc: 00           nop
16bd: 00           nop
16be: 00           nop
16bf: 00           nop
16c0: 00           nop
16c1: 00           nop
16c2: 00           nop
16c3: 00           nop
16c4: 00           nop
16c5: 00           nop
16c6: 00           nop
16c7: 00           nop
16c8: 00           nop
16c9: 00           nop
16ca: 00           nop
16cb: 00           nop
16cc: 00           nop
16cd: 00           nop
16ce: 00           nop
16cf: 00           nop
16d0: 00           nop
16d1: c3 00 00     jp   $0000
16d4: c3 df 19     jp   $19DF
16d7: c3 fb 16     jp   $16FB
16da: c3 d6 17     jp   $17D6
16dd: c3 a9 17     jp   $17A9
16e0: c3 b4 18     jp   $18B4
16e3: c3 08 1a     jp   $1A08
16e6: c3 65 1e     jp   $1E65
16e9: c3 2a 20     jp   $202A
16ec: c3 60 20     jp   $2060
16ef: c3 96 20     jp   $2096
16f2: c3 a5 20     jp   $20A5
16f5: c3 2c 22     jp   $222C
16f8: c3 83 22     jp   $2283
16fb: 21 00 00     ld   hl,$0000
16fe: e5           push hl
16ff: 21 00 00     ld   hl,$0000
1702: e5           push hl
1703: cd 2b 2b     call $2B2B
1706: 21 50 00     ld   hl,$0050
1709: e5           push hl
170a: cd 40 17     call $1740
170d: 32 45 50     ld   ($5045),a
1710: 53           ld   d,e
1711: 4f           ld   c,a
1712: 4e           ld   c,(hl)
1713: 20 41        jr   nz,$1756
1715: 4d           ld   c,l
1716: 45           ld   b,l
1717: 52           ld   d,d
1718: 49           ld   c,c
1719: 43           ld   b,e
171a: 41           ld   b,c
171b: 2c           inc  l
171c: 20 49        jr   nz,$1767
171e: 4e           ld   c,(hl)
171f: 43           ld   b,e
1720: 2e 20        ld   l,$20
1722: 20 20        jr   nz,$1744
1724: 48           ld   c,b
1725: 44           ld   b,h
1726: 50           ld   d,b
1727: 41           ld   b,c
1728: 52           ld   d,d
1729: 54           ld   d,h
172a: 20 55        jr   nz,$1781
172c: 54           ld   d,h
172d: 49           ld   c,c
172e: 4c           ld   c,h
172f: 49           ld   c,c
1730: 54           ld   d,h
1731: 59           ld   e,c
1732: 20 20        jr   nz,$1754
1734: 56           ld   d,(hl)
1735: 65           ld   h,l
1736: 72           ld   (hl),d
1737: 73           ld   (hl),e
1738: 69           ld   l,c
1739: 6f           ld   l,a
173a: 6e           ld   l,(hl)
173b: 20 32        jr   nz,$176F
173d: 2e 32        ld   l,$32
173f: 37           scf
1740: cd 05 35     call $3505
1743: 21 0c 00     ld   hl,$000C
1746: e5           push hl
1747: 21 02 00     ld   hl,$0002
174a: e5           push hl
174b: cd 2b 2b     call $2B2B
174e: 21 ca 00     ld   hl,$00CA
1751: e5           push hl
1752: 21 81 38     ld   hl,$3881
1755: e5           push hl
1756: cd f4 3c     call $3CF4
1759: cd fa 3c     call $3CFA
175c: cd aa 3e     call $3EAA
175f: 21 20 00     ld   hl,$0020
1762: e5           push hl
1763: cd fa 3c     call $3CFA
1766: cd aa 3e     call $3EAA
1769: 21 cb 00     ld   hl,$00CB
176c: e5           push hl
176d: cd fa 3c     call $3CFA
1770: cd aa 3e     call $3EAA
1773: 21 28 00     ld   hl,$0028
1776: e5           push hl
1777: 21 02 00     ld   hl,$0002
177a: e5           push hl
177b: cd 2b 2b     call $2B2B
177e: 21 81 38     ld   hl,$3881
1781: e5           push hl
1782: cd f4 3c     call $3CF4
1785: cd 8f 17     call $178F
1788: 06 52        ld   b,$52
178a: 45           ld   b,l
178b: 54           ld   d,h
178c: 55           ld   d,l
178d: 52           ld   d,d
178e: 4e           ld   c,(hl)
178f: cd fa 3c     call $3CFA
1792: cd 6b 3d     call $3D6B
1795: 21 09 00     ld   hl,$0009
1798: e5           push hl
1799: 21 46 00     ld   hl,$0046
179c: e5           push hl
179d: 21 01 00     ld   hl,$0001
17a0: e5           push hl
17a1: 21 03 00     ld   hl,$0003
17a4: e5           push hl
17a5: cd ef 26     call $26EF
17a8: c9           ret
17a9: 21 21 00     ld   hl,$0021
17ac: e5           push hl
17ad: cd 3c 34     call $343C
17b0: 21 eb 15     ld   hl,$15EB
17b3: e5           push hl
17b4: 21 81 38     ld   hl,$3881
17b7: e5           push hl
17b8: cd f4 3c     call $3CF4
17bb: cd fa 3c     call $3CFA
17be: cd 6b 3d     call $3D6B
17c1: 21 32 00     ld   hl,$0032
17c4: e5           push hl
17c5: cd 3c 34     call $343C
17c8: cd fd 35     call $35FD
17cb: 21 81 38     ld   hl,$3881
17ce: e5           push hl
17cf: cd f4 3c     call $3CF4
17d2: cd 57 2c     call $2C57
17d5: c9           ret
17d6: 21 1e 00     ld   hl,$001E
17d9: e5           push hl
17da: 21 33 00     ld   hl,$0033
17dd: e5           push hl
17de: 21 04 00     ld   hl,$0004
17e1: e5           push hl
17e2: 21 09 00     ld   hl,$0009
17e5: e5           push hl
17e6: 21 e9 15     ld   hl,$15E9
17e9: 5e           ld   e,(hl)
17ea: 23           inc  hl
17eb: 56           ld   d,(hl)
17ec: eb           ex   de,hl
17ed: d1           pop  de
17ee: 19           add  hl,de
17ef: e5           push hl
17f0: cd f3 26     call $26F3
17f3: 21 00 00     ld   hl,$0000
17f6: e5           push hl
17f7: 21 05 00     ld   hl,$0005
17fa: e5           push hl
17fb: cd 2b 2b     call $2B2B
17fe: 21 eb 15     ld   hl,$15EB
1801: e5           push hl
1802: cd 16 18     call $1816
1805: 10 45        djnz $184C
1807: 78           ld   a,b
1808: 69           ld   l,c
1809: 74           ld   (hl),h
180a: 20 2d        jr   nz,$1839
180c: 20 4e        jr   nz,$185C
180e: 6f           ld   l,a
180f: 20 75        jr   nz,$1886
1811: 70           ld   (hl),b
1812: 64           ld   h,h
1813: 61           ld   h,c
1814: 74           ld   (hl),h
1815: 65           ld   h,l
1816: 21 50 00     ld   hl,$0050
1819: e5           push hl
181a: cd 1a 3d     call $3D1A
181d: cd dd 16     call $16DD
1820: 21 eb 15     ld   hl,$15EB
1823: e5           push hl
1824: cd 35 18     call $1835
1827: 0d           dec  c
1828: 41           ld   b,c
1829: 64           ld   h,h
182a: 64           ld   h,h
182b: 20 50        jr   nz,$187D
182d: 61           ld   h,c
182e: 72           ld   (hl),d
182f: 74           ld   (hl),h
1830: 69           ld   l,c
1831: 74           ld   (hl),h
1832: 69           ld   l,c
1833: 6f           ld   l,a
1834: 6e           ld   l,(hl)
1835: 21 50 00     ld   hl,$0050
1838: e5           push hl
1839: cd 1a 3d     call $3D1A
183c: cd dd 16     call $16DD
183f: 21 eb 15     ld   hl,$15EB
1842: e5           push hl
1843: cd 57 18     call $1857
1846: 10 44        djnz $188C
1848: 65           ld   h,l
1849: 6c           ld   l,h
184a: 65           ld   h,l
184b: 74           ld   (hl),h
184c: 65           ld   h,l
184d: 20 50        jr   nz,$189F
184f: 61           ld   h,c
1850: 72           ld   (hl),d
1851: 74           ld   (hl),h
1852: 69           ld   l,c
1853: 74           ld   (hl),h
1854: 69           ld   l,c
1855: 6f           ld   l,a
1856: 6e           ld   l,(hl)
1857: 21 50 00     ld   hl,$0050
185a: e5           push hl
185b: cd 1a 3d     call $3D1A
185e: cd dd 16     call $16DD
1861: 21 e9 15     ld   hl,$15E9
1864: 5e           ld   e,(hl)
1865: 23           inc  hl
1866: 56           ld   d,(hl)
1867: d5           push de
1868: 21 01 00     ld   hl,$0001
186b: e5           push hl
186c: cd 71 3c     call $3C71
186f: f1           pop  af
1870: d2 94 18     jp   nc,$1894
1873: 21 eb 15     ld   hl,$15EB
1876: e5           push hl
1877: cd 8a 18     call $188A
187a: 0f           rrca
187b: 43           ld   b,e
187c: 68           ld   l,b
187d: 61           ld   h,c
187e: 6e           ld   l,(hl)
187f: 67           ld   h,a
1880: 65           ld   h,l
1881: 20 42        jr   nz,$18C5
1883: 6f           ld   l,a
1884: 6f           ld   l,a
1885: 74           ld   (hl),h
1886: 61           ld   h,c
1887: 62           ld   h,d
1888: 6c           ld   l,h
1889: 65           ld   h,l
188a: 21 50 00     ld   hl,$0050
188d: e5           push hl
188e: cd 1a 3d     call $3D1A
1891: cd dd 16     call $16DD
1894: 21 eb 15     ld   hl,$15EB
1897: e5           push hl
1898: cd a9 18     call $18A9
189b: 0d           dec  c
189c: 45           ld   b,l
189d: 78           ld   a,b
189e: 69           ld   l,c
189f: 74           ld   (hl),h
18a0: 20 2d        jr   nz,$18CF
18a2: 20 55        jr   nz,$18F9
18a4: 70           ld   (hl),b
18a5: 64           ld   h,h
18a6: 61           ld   h,c
18a7: 74           ld   (hl),h
18a8: 65           ld   h,l
18a9: 21 50 00     ld   hl,$0050
18ac: e5           push hl
18ad: cd 1a 3d     call $3D1A
18b0: cd dd 16     call $16DD
18b3: c9           ret
18b4: 21 00 00     ld   hl,$0000
18b7: e5           push hl
18b8: 21 33 00     ld   hl,$0033
18bb: e5           push hl
18bc: 21 0c 00     ld   hl,$000C
18bf: e5           push hl
18c0: 21 13 00     ld   hl,$0013
18c3: e5           push hl
18c4: cd f3 26     call $26F3
18c7: 21 0c 00     ld   hl,$000C
18ca: e5           push hl
18cb: 21 0d 00     ld   hl,$000D
18ce: e5           push hl
18cf: cd 2b 2b     call $2B2B
18d2: 21 81 38     ld   hl,$3881
18d5: e5           push hl
18d6: cd f4 3c     call $3CF4
18d9: cd e6 18     call $18E6
18dc: 09           add  hl,bc
18dd: 50           ld   d,b
18de: 41           ld   b,c
18df: 52           ld   d,d
18e0: 54           ld   d,h
18e1: 49           ld   c,c
18e2: 54           ld   d,h
18e3: 49           ld   c,c
18e4: 4f           ld   c,a
18e5: 4e           ld   c,(hl)
18e6: cd fa 3c     call $3CFA
18e9: cd 6b 3d     call $3D6B
18ec: 21 e9 15     ld   hl,$15E9
18ef: 5e           ld   e,(hl)
18f0: 23           inc  hl
18f1: 56           ld   d,(hl)
18f2: d5           push de
18f3: 21 01 00     ld   hl,$0001
18f6: e5           push hl
18f7: cd 71 3c     call $3C71
18fa: f1           pop  af
18fb: d2 20 19     jp   nc,$1920
18fe: 21 20 00     ld   hl,$0020
1901: e5           push hl
1902: 21 0d 00     ld   hl,$000D
1905: e5           push hl
1906: cd 2b 2b     call $2B2B
1909: 21 81 38     ld   hl,$3881
190c: e5           push hl
190d: cd f4 3c     call $3CF4
1910: cd 1a 19     call $191A
1913: 06 53        ld   b,$53
1915: 54           ld   d,h
1916: 41           ld   b,c
1917: 54           ld   d,h
1918: 55           ld   d,l
1919: 53           ld   d,e
191a: cd fa 3c     call $3CFA
191d: cd 6b 3d     call $3D6B
1920: 21 2c 00     ld   hl,$002C
1923: e5           push hl
1924: 21 0d 00     ld   hl,$000D
1927: e5           push hl
1928: cd 2b 2b     call $2B2B
192b: 21 81 38     ld   hl,$3881
192e: e5           push hl
192f: cd f4 3c     call $3CF4
1932: cd 3a 19     call $193A
1935: 04           inc  b
1936: 53           ld   d,e
1937: 49           ld   c,c
1938: 5a           ld   e,d
1939: 45           ld   b,l
193a: cd fa 3c     call $3CFA
193d: cd 6b 3d     call $3D6B
1940: 21 01 00     ld   hl,$0001
1943: e5           push hl
1944: 21 04 00     ld   hl,$0004
1947: e5           push hl
1948: d1           pop  de
1949: e1           pop  hl
194a: 2b           dec  hl
194b: e5           push hl
194c: d5           push de
194d: 22 d2 22     ld   ($22D2),hl
1950: d1           pop  de
1951: e1           pop  hl
1952: 23           inc  hl
1953: e5           push hl
1954: d5           push de
1955: cd 51 39     call $3951
1958: 22 ea 22     ld   ($22EA),hl
195b: 2a d2 22     ld   hl,($22D2)
195e: 23           inc  hl
195f: 22 d2 22     ld   ($22D2),hl
1962: 2a ea 22     ld   hl,($22EA)
1965: 2b           dec  hl
1966: 22 ea 22     ld   ($22EA),hl
1969: 7c           ld   a,h
196a: b5           or   l
196b: ca 99 19     jp   z,$1999
196e: 21 03 00     ld   hl,$0003
1971: e5           push hl
1972: 21 0c 00     ld   hl,$000C
1975: eb           ex   de,hl
1976: 2a d2 22     ld   hl,($22D2)
1979: 19           add  hl,de
197a: 23           inc  hl
197b: 23           inc  hl
197c: e5           push hl
197d: cd 2b 2b     call $2B2B
1980: 2a d2 22     ld   hl,($22D2)
1983: eb           ex   de,hl
1984: 21 30 00     ld   hl,$0030
1987: 19           add  hl,de
1988: e5           push hl
1989: 21 81 38     ld   hl,$3881
198c: e5           push hl
198d: cd f4 3c     call $3CF4
1990: cd fa 3c     call $3CFA
1993: cd aa 3e     call $3EAA
1996: c3 5b 19     jp   $195B
1999: 21 24 00     ld   hl,$0024
199c: e5           push hl
199d: 21 14 00     ld   hl,$0014
19a0: e5           push hl
19a1: cd 2b 2b     call $2B2B
19a4: 21 81 38     ld   hl,$3881
19a7: e5           push hl
19a8: cd f4 3c     call $3CF4
19ab: cd b4 19     call $19B4
19ae: 05           dec  b
19af: 54           ld   d,h
19b0: 6f           ld   l,a
19b1: 74           ld   (hl),h
19b2: 61           ld   h,c
19b3: 6c           ld   l,h
19b4: cd fa 3c     call $3CFA
19b7: cd 6b 3d     call $3D6B
19ba: cd 57 2c     call $2C57
19bd: 21 20 00     ld   hl,$0020
19c0: e5           push hl
19c1: cd 3c 34     call $343C
19c4: 21 81 38     ld   hl,$3881
19c7: e5           push hl
19c8: cd f4 3c     call $3CF4
19cb: cd d8 19     call $19D8
19ce: 09           add  hl,bc
19cf: 52           ld   d,d
19d0: 65           ld   h,l
19d1: 6d           ld   l,l
19d2: 61           ld   h,c
19d3: 69           ld   l,c
19d4: 6e           ld   l,(hl)
19d5: 69           ld   l,c
19d6: 6e           ld   l,(hl)
19d7: 67           ld   h,a
19d8: cd fa 3c     call $3CFA
19db: cd 6b 3d     call $3D6B
19de: c9           ret
19df: cd cb 35     call $35CB
19e2: cd e4 35     call $35E4
19e5: cd ee 35     call $35EE
19e8: cd d7 16     call $16D7
19eb: cd da 16     call $16DA
19ee: cd e0 16     call $16E0
19f1: cd e6 16     call $16E6
19f4: 21 35 00     ld   hl,$0035
19f7: e5           push hl
19f8: 21 4e 00     ld   hl,$004E
19fb: e5           push hl
19fc: 21 0c 00     ld   hl,$000C
19ff: e5           push hl
1a00: 21 17 00     ld   hl,$0017
1a03: e5           push hl
1a04: cd f3 26     call $26F3
1a07: c9           ret
1a08: cd cb 35     call $35CB
1a0b: cd e4 35     call $35E4
1a0e: 21 00 00     ld   hl,$0000
1a11: e5           push hl
1a12: 21 04 00     ld   hl,$0004
1a15: e5           push hl
1a16: cd 2b 2b     call $2B2B
1a19: 21 81 38     ld   hl,$3881
1a1c: e5           push hl
1a1d: cd f4 3c     call $3CF4
1a20: cd 68 1a     call $1A68
1a23: 44           ld   b,h
1a24: 20 20        jr   nz,$1A46
1a26: 20 20        jr   nz,$1A48
1a28: 54           ld   d,h
1a29: 68           ld   l,b
1a2a: 65           ld   h,l
1a2b: 20 70        jr   nz,$1A9D
1a2d: 75           ld   (hl),l
1a2e: 72           ld   (hl),d
1a2f: 70           ld   (hl),b
1a30: 6f           ld   l,a
1a31: 73           ld   (hl),e
1a32: 65           ld   h,l
1a33: 20 6f        jr   nz,$1AA4
1a35: 66           ld   h,(hl)
1a36: 20 74        jr   nz,$1AAC
1a38: 68           ld   l,b
1a39: 69           ld   l,c
1a3a: 73           ld   (hl),e
1a3b: 20 70        jr   nz,$1AAD
1a3d: 72           ld   (hl),d
1a3e: 6f           ld   l,a
1a3f: 67           ld   h,a
1a40: 72           ld   (hl),d
1a41: 61           ld   h,c
1a42: 6d           ld   l,l
1a43: 20 69        jr   nz,$1AAE
1a45: 73           ld   (hl),e
1a46: 20 74        jr   nz,$1ABC
1a48: 6f           ld   l,a
1a49: 20 73        jr   nz,$1ABE
1a4b: 75           ld   (hl),l
1a4c: 62           ld   h,d
1a4d: 2d           dec  l
1a4e: 64           ld   h,h
1a4f: 69           ld   l,c
1a50: 76           halt
1a51: 69           ld   l,c
1a52: 64           ld   h,h
1a53: 65           ld   h,l
1a54: 20 79        jr   nz,$1ACF
1a56: 6f           ld   l,a
1a57: 75           ld   (hl),l
1a58: 72           ld   (hl),d
1a59: 20 68        jr   nz,$1AC3
1a5b: 61           ld   h,c
1a5c: 72           ld   (hl),d
1a5d: 64           ld   h,h
1a5e: 20 64        jr   nz,$1AC4
1a60: 69           ld   l,c
1a61: 73           ld   (hl),e
1a62: 6b           ld   l,e
1a63: 20 69        jr   nz,$1ACE
1a65: 6e           ld   l,(hl)
1a66: 74           ld   (hl),h
1a67: 6f           ld   l,a
1a68: cd fa 3c     call $3CFA
1a6b: cd 6b 3d     call $3D6B
1a6e: cd 57 2c     call $2C57
1a71: 21 81 38     ld   hl,$3881
1a74: e5           push hl
1a75: cd f4 3c     call $3CF4
1a78: cd c4 1a     call $1AC4
1a7b: 48           ld   c,b
1a7c: 20 20        jr   nz,$1A9E
1a7e: 20 20        jr   nz,$1AA0
1a80: 73           ld   (hl),e
1a81: 65           ld   h,l
1a82: 70           ld   (hl),b
1a83: 61           ld   h,c
1a84: 72           ld   (hl),d
1a85: 61           ld   h,c
1a86: 74           ld   (hl),h
1a87: 65           ld   h,l
1a88: 20 61        jr   nz,$1AEB
1a8a: 72           ld   (hl),d
1a8b: 65           ld   h,l
1a8c: 61           ld   h,c
1a8d: 73           ld   (hl),e
1a8e: 2c           inc  l
1a8f: 20 61        jr   nz,$1AF2
1a91: 6e           ld   l,(hl)
1a92: 64           ld   h,h
1a93: 20 61        jr   nz,$1AF6
1a95: 73           ld   (hl),e
1a96: 73           ld   (hl),e
1a97: 69           ld   l,c
1a98: 67           ld   h,a
1a99: 6e           ld   l,(hl)
1a9a: 20 64        jr   nz,$1B00
1a9c: 69           ld   l,c
1a9d: 66           ld   h,(hl)
1a9e: 66           ld   h,(hl)
1a9f: 65           ld   h,l
1aa0: 72           ld   (hl),d
1aa1: 65           ld   h,l
1aa2: 6e           ld   l,(hl)
1aa3: 74           ld   (hl),h
1aa4: 20 6f        jr   nz,$1B15
1aa6: 70           ld   (hl),b
1aa7: 65           ld   h,l
1aa8: 72           ld   (hl),d
1aa9: 61           ld   h,c
1aaa: 74           ld   (hl),h
1aab: 69           ld   l,c
1aac: 6e           ld   l,(hl)
1aad: 67           ld   h,a
1aae: 20 73        jr   nz,$1B23
1ab0: 79           ld   a,c
1ab1: 73           ld   (hl),e
1ab2: 74           ld   (hl),h
1ab3: 65           ld   h,l
1ab4: 6d           ld   l,l
1ab5: 73           ld   (hl),e
1ab6: 20 66        jr   nz,$1B1E
1ab8: 6f           ld   l,a
1ab9: 72           ld   (hl),d
1aba: 20 65        jr   nz,$1B21
1abc: 78           ld   a,b
1abd: 63           ld   h,e
1abe: 6c           ld   l,h
1abf: 75           ld   (hl),l
1ac0: 73           ld   (hl),e
1ac1: 69           ld   l,c
1ac2: 76           halt
1ac3: 65           ld   h,l
1ac4: cd fa 3c     call $3CFA
1ac7: cd 6b 3d     call $3D6B
1aca: cd 57 2c     call $2C57
1acd: 21 81 38     ld   hl,$3881
1ad0: e5           push hl
1ad1: cd f4 3c     call $3CF4
1ad4: cd f0 1a     call $1AF0
1ad7: 18 20        jr   $1AF9
1ad9: 20 20        jr   nz,$1AFB
1adb: 20 61        jr   nz,$1B3E
1add: 63           ld   h,e
1ade: 63           ld   h,e
1adf: 65           ld   h,l
1ae0: 73           ld   (hl),e
1ae1: 73           ld   (hl),e
1ae2: 20 74        jr   nz,$1B58
1ae4: 6f           ld   l,a
1ae5: 20 65        jr   nz,$1B4C
1ae7: 61           ld   h,c
1ae8: 63           ld   h,e
1ae9: 68           ld   l,b
1aea: 20 61        jr   nz,$1B4D
1aec: 72           ld   (hl),d
1aed: 65           ld   h,l
1aee: 61           ld   h,c
1aef: 2e cd        ld   l,$CD
1af1: fa 3c cd     jp   m,$CD3C
1af4: 6b           ld   l,e
1af5: 3d           dec  a
1af6: cd 57 2c     call $2C57
1af9: 21 81 38     ld   hl,$3881
1afc: e5           push hl
1afd: cd f4 3c     call $3CF4
1b00: cd 57 2c     call $2C57
1b03: 21 81 38     ld   hl,$3881
1b06: e5           push hl
1b07: cd f4 3c     call $3CF4
1b0a: cd 57 1b     call $1B57
1b0d: 49           ld   c,c
1b0e: 20 20        jr   nz,$1B30
1b10: 20 20        jr   nz,$1B32
1b12: 52           ld   d,d
1b13: 75           ld   (hl),l
1b14: 6e           ld   l,(hl)
1b15: 6e           ld   l,(hl)
1b16: 69           ld   l,c
1b17: 6e           ld   l,(hl)
1b18: 67           ld   h,a
1b19: 20 61        jr   nz,$1B7C
1b1b: 6e           ld   l,(hl)
1b1c: 79           ld   a,c
1b1d: 20 70        jr   nz,$1B8F
1b1f: 72           ld   (hl),d
1b20: 65           ld   h,l
1b21: 76           halt
1b22: 69           ld   l,c
1b23: 6f           ld   l,a
1b24: 75           ld   (hl),l
1b25: 73           ld   (hl),e
1b26: 6c           ld   l,h
1b27: 79           ld   a,c
1b28: 20 72        jr   nz,$1B9C
1b2a: 65           ld   h,l
1b2b: 6c           ld   l,h
1b2c: 65           ld   h,l
1b2d: 61           ld   h,c
1b2e: 73           ld   (hl),e
1b2f: 65           ld   h,l
1b30: 64           ld   h,h
1b31: 20 6f        jr   nz,$1BA2
1b33: 70           ld   (hl),b
1b34: 65           ld   h,l
1b35: 72           ld   (hl),d
1b36: 61           ld   h,c
1b37: 74           ld   (hl),h
1b38: 69           ld   l,c
1b39: 6e           ld   l,(hl)
1b3a: 67           ld   h,a
1b3b: 20 73        jr   nz,$1BB0
1b3d: 79           ld   a,c
1b3e: 73           ld   (hl),e
1b3f: 74           ld   (hl),h
1b40: 65           ld   h,l
1b41: 6d           ld   l,l
1b42: 20 68        jr   nz,$1BAC
1b44: 61           ld   h,c
1b45: 73           ld   (hl),e
1b46: 20 74        jr   nz,$1BBC
1b48: 68           ld   l,b
1b49: 65           ld   h,l
1b4a: 20 70        jr   nz,$1BBC
1b4c: 6f           ld   l,a
1b4d: 74           ld   (hl),h
1b4e: 65           ld   h,l
1b4f: 6e           ld   l,(hl)
1b50: 74           ld   (hl),h
1b51: 69           ld   l,c
1b52: 61           ld   h,c
1b53: 6c           ld   l,h
1b54: 20 6f        jr   nz,$1BC5
1b56: 66           ld   h,(hl)
1b57: cd fa 3c     call $3CFA
1b5a: cd 6b 3d     call $3D6B
1b5d: cd 57 2c     call $2C57
1b60: 21 81 38     ld   hl,$3881
1b63: e5           push hl
1b64: cd f4 3c     call $3CF4
1b67: cd b2 1b     call $1BB2
1b6a: 47           ld   b,a
1b6b: 20 20        jr   nz,$1B8D
1b6d: 20 20        jr   nz,$1B8F
1b6f: 63           ld   h,e
1b70: 72           ld   (hl),d
1b71: 61           ld   h,c
1b72: 73           ld   (hl),e
1b73: 68           ld   l,b
1b74: 69           ld   l,c
1b75: 6e           ld   l,(hl)
1b76: 67           ld   h,a
1b77: 20 61        jr   nz,$1BDA
1b79: 20 70        jr   nz,$1BEB
1b7b: 61           ld   h,c
1b7c: 72           ld   (hl),d
1b7d: 74           ld   (hl),h
1b7e: 69           ld   l,c
1b7f: 74           ld   (hl),h
1b80: 69           ld   l,c
1b81: 6f           ld   l,a
1b82: 6e           ld   l,(hl)
1b83: 65           ld   h,l
1b84: 64           ld   h,h
1b85: 20 68        jr   nz,$1BEF
1b87: 61           ld   h,c
1b88: 72           ld   (hl),d
1b89: 64           ld   h,h
1b8a: 20 64        jr   nz,$1BF0
1b8c: 69           ld   l,c
1b8d: 73           ld   (hl),e
1b8e: 6b           ld   l,e
1b8f: 2e 20        ld   l,$20
1b91: 20 54        jr   nz,$1BE7
1b93: 68           ld   l,b
1b94: 65           ld   h,l
1b95: 73           ld   (hl),e
1b96: 65           ld   h,l
1b97: 20 6f        jr   nz,$1C08
1b99: 70           ld   (hl),b
1b9a: 65           ld   h,l
1b9b: 72           ld   (hl),d
1b9c: 61           ld   h,c
1b9d: 74           ld   (hl),h
1b9e: 69           ld   l,c
1b9f: 6e           ld   l,(hl)
1ba0: 67           ld   h,a
1ba1: 20 73        jr   nz,$1C16
1ba3: 79           ld   a,c
1ba4: 73           ld   (hl),e
1ba5: 74           ld   (hl),h
1ba6: 65           ld   h,l
1ba7: 6d           ld   l,l
1ba8: 73           ld   (hl),e
1ba9: 20 69        jr   nz,$1C14
1bab: 6e           ld   l,(hl)
1bac: 63           ld   h,e
1bad: 6c           ld   l,h
1bae: 75           ld   (hl),l
1baf: 64           ld   h,h
1bb0: 65           ld   h,l
1bb1: 3a cd fa     ld   a,($FACD)
1bb4: 3c           inc  a
1bb5: cd 6b 3d     call $3D6B
1bb8: cd 57 2c     call $2C57
1bbb: 21 81 38     ld   hl,$3881
1bbe: e5           push hl
1bbf: cd f4 3c     call $3CF4
1bc2: cd ef 1b     call $1BEF
1bc5: 29           add  hl,hl
1bc6: 20 20        jr   nz,$1BE8
1bc8: 20 20        jr   nz,$1BEA
1bca: 20 20        jr   nz,$1BEC
1bcc: 20 20        jr   nz,$1BEE
1bce: 20 20        jr   nz,$1BF0
1bd0: 20 20        jr   nz,$1BF2
1bd2: 43           ld   b,e
1bd3: 50           ld   d,b
1bd4: 2f           cpl
1bd5: 4d           ld   c,l
1bd6: 20 42        jr   nz,$1C1A
1bd8: 32 2e 32     ld   ($322E),a
1bdb: 30 20        jr   nc,$1BFD
1bdd: 61           ld   h,c
1bde: 6e           ld   l,(hl)
1bdf: 64           ld   h,h
1be0: 20 70        jr   nz,$1C52
1be2: 72           ld   (hl),d
1be3: 69           ld   l,c
1be4: 6f           ld   l,a
1be5: 72           ld   (hl),d
1be6: 20 76        jr   nz,$1C5E
1be8: 65           ld   h,l
1be9: 72           ld   (hl),d
1bea: 73           ld   (hl),e
1beb: 69           ld   l,c
1bec: 6f           ld   l,a
1bed: 6e           ld   l,(hl)
1bee: 73           ld   (hl),e
1bef: cd fa 3c     call $3CFA
1bf2: cd 6b 3d     call $3D6B
1bf5: cd 57 2c     call $2C57
1bf8: 21 81 38     ld   hl,$3881
1bfb: e5           push hl
1bfc: cd f4 3c     call $3CF4
1bff: cd 2e 1c     call $1C2E
1c02: 2b           dec  hl
1c03: 20 20        jr   nz,$1C25
1c05: 20 20        jr   nz,$1C27
1c07: 20 20        jr   nz,$1C29
1c09: 20 20        jr   nz,$1C2B
1c0b: 20 20        jr   nz,$1C2D
1c0d: 20 20        jr   nz,$1C2F
1c0f: 56           ld   d,(hl)
1c10: 41           ld   b,c
1c11: 4c           ld   c,h
1c12: 44           ld   b,h
1c13: 4f           ld   c,a
1c14: 43           ld   b,e
1c15: 53           ld   d,e
1c16: 20 31        jr   nz,$1C49
1c18: 2e 31        ld   l,$31
1c1a: 39           add  hl,sp
1c1b: 20 61        jr   nz,$1C7E
1c1d: 6e           ld   l,(hl)
1c1e: 64           ld   h,h
1c1f: 20 70        jr   nz,$1C91
1c21: 72           ld   (hl),d
1c22: 69           ld   l,c
1c23: 6f           ld   l,a
1c24: 72           ld   (hl),d
1c25: 20 76        jr   nz,$1C9D
1c27: 65           ld   h,l
1c28: 72           ld   (hl),d
1c29: 73           ld   (hl),e
1c2a: 69           ld   l,c
1c2b: 6f           ld   l,a
1c2c: 6e           ld   l,(hl)
1c2d: 73           ld   (hl),e
1c2e: cd fa 3c     call $3CFA
1c31: cd 6b 3d     call $3D6B
1c34: cd 57 2c     call $2C57
1c37: 21 81 38     ld   hl,$3881
1c3a: e5           push hl
1c3b: cd f4 3c     call $3CF4
1c3e: cd 57 2c     call $2C57
1c41: 21 81 38     ld   hl,$3881
1c44: e5           push hl
1c45: cd f4 3c     call $3CF4
1c48: cd 92 1c     call $1C92
1c4b: 46           ld   b,(hl)
1c4c: 20 20        jr   nz,$1C6E
1c4e: 20 20        jr   nz,$1C70
1c50: 49           ld   c,c
1c51: 66           ld   h,(hl)
1c52: 20 61        jr   nz,$1CB5
1c54: 20 64        jr   nz,$1CBA
1c56: 69           ld   l,c
1c57: 73           ld   (hl),e
1c58: 6b           ld   l,e
1c59: 20 70        jr   nz,$1CCB
1c5b: 61           ld   h,c
1c5c: 72           ld   (hl),d
1c5d: 74           ld   (hl),h
1c5e: 69           ld   l,c
1c5f: 74           ld   (hl),h
1c60: 69           ld   l,c
1c61: 6f           ld   l,a
1c62: 6e           ld   l,(hl)
1c63: 20 69        jr   nz,$1CCE
1c65: 73           ld   (hl),e
1c66: 20 64        jr   nz,$1CCC
1c68: 65           ld   h,l
1c69: 6c           ld   l,h
1c6a: 65           ld   h,l
1c6b: 74           ld   (hl),h
1c6c: 65           ld   h,l
1c6d: 64           ld   h,h
1c6e: 20 6f        jr   nz,$1CDF
1c70: 72           ld   (hl),d
1c71: 20 72        jr   nz,$1CE5
1c73: 65           ld   h,l
1c74: 2d           dec  l
1c75: 61           ld   h,c
1c76: 73           ld   (hl),e
1c77: 73           ld   (hl),e
1c78: 69           ld   l,c
1c79: 67           ld   h,a
1c7a: 6e           ld   l,(hl)
1c7b: 65           ld   h,l
1c7c: 64           ld   h,h
1c7d: 2c           inc  l
1c7e: 20 74        jr   nz,$1CF4
1c80: 68           ld   l,b
1c81: 65           ld   h,l
1c82: 6e           ld   l,(hl)
1c83: 20 49        jr   nz,$1CCE
1c85: 4e           ld   c,(hl)
1c86: 46           ld   b,(hl)
1c87: 4f           ld   c,a
1c88: 52           ld   d,d
1c89: 4d           ld   c,l
1c8a: 41           ld   b,c
1c8b: 54           ld   d,h
1c8c: 49           ld   c,c
1c8d: 4f           ld   c,a
1c8e: 4e           ld   c,(hl)
1c8f: 20 49        jr   nz,$1CDA
1c91: 4e           ld   c,(hl)
1c92: cd fa 3c     call $3CFA
1c95: cd 6b 3d     call $3D6B
1c98: cd 57 2c     call $2C57
1c9b: 21 81 38     ld   hl,$3881
1c9e: e5           push hl
1c9f: cd f4 3c     call $3CF4
1ca2: cd c5 1c     call $1CC5
1ca5: 1f           rra
1ca6: 20 20        jr   nz,$1CC8
1ca8: 20 20        jr   nz,$1CCA
1caa: 54           ld   d,h
1cab: 48           ld   c,b
1cac: 41           ld   b,c
1cad: 54           ld   d,h
1cae: 20 50        jr   nz,$1D00
1cb0: 41           ld   b,c
1cb1: 52           ld   d,d
1cb2: 54           ld   d,h
1cb3: 49           ld   c,c
1cb4: 54           ld   d,h
1cb5: 49           ld   c,c
1cb6: 4f           ld   c,a
1cb7: 4e           ld   c,(hl)
1cb8: 20 4d        jr   nz,$1D07
1cba: 41           ld   b,c
1cbb: 59           ld   e,c
1cbc: 20 42        jr   nz,$1D00
1cbe: 45           ld   b,l
1cbf: 20 4c        jr   nz,$1D0D
1cc1: 4f           ld   c,a
1cc2: 53           ld   d,e
1cc3: 54           ld   d,h
1cc4: 2e cd        ld   l,$CD
1cc6: fa 3c cd     jp   m,$CD3C
1cc9: 6b           ld   l,e
1cca: 3d           dec  a
1ccb: cd 57 2c     call $2C57
1cce: 21 81 38     ld   hl,$3881
1cd1: e5           push hl
1cd2: cd f4 3c     call $3CF4
1cd5: cd 57 2c     call $2C57
1cd8: 21 81 38     ld   hl,$3881
1cdb: e5           push hl
1cdc: cd f4 3c     call $3CF4
1cdf: cd 2e 1d     call $1D2E
1ce2: 4b           ld   c,e
1ce3: 20 20        jr   nz,$1D05
1ce5: 20 20        jr   nz,$1D07
1ce7: 44           ld   b,h
1ce8: 6f           ld   l,a
1ce9: 20 6e        jr   nz,$1D59
1ceb: 6f           ld   l,a
1cec: 74           ld   (hl),h
1ced: 20 61        jr   nz,$1D50
1cef: 74           ld   (hl),h
1cf0: 74           ld   (hl),h
1cf1: 65           ld   h,l
1cf2: 6d           ld   l,l
1cf3: 70           ld   (hl),b
1cf4: 74           ld   (hl),h
1cf5: 20 74        jr   nz,$1D6B
1cf7: 6f           ld   l,a
1cf8: 20 75        jr   nz,$1D6F
1cfa: 73           ld   (hl),e
1cfb: 65           ld   h,l
1cfc: 20 74        jr   nz,$1D72
1cfe: 68           ld   l,b
1cff: 69           ld   l,c
1d00: 73           ld   (hl),e
1d01: 20 70        jr   nz,$1D73
1d03: 72           ld   (hl),d
1d04: 6f           ld   l,a
1d05: 67           ld   h,a
1d06: 72           ld   (hl),d
1d07: 61           ld   h,c
1d08: 6d           ld   l,l
1d09: 20 75        jr   nz,$1D80
1d0b: 6e           ld   l,(hl)
1d0c: 6c           ld   l,h
1d0d: 65           ld   h,l
1d0e: 73           ld   (hl),e
1d0f: 73           ld   (hl),e
1d10: 20 79        jr   nz,$1D8B
1d12: 6f           ld   l,a
1d13: 75           ld   (hl),l
1d14: 20 68        jr   nz,$1D7E
1d16: 61           ld   h,c
1d17: 76           halt
1d18: 65           ld   h,l
1d19: 20 63        jr   nz,$1D7E
1d1b: 6f           ld   l,a
1d1c: 70           ld   (hl),b
1d1d: 69           ld   l,c
1d1e: 65           ld   h,l
1d1f: 64           ld   h,h
1d20: 20 61        jr   nz,$1D83
1d22: 6c           ld   l,h
1d23: 6c           ld   l,h
1d24: 20 69        jr   nz,$1D8F
1d26: 6d           ld   l,l
1d27: 70           ld   (hl),b
1d28: 6f           ld   l,a
1d29: 72           ld   (hl),d
1d2a: 74           ld   (hl),h
1d2b: 61           ld   h,c
1d2c: 6e           ld   l,(hl)
1d2d: 74           ld   (hl),h
1d2e: cd fa 3c     call $3CFA
1d31: cd 6b 3d     call $3D6B
1d34: cd 57 2c     call $2C57
1d37: 21 81 38     ld   hl,$3881
1d3a: e5           push hl
1d3b: cd f4 3c     call $3CF4
1d3e: cd 7a 1d     call $1D7A
1d41: 38 20        jr   c,$1D63
1d43: 20 20        jr   nz,$1D65
1d45: 20 69        jr   nz,$1DB0
1d47: 6e           ld   l,(hl)
1d48: 66           ld   h,(hl)
1d49: 6f           ld   l,a
1d4a: 72           ld   (hl),d
1d4b: 6d           ld   l,l
1d4c: 61           ld   h,c
1d4d: 74           ld   (hl),h
1d4e: 69           ld   l,c
1d4f: 6f           ld   l,a
1d50: 6e           ld   l,(hl)
1d51: 20 66        jr   nz,$1DB9
1d53: 72           ld   (hl),d
1d54: 6f           ld   l,a
1d55: 6d           ld   l,l
1d56: 20 79        jr   nz,$1DD1
1d58: 6f           ld   l,a
1d59: 75           ld   (hl),l
1d5a: 72           ld   (hl),d
1d5b: 20 68        jr   nz,$1DC5
1d5d: 61           ld   h,c
1d5e: 72           ld   (hl),d
1d5f: 64           ld   h,h
1d60: 20 64        jr   nz,$1DC6
1d62: 69           ld   l,c
1d63: 73           ld   (hl),e
1d64: 6b           ld   l,e
1d65: 20 74        jr   nz,$1DDB
1d67: 6f           ld   l,a
1d68: 20 66        jr   nz,$1DD0
1d6a: 6c           ld   l,h
1d6b: 6f           ld   l,a
1d6c: 70           ld   (hl),b
1d6d: 70           ld   (hl),b
1d6e: 79           ld   a,c
1d6f: 20 64        jr   nz,$1DD5
1d71: 69           ld   l,c
1d72: 73           ld   (hl),e
1d73: 6b           ld   l,e
1d74: 65           ld   h,l
1d75: 74           ld   (hl),h
1d76: 74           ld   (hl),h
1d77: 65           ld   h,l
1d78: 73           ld   (hl),e
1d79: 2e cd        ld   l,$CD
1d7b: fa 3c cd     jp   m,$CD3C
1d7e: 6b           ld   l,e
1d7f: 3d           dec  a
1d80: cd 57 2c     call $2C57
1d83: 21 81 38     ld   hl,$3881
1d86: e5           push hl
1d87: cd f4 3c     call $3CF4
1d8a: cd 57 2c     call $2C57
1d8d: 21 81 38     ld   hl,$3881
1d90: e5           push hl
1d91: cd f4 3c     call $3CF4
1d94: cd 57 2c     call $2C57
1d97: 21 50 00     ld   hl,$0050
1d9a: e5           push hl
1d9b: cd d0 1d     call $1DD0
1d9e: 31 70 72     ld   sp,$7270
1da1: 65           ld   h,l
1da2: 73           ld   (hl),e
1da3: 73           ld   (hl),e
1da4: 20 52        jr   nz,$1DF8
1da6: 45           ld   b,l
1da7: 54           ld   d,h
1da8: 55           ld   d,l
1da9: 52           ld   d,d
1daa: 4e           ld   c,(hl)
1dab: 20 74        jr   nz,$1E21
1dad: 6f           ld   l,a
1dae: 20 63        jr   nz,$1E13
1db0: 6f           ld   l,a
1db1: 6e           ld   l,(hl)
1db2: 74           ld   (hl),h
1db3: 69           ld   l,c
1db4: 6e           ld   l,(hl)
1db5: 75           ld   (hl),l
1db6: 65           ld   h,l
1db7: 20 20        jr   nz,$1DD9
1db9: 2d           dec  l
1dba: 20 20        jr   nz,$1DDC
1dbc: 70           ld   (hl),b
1dbd: 72           ld   (hl),d
1dbe: 65           ld   h,l
1dbf: 73           ld   (hl),e
1dc0: 73           ld   (hl),e
1dc1: 20 53        jr   nz,$1E16
1dc3: 50           ld   d,b
1dc4: 41           ld   b,c
1dc5: 43           ld   b,e
1dc6: 45           ld   b,l
1dc7: 20 74        jr   nz,$1E3D
1dc9: 6f           ld   l,a
1dca: 20 65        jr   nz,$1E31
1dcc: 78           ld   a,b
1dcd: 69           ld   l,c
1dce: 74           ld   (hl),h
1dcf: 20 cd        jr   nz,$1D9E
1dd1: 14           inc  d
1dd2: 35           dec  (hl)
1dd3: 21 00 00     ld   hl,$0000
1dd6: e5           push hl
1dd7: 21 02 00     ld   hl,$0002
1dda: e5           push hl
1ddb: cd 2b 2b     call $2B2B
1dde: 21 81 38     ld   hl,$3881
1de1: e5           push hl
1de2: cd f4 3c     call $3CF4
1de5: cd f3 1d     call $1DF3
1de8: 0a           ld   a,(bc)
1de9: 20 20        jr   nz,$1E0B
1deb: 57           ld   d,a
1dec: 41           ld   b,c
1ded: 52           ld   d,d
1dee: 4e           ld   c,(hl)
1def: 49           ld   c,c
1df0: 4e           ld   c,(hl)
1df1: 47           ld   b,a
1df2: 3a cd fa     ld   a,($FACD)
1df5: 3c           inc  a
1df6: cd 6b 3d     call $3D6B
1df9: 21 1b 00     ld   hl,$001B
1dfc: e5           push hl
1dfd: cd fa 3c     call $3CFA
1e00: cd aa 3e     call $3EAA
1e03: 21 71 00     ld   hl,$0071
1e06: e5           push hl
1e07: cd fa 3c     call $3CFA
1e0a: cd aa 3e     call $3EAA
1e0d: cd 57 2c     call $2C57
1e10: 21 01 00     ld   hl,$0001
1e13: e5           push hl
1e14: 21 02 00     ld   hl,$0002
1e17: e5           push hl
1e18: cd 2b 2b     call $2B2B
1e1b: 21 1b 00     ld   hl,$001B
1e1e: e5           push hl
1e1f: 21 81 38     ld   hl,$3881
1e22: e5           push hl
1e23: cd f4 3c     call $3CF4
1e26: cd fa 3c     call $3CFA
1e29: cd aa 3e     call $3EAA
1e2c: 21 5e 00     ld   hl,$005E
1e2f: e5           push hl
1e30: cd fa 3c     call $3CFA
1e33: cd aa 3e     call $3EAA
1e36: cd 57 2c     call $2C57
1e39: 21 00 00     ld   hl,$0000
1e3c: e5           push hl
1e3d: 21 4f 00     ld   hl,$004F
1e40: e5           push hl
1e41: 21 01 00     ld   hl,$0001
1e44: e5           push hl
1e45: 21 15 00     ld   hl,$0015
1e48: e5           push hl
1e49: cd f3 26     call $26F3
1e4c: cd f8 16     call $16F8
1e4f: 21 41 16     ld   hl,$1641
1e52: 16 00        ld   d,$00
1e54: 5e           ld   e,(hl)
1e55: d5           push de
1e56: 21 20 00     ld   hl,$0020
1e59: e5           push hl
1e5a: cd 71 3c     call $3C71
1e5d: f1           pop  af
1e5e: d2 64 1e     jp   nc,$1E64
1e61: cd 7f 39     call $397F
1e64: c9           ret
1e65: cd 01 2b     call $2B01
1e68: 21 00 00     ld   hl,$0000
1e6b: e5           push hl
1e6c: 21 0f 00     ld   hl,$000F
1e6f: e5           push hl
1e70: cd 2b 2b     call $2B2B
1e73: 21 01 00     ld   hl,$0001
1e76: e5           push hl
1e77: 21 ed 14     ld   hl,$14ED
1e7a: 5e           ld   e,(hl)
1e7b: 23           inc  hl
1e7c: 56           ld   d,(hl)
1e7d: d5           push de
1e7e: d1           pop  de
1e7f: e1           pop  hl
1e80: 2b           dec  hl
1e81: e5           push hl
1e82: d5           push de
1e83: 22 d4 22     ld   ($22D4),hl
1e86: d1           pop  de
1e87: e1           pop  hl
1e88: 23           inc  hl
1e89: e5           push hl
1e8a: d5           push de
1e8b: cd 51 39     call $3951
1e8e: 22 ec 22     ld   ($22EC),hl
1e91: 2a d4 22     ld   hl,($22D4)
1e94: 23           inc  hl
1e95: 22 d4 22     ld   ($22D4),hl
1e98: 2a ec 22     ld   hl,($22EC)
1e9b: 2b           dec  hl
1e9c: 22 ec 22     ld   ($22EC),hl
1e9f: 7c           ld   a,h
1ea0: b5           or   l
1ea1: ca f3 1f     jp   z,$1FF3
1ea4: 21 ad 14     ld   hl,$14AD
1ea7: e5           push hl
1ea8: 2a d4 22     ld   hl,($22D4)
1eab: 2b           dec  hl
1eac: e5           push hl
1ead: 21 10 00     ld   hl,$0010
1eb0: e5           push hl
1eb1: cd f5 3e     call $3EF5
1eb4: e1           pop  hl
1eb5: d1           pop  de
1eb6: 19           add  hl,de
1eb7: 22 ee 22     ld   ($22EE),hl
1eba: 21 06 00     ld   hl,$0006
1ebd: e5           push hl
1ebe: cd 3c 34     call $343C
1ec1: 21 01 00     ld   hl,$0001
1ec4: 22 d8 22     ld   ($22D8),hl
1ec7: 21 ef 14     ld   hl,$14EF
1eca: e5           push hl
1ecb: 2a d8 22     ld   hl,($22D8)
1ece: 2b           dec  hl
1ecf: e5           push hl
1ed0: 21 16 00     ld   hl,$0016
1ed3: e5           push hl
1ed4: cd f5 3e     call $3EF5
1ed7: e1           pop  hl
1ed8: d1           pop  de
1ed9: 19           add  hl,de
1eda: 16 00        ld   d,$00
1edc: 5e           ld   e,(hl)
1edd: d5           push de
1ede: 2a ee 22     ld   hl,($22EE)
1ee1: 23           inc  hl
1ee2: 23           inc  hl
1ee3: 23           inc  hl
1ee4: 23           inc  hl
1ee5: 16 00        ld   d,$00
1ee7: 5e           ld   e,(hl)
1ee8: d5           push de
1ee9: cd b9 3c     call $3CB9
1eec: 2a d8 22     ld   hl,($22D8)
1eef: e5           push hl
1ef0: 21 cb 15     ld   hl,$15CB
1ef3: 5e           ld   e,(hl)
1ef4: 23           inc  hl
1ef5: 56           ld   d,(hl)
1ef6: d5           push de
1ef7: cd d0 3c     call $3CD0
1efa: e1           pop  hl
1efb: d1           pop  de
1efc: 7d           ld   a,l
1efd: a3           and  e
1efe: 1f           rra
1eff: d2 0c 1f     jp   nc,$1F0C
1f02: 2a d8 22     ld   hl,($22D8)
1f05: 23           inc  hl
1f06: 22 d8 22     ld   ($22D8),hl
1f09: c3 c7 1e     jp   $1EC7
1f0c: 2a d8 22     ld   hl,($22D8)
1f0f: e5           push hl
1f10: 21 cb 15     ld   hl,$15CB
1f13: 5e           ld   e,(hl)
1f14: 23           inc  hl
1f15: 56           ld   d,(hl)
1f16: d5           push de
1f17: cd a4 3c     call $3CA4
1f1a: f1           pop  af
1f1b: d2 45 1f     jp   nc,$1F45
1f1e: 21 81 38     ld   hl,$3881
1f21: e5           push hl
1f22: cd f4 3c     call $3CF4
1f25: cd 3c 1f     call $1F3C
1f28: 13           inc  de
1f29: 75           ld   (hl),l
1f2a: 6e           ld   l,(hl)
1f2b: 72           ld   (hl),d
1f2c: 65           ld   h,l
1f2d: 63           ld   h,e
1f2e: 6f           ld   l,a
1f2f: 67           ld   h,a
1f30: 6e           ld   l,(hl)
1f31: 69           ld   l,c
1f32: 7a           ld   a,d
1f33: 65           ld   h,l
1f34: 64           ld   h,h
1f35: 20 73        jr   nz,$1FAA
1f37: 79           ld   a,c
1f38: 73           ld   (hl),e
1f39: 74           ld   (hl),h
1f3a: 65           ld   h,l
1f3b: 6d           ld   l,l
1f3c: cd fa 3c     call $3CFA
1f3f: cd 6b 3d     call $3D6B
1f42: c3 67 1f     jp   $1F67
1f45: 21 ef 14     ld   hl,$14EF
1f48: e5           push hl
1f49: 2a d8 22     ld   hl,($22D8)
1f4c: 2b           dec  hl
1f4d: e5           push hl
1f4e: 21 16 00     ld   hl,$0016
1f51: e5           push hl
1f52: cd f5 3e     call $3EF5
1f55: e1           pop  hl
1f56: d1           pop  de
1f57: 19           add  hl,de
1f58: 23           inc  hl
1f59: e5           push hl
1f5a: 21 81 38     ld   hl,$3881
1f5d: e5           push hl
1f5e: cd f4 3c     call $3CF4
1f61: cd fa 3c     call $3CFA
1f64: cd 6b 3d     call $3D6B
1f67: 2a ee 22     ld   hl,($22EE)
1f6a: 16 00        ld   d,$00
1f6c: 5e           ld   e,(hl)
1f6d: d5           push de
1f6e: 21 80 00     ld   hl,$0080
1f71: e5           push hl
1f72: cd 71 3c     call $3C71
1f75: 21 e9 15     ld   hl,$15E9
1f78: 5e           ld   e,(hl)
1f79: 23           inc  hl
1f7a: 56           ld   d,(hl)
1f7b: d5           push de
1f7c: 21 01 00     ld   hl,$0001
1f7f: e5           push hl
1f80: cd 71 3c     call $3C71
1f83: e1           pop  hl
1f84: d1           pop  de
1f85: 7d           ld   a,l
1f86: a3           and  e
1f87: 1f           rra
1f88: d2 ab 1f     jp   nc,$1FAB
1f8b: 21 1f 00     ld   hl,$001F
1f8e: e5           push hl
1f8f: cd 3c 34     call $343C
1f92: 21 81 38     ld   hl,$3881
1f95: e5           push hl
1f96: cd f4 3c     call $3CF4
1f99: cd a5 1f     call $1FA5
1f9c: 08           ex   af,af'
1f9d: 62           ld   h,d
1f9e: 6f           ld   l,a
1f9f: 6f           ld   l,a
1fa0: 74           ld   (hl),h
1fa1: 61           ld   h,c
1fa2: 62           ld   h,d
1fa3: 6c           ld   l,h
1fa4: 65           ld   h,l
1fa5: cd fa 3c     call $3CFA
1fa8: cd 6b 3d     call $3D6B
1fab: 21 2c 00     ld   hl,$002C
1fae: e5           push hl
1faf: cd 3c 34     call $343C
1fb2: 2a ee 22     ld   hl,($22EE)
1fb5: 11 05 00     ld   de,$0005
1fb8: 19           add  hl,de
1fb9: e5           push hl
1fba: cd eb 2b     call $2BEB
1fbd: 2a ee 22     ld   hl,($22EE)
1fc0: 23           inc  hl
1fc1: e5           push hl
1fc2: cd eb 2b     call $2BEB
1fc5: e1           pop  hl
1fc6: d1           pop  de
1fc7: 7b           ld   a,e
1fc8: 95           sub  l
1fc9: 6f           ld   l,a
1fca: 7a           ld   a,d
1fcb: 9c           sbc  a,h
1fcc: 67           ld   h,a
1fcd: 23           inc  hl
1fce: e5           push hl
1fcf: cd f5 16     call $16F5
1fd2: 21 81 38     ld   hl,$3881
1fd5: e5           push hl
1fd6: cd f4 3c     call $3CF4
1fd9: 21 20 00     ld   hl,$0020
1fdc: e5           push hl
1fdd: cd fa 3c     call $3CFA
1fe0: cd aa 3e     call $3EAA
1fe3: cd fd 35     call $35FD
1fe6: 21 81 38     ld   hl,$3881
1fe9: e5           push hl
1fea: cd f4 3c     call $3CF4
1fed: cd 57 2c     call $2C57
1ff0: c3 91 1e     jp   $1E91
1ff3: 21 2c 00     ld   hl,$002C
1ff6: e5           push hl
1ff7: 21 14 00     ld   hl,$0014
1ffa: e5           push hl
1ffb: cd 2b 2b     call $2B2B
1ffe: 21 e7 15     ld   hl,$15E7
2001: 5e           ld   e,(hl)
2002: 23           inc  hl
2003: 56           ld   d,(hl)
2004: d5           push de
2005: cd f5 16     call $16F5
2008: 21 2c 00     ld   hl,$002C
200b: e5           push hl
200c: 21 15 00     ld   hl,$0015
200f: e5           push hl
2010: cd 2b 2b     call $2B2B
2013: 21 31 01     ld   hl,$0131
2016: e5           push hl
2017: 21 e7 15     ld   hl,$15E7
201a: 5e           ld   e,(hl)
201b: 23           inc  hl
201c: 56           ld   d,(hl)
201d: eb           ex   de,hl
201e: d1           pop  de
201f: 7b           ld   a,e
2020: 95           sub  l
2021: 6f           ld   l,a
2022: 7a           ld   a,d
2023: 9c           sbc  a,h
2024: 67           ld   h,a
2025: e5           push hl
2026: cd f5 16     call $16F5
2029: c9           ret
202a: 21 10 00     ld   hl,$0010
202d: e5           push hl
202e: 21 02 00     ld   hl,$0002
2031: e5           push hl
2032: cd 2b 2b     call $2B2B
2035: cd f3 35     call $35F3
2038: 21 eb 15     ld   hl,$15EB
203b: e5           push hl
203c: 21 81 38     ld   hl,$3881
203f: e5           push hl
2040: cd f4 3c     call $3CF4
2043: cd fa 3c     call $3CFA
2046: cd 6b 3d     call $3D6B
2049: 21 28 00     ld   hl,$0028
204c: e5           push hl
204d: cd 71 34     call $3471
2050: e1           pop  hl
2051: d1           pop  de
2052: 7b           ld   a,e
2053: 95           sub  l
2054: 6f           ld   l,a
2055: 7a           ld   a,d
2056: 9c           sbc  a,h
2057: 67           ld   h,a
2058: e5           push hl
2059: cd f4 2a     call $2AF4
205c: cd ee 35     call $35EE
205f: c9           ret
2060: 21 2f 00     ld   hl,$002F
2063: e5           push hl
2064: 21 02 00     ld   hl,$0002
2067: e5           push hl
2068: cd 2b 2b     call $2B2B
206b: cd f3 35     call $35F3
206e: 21 eb 15     ld   hl,$15EB
2071: e5           push hl
2072: 21 81 38     ld   hl,$3881
2075: e5           push hl
2076: cd f4 3c     call $3CF4
2079: cd fa 3c     call $3CFA
207c: cd 6b 3d     call $3D6B
207f: 21 46 00     ld   hl,$0046
2082: e5           push hl
2083: cd 71 34     call $3471
2086: e1           pop  hl
2087: d1           pop  de
2088: 7b           ld   a,e
2089: 95           sub  l
208a: 6f           ld   l,a
208b: 7a           ld   a,d
208c: 9c           sbc  a,h
208d: 67           ld   h,a
208e: e5           push hl
208f: cd f4 2a     call $2AF4
2092: cd ee 35     call $35EE
2095: c9           ret
2096: 21 00 00     ld   hl,$0000
2099: e5           push hl
209a: 21 0b 00     ld   hl,$000B
209d: e5           push hl
209e: cd 2b 2b     call $2B2B
20a1: cd d5 35     call $35D5
20a4: c9           ret
20a5: 21 e7 15     ld   hl,$15E7
20a8: e5           push hl
20a9: 21 00 00     ld   hl,$0000
20ac: eb           ex   de,hl
20ad: e1           pop  hl
20ae: 73           ld   (hl),e
20af: 23           inc  hl
20b0: 72           ld   (hl),d
20b1: 21 db 15     ld   hl,$15DB
20b4: e5           push hl
20b5: 21 0a 00     ld   hl,$000A
20b8: e5           push hl
20b9: 21 00 00     ld   hl,$0000
20bc: e5           push hl
20bd: cd 10 37     call $3710
20c0: 21 01 00     ld   hl,$0001
20c3: e5           push hl
20c4: 21 ed 14     ld   hl,$14ED
20c7: 5e           ld   e,(hl)
20c8: 23           inc  hl
20c9: 56           ld   d,(hl)
20ca: d5           push de
20cb: d1           pop  de
20cc: e1           pop  hl
20cd: 2b           dec  hl
20ce: e5           push hl
20cf: d5           push de
20d0: 22 e4 22     ld   ($22E4),hl
20d3: d1           pop  de
20d4: e1           pop  hl
20d5: 23           inc  hl
20d6: e5           push hl
20d7: d5           push de
20d8: cd 51 39     call $3951
20db: 22 f0 22     ld   ($22F0),hl
20de: 2a e4 22     ld   hl,($22E4)
20e1: 23           inc  hl
20e2: 22 e4 22     ld   ($22E4),hl
20e5: 2a f0 22     ld   hl,($22F0)
20e8: 2b           dec  hl
20e9: 22 f0 22     ld   ($22F0),hl
20ec: 7c           ld   a,h
20ed: b5           or   l
20ee: ca d2 21     jp   z,$21D2
20f1: 21 ad 14     ld   hl,$14AD
20f4: e5           push hl
20f5: 2a e4 22     ld   hl,($22E4)
20f8: 2b           dec  hl
20f9: e5           push hl
20fa: 21 10 00     ld   hl,$0010
20fd: e5           push hl
20fe: cd f5 3e     call $3EF5
2101: e1           pop  hl
2102: d1           pop  de
2103: 19           add  hl,de
2104: 22 f2 22     ld   ($22F2),hl
2107: 2a f2 22     ld   hl,($22F2)
210a: 23           inc  hl
210b: e5           push hl
210c: cd eb 2b     call $2BEB
210f: e1           pop  hl
2110: 22 e2 22     ld   ($22E2),hl
2113: 2a f2 22     ld   hl,($22F2)
2116: 11 05 00     ld   de,$0005
2119: 19           add  hl,de
211a: e5           push hl
211b: cd eb 2b     call $2BEB
211e: e1           pop  hl
211f: 22 e0 22     ld   ($22E0),hl
2122: 2a e0 22     ld   hl,($22E0)
2125: eb           ex   de,hl
2126: 2a e2 22     ld   hl,($22E2)
2129: 7b           ld   a,e
212a: 95           sub  l
212b: 6f           ld   l,a
212c: 7a           ld   a,d
212d: 9c           sbc  a,h
212e: 67           ld   h,a
212f: 23           inc  hl
2130: 22 de 22     ld   ($22DE),hl
2133: 2a e2 22     ld   hl,($22E2)
2136: e5           push hl
2137: 21 1e 00     ld   hl,$001E
213a: e5           push hl
213b: cd 7f 3e     call $3E7F
213e: e1           pop  hl
213f: 22 dc 22     ld   ($22DC),hl
2142: 2a de 22     ld   hl,($22DE)
2145: e5           push hl
2146: 21 1e 00     ld   hl,$001E
2149: e5           push hl
214a: cd 7f 3e     call $3E7F
214d: 2a de 22     ld   hl,($22DE)
2150: e5           push hl
2151: 21 1e 00     ld   hl,$001E
2154: e5           push hl
2155: cd 8b 3e     call $3E8B
2158: 21 00 00     ld   hl,$0000
215b: e5           push hl
215c: cd a4 3c     call $3CA4
215f: e1           pop  hl
2160: d1           pop  de
2161: 19           add  hl,de
2162: 22 da 22     ld   ($22DA),hl
2165: 2a dc 22     ld   hl,($22DC)
2168: eb           ex   de,hl
2169: 2a da 22     ld   hl,($22DA)
216c: 19           add  hl,de
216d: e5           push hl
216e: 21 0a 00     ld   hl,$000A
2171: e5           push hl
2172: cd a4 3c     call $3CA4
2175: f1           pop  af
2176: d2 80 21     jp   nc,$2180
2179: 2a da 22     ld   hl,($22DA)
217c: 2b           dec  hl
217d: 22 da 22     ld   ($22DA),hl
2180: 21 e7 15     ld   hl,$15E7
2183: e5           push hl
2184: 21 e7 15     ld   hl,$15E7
2187: 5e           ld   e,(hl)
2188: 23           inc  hl
2189: 56           ld   d,(hl)
218a: d5           push de
218b: 21 1e 00     ld   hl,$001E
218e: e5           push hl
218f: 2a de 22     ld   hl,($22DE)
2192: e5           push hl
2193: 21 1e 00     ld   hl,$001E
2196: e5           push hl
2197: cd 7f 3e     call $3E7F
219a: 2a de 22     ld   hl,($22DE)
219d: e5           push hl
219e: 21 1e 00     ld   hl,$001E
21a1: e5           push hl
21a2: cd 8b 3e     call $3E8B
21a5: 21 0f 00     ld   hl,$000F
21a8: e5           push hl
21a9: cd 88 3c     call $3C88
21ac: e1           pop  hl
21ad: d1           pop  de
21ae: 19           add  hl,de
21af: e5           push hl
21b0: cd f5 3e     call $3EF5
21b3: e1           pop  hl
21b4: d1           pop  de
21b5: 19           add  hl,de
21b6: eb           ex   de,hl
21b7: e1           pop  hl
21b8: 73           ld   (hl),e
21b9: 23           inc  hl
21ba: 72           ld   (hl),d
21bb: 21 db 15     ld   hl,$15DB
21be: eb           ex   de,hl
21bf: 2a dc 22     ld   hl,($22DC)
21c2: 19           add  hl,de
21c3: e5           push hl
21c4: 2a da 22     ld   hl,($22DA)
21c7: e5           push hl
21c8: 21 01 00     ld   hl,$0001
21cb: e5           push hl
21cc: cd 10 37     call $3710
21cf: c3 de 20     jp   $20DE
21d2: 21 e5 15     ld   hl,$15E5
21d5: e5           push hl
21d6: 21 01 00     ld   hl,$0001
21d9: eb           ex   de,hl
21da: e1           pop  hl
21db: 73           ld   (hl),e
21dc: 21 00 00     ld   hl,$0000
21df: e5           push hl
21e0: 21 09 00     ld   hl,$0009
21e3: e5           push hl
21e4: d1           pop  de
21e5: e1           pop  hl
21e6: 2b           dec  hl
21e7: e5           push hl
21e8: d5           push de
21e9: 22 e4 22     ld   ($22E4),hl
21ec: d1           pop  de
21ed: e1           pop  hl
21ee: 23           inc  hl
21ef: e5           push hl
21f0: d5           push de
21f1: cd 51 39     call $3951
21f4: 22 f4 22     ld   ($22F4),hl
21f7: 2a e4 22     ld   hl,($22E4)
21fa: 23           inc  hl
21fb: 22 e4 22     ld   ($22E4),hl
21fe: 2a f4 22     ld   hl,($22F4)
2201: 2b           dec  hl
2202: 22 f4 22     ld   ($22F4),hl
2205: 7c           ld   a,h
2206: b5           or   l
2207: ca 2b 22     jp   z,$222B
220a: 21 e5 15     ld   hl,$15E5
220d: e5           push hl
220e: 21 e5 15     ld   hl,$15E5
2211: 16 00        ld   d,$00
2213: 5e           ld   e,(hl)
2214: d5           push de
2215: 21 db 15     ld   hl,$15DB
2218: eb           ex   de,hl
2219: 2a e4 22     ld   hl,($22E4)
221c: 19           add  hl,de
221d: 16 00        ld   d,$00
221f: 5e           ld   e,(hl)
2220: eb           ex   de,hl
2221: d1           pop  de
2222: 7d           ld   a,l
2223: a3           and  e
2224: 6f           ld   l,a
2225: eb           ex   de,hl
2226: e1           pop  hl
2227: 73           ld   (hl),e
2228: c3 f7 21     jp   $21F7
222b: c9           ret
222c: cd 82 39     call $3982
222f: e1           pop  hl
2230: 22 e6 22     ld   ($22E6),hl
2233: cd 88 39     call $3988
2236: 2a e6 22     ld   hl,($22E6)
2239: e5           push hl
223a: 21 1e 00     ld   hl,$001E
223d: e5           push hl
223e: cd 7f 3e     call $3E7F
2241: 2a e6 22     ld   hl,($22E6)
2244: e5           push hl
2245: 21 1e 00     ld   hl,$001E
2248: e5           push hl
2249: cd 8b 3e     call $3E8B
224c: 21 0f 00     ld   hl,$000F
224f: e5           push hl
2250: cd 88 3c     call $3C88
2253: e1           pop  hl
2254: d1           pop  de
2255: 19           add  hl,de
2256: e5           push hl
2257: 21 0a 00     ld   hl,$000A
225a: e5           push hl
225b: cd f5 3e     call $3EF5
225e: e1           pop  hl
225f: 22 e8 22     ld   ($22E8),hl
2262: 2a e8 22     ld   hl,($22E8)
2265: e5           push hl
2266: 21 81 38     ld   hl,$3881
2269: e5           push hl
226a: cd f4 3c     call $3CF4
226d: 21 03 00     ld   hl,$0003
2270: e5           push hl
2271: 21 ff ff     ld   hl,$FFFF
2274: e5           push hl
2275: cd 6d 3b     call $3B6D
2278: 21 25 00     ld   hl,$0025
227b: e5           push hl
227c: cd fa 3c     call $3CFA
227f: cd aa 3e     call $3EAA
2282: c9           ret
2283: cd 96 34     call $3496
2286: 21 41 16     ld   hl,$1641
2289: e5           push hl
228a: cd ca 34     call $34CA
228d: e1           pop  hl
228e: eb           ex   de,hl
228f: e1           pop  hl
2290: 73           ld   (hl),e
2291: 21 41 16     ld   hl,$1641
2294: 16 00        ld   d,$00
2296: 5e           ld   e,(hl)
2297: d5           push de
2298: 21 0d 00     ld   hl,$000D
229b: e5           push hl
229c: cd 71 3c     call $3C71
229f: 21 41 16     ld   hl,$1641
22a2: 16 00        ld   d,$00
22a4: 5e           ld   e,(hl)
22a5: d5           push de
22a6: 21 20 00     ld   hl,$0020
22a9: e5           push hl
22aa: cd 71 3c     call $3C71
22ad: e1           pop  hl
22ae: d1           pop  de
22af: 7d           ld   a,l
22b0: b3           or   e
22b1: 1f           rra
22b2: d2 86 22     jp   nc,$2286
22b5: c9           ret
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
24f6: fa 33 c0     jp   m,$C033
24f9: 8e           adc  a,(hl)
24fa: d0           ret  nc
24fb: 8e           adc  a,(hl)
24fc: c0           ret  nz
24fd: 8e           adc  a,(hl)
24fe: d8           ret  c
24ff: bc           cp   h
2500: 00           nop
2501: 7c           ld   a,h
2502: 8b           adc  a,e
2503: f4 fb b9     call p,$B9FB
2506: 00           nop
2507: 01 bf 00     ld   bc,$00BF
250a: 06 fc        ld   b,$FC
250c: f3           di
250d: a5           and  l
250e: 50           ld   d,b
250f: b8           cp   b
2510: c7           rst  $00
2511: 06 50        ld   b,$50
2513: cb 0d        rrc  l
2515: 0a           ld   a,(bc)
2516: 49           ld   c,c
2517: 6e           ld   l,(hl)
2518: 73           ld   (hl),e
2519: 65           ld   h,l
251a: 72           ld   (hl),d
251b: 74           ld   (hl),h
251c: 20 45        jr   nz,$2563
251e: 50           ld   d,b
251f: 53           ld   d,e
2520: 4f           ld   c,a
2521: 4e           ld   c,(hl)
2522: 20 44        jr   nz,$2568
2524: 4f           ld   c,a
2525: 53           ld   d,e
2526: 20 64        jr   nz,$258C
2528: 69           ld   l,c
2529: 73           ld   (hl),e
252a: 6b           ld   l,e
252b: 65           ld   h,l
252c: 74           ld   (hl),h
252d: 74           ld   (hl),h
252e: 65           ld   h,l
252f: 20 69        jr   nz,$259A
2531: 6e           ld   l,(hl)
2532: 20 64        jr   nz,$2598
2534: 72           ld   (hl),d
2535: 69           ld   l,c
2536: 76           halt
2537: 65           ld   h,l
2538: 20 41        jr   nz,$257B
253a: 3a 0d 0a     ld   a,($0A0D)
253d: 61           ld   h,c
253e: 6e           ld   l,(hl)
253f: 64           ld   h,h
2540: 20 70        jr   nz,$25B2
2542: 72           ld   (hl),d
2543: 65           ld   h,l
2544: 73           ld   (hl),e
2545: 73           ld   (hl),e
2546: 20 61        jr   nz,$25A9
2548: 6e           ld   l,(hl)
2549: 79           ld   a,c
254a: 20 6b        jr   nz,$25B7
254c: 65           ld   h,l
254d: 79           ld   a,c
254e: 0d           dec  c
254f: 0a           ld   a,(bc)
2550: 00           nop
2551: 49           ld   c,c
2552: 6e           ld   l,(hl)
2553: 76           halt
2554: 61           ld   h,c
2555: 6c           ld   l,h
2556: 69           ld   l,c
2557: 64           ld   h,h
2558: 20 70        jr   nz,$25CA
255a: 61           ld   h,c
255b: 72           ld   (hl),d
255c: 74           ld   (hl),h
255d: 69           ld   l,c
255e: 74           ld   (hl),h
255f: 69           ld   l,c
2560: 6f           ld   l,a
2561: 6e           ld   l,(hl)
2562: 20 74        jr   nz,$25D8
2564: 61           ld   h,c
2565: 62           ld   h,d
2566: 6c           ld   l,h
2567: 65           ld   h,l
2568: 00           nop
2569: 4e           ld   c,(hl)
256a: 6f           ld   l,a
256b: 20 62        jr   nz,$25CF
256d: 6f           ld   l,a
256e: 6f           ld   l,a
256f: 74           ld   (hl),h
2570: 61           ld   h,c
2571: 62           ld   h,d
2572: 6c           ld   l,h
2573: 65           ld   h,l
2574: 20 70        jr   nz,$25E6
2576: 61           ld   h,c
2577: 72           ld   (hl),d
2578: 74           ld   (hl),h
2579: 69           ld   l,c
257a: 74           ld   (hl),h
257b: 69           ld   l,c
257c: 6f           ld   l,a
257d: 6e           ld   l,(hl)
257e: 20 66        jr   nz,$25E6
2580: 6f           ld   l,a
2581: 75           ld   (hl),l
2582: 6e           ld   l,(hl)
2583: 64           ld   h,h
2584: 00           nop
2585: 45           ld   b,l
2586: 72           ld   (hl),d
2587: 72           ld   (hl),d
2588: 6f           ld   l,a
2589: 72           ld   (hl),d
258a: 20 6c        jr   nz,$25F8
258c: 6f           ld   l,a
258d: 61           ld   h,c
258e: 64           ld   h,h
258f: 69           ld   l,c
2590: 6e           ld   l,(hl)
2591: 67           ld   h,a
2592: 20 6f        jr   nz,$2603
2594: 70           ld   (hl),b
2595: 65           ld   h,l
2596: 72           ld   (hl),d
2597: 61           ld   h,c
2598: 74           ld   (hl),h
2599: 69           ld   l,c
259a: 6e           ld   l,(hl)
259b: 67           ld   h,a
259c: 20 73        jr   nz,$2611
259e: 79           ld   a,c
259f: 73           ld   (hl),e
25a0: 74           ld   (hl),h
25a1: 65           ld   h,l
25a2: 6d           ld   l,l
25a3: 00           nop
25a4: 4d           ld   c,l
25a5: 69           ld   l,c
25a6: 73           ld   (hl),e
25a7: 73           ld   (hl),e
25a8: 69           ld   l,c
25a9: 6e           ld   l,(hl)
25aa: 67           ld   h,a
25ab: 20 6f        jr   nz,$261C
25ad: 70           ld   (hl),b
25ae: 65           ld   h,l
25af: 72           ld   (hl),d
25b0: 61           ld   h,c
25b1: 74           ld   (hl),h
25b2: 69           ld   l,c
25b3: 6e           ld   l,(hl)
25b4: 67           ld   h,a
25b5: 20 73        jr   nz,$262A
25b7: 79           ld   a,c
25b8: 73           ld   (hl),e
25b9: 74           ld   (hl),h
25ba: 65           ld   h,l
25bb: 6d           ld   l,l
25bc: 00           nop
25bd: b3           or   e
25be: 04           inc  b
25bf: be           cp   (hl)
25c0: be           cp   (hl)
25c1: 07           rlca
25c2: 8a           adc  a,d
25c3: 04           inc  b
25c4: 3c           inc  a
25c5: 80           add  a,b
25c6: 74           ld   (hl),h
25c7: 10 3c        djnz $2605
25c9: 00           nop
25ca: 75           ld   (hl),l
25cb: 1f           rra
25cc: 83           add  a,e
25cd: c6 10        add  a,$10
25cf: fe cb        cp   $CB
25d1: 75           ld   (hl),l
25d2: ef           rst  $28
25d3: be           cp   (hl)
25d4: 73           ld   (hl),e
25d5: 06 eb        ld   b,$EB
25d7: 43           ld   b,e
25d8: 8b           adc  a,e
25d9: ee 8b        xor  $8B
25db: 14           inc  d
25dc: 8b           adc  a,e
25dd: 4c           ld   c,h
25de: 02           ld   (bc),a
25df: 83           add  a,e
25e0: c6 10        add  a,$10
25e2: fe cb        cp   $CB
25e4: 74           ld   (hl),h
25e5: 0a           ld   a,(bc)
25e6: 80           add  a,b
25e7: 3c           inc  a
25e8: 00           nop
25e9: 74           ld   (hl),h
25ea: f4 be 5b     call p,$5BBE
25ed: 06 eb        ld   b,$EB
25ef: 2b           dec  hl
25f0: be           cp   (hl)
25f1: 05           dec  b
25f2: 00           nop
25f3: bb           cp   e
25f4: 00           nop
25f5: 7c           ld   a,h
25f6: b8           cp   b
25f7: 01 02 cd     ld   bc,$CD02
25fa: 13           inc  de
25fb: 73           ld   (hl),e
25fc: 0c           inc  c
25fd: 2b           dec  hl
25fe: c0           ret  nz
25ff: cd 13 4e     call $4E13
2602: 75           ld   (hl),l
2603: ef           rst  $28
2604: be           cp   (hl)
2605: 8f           adc  a,a
2606: 06 eb        ld   b,$EB
2608: 12           ld   (de),a
2609: be           cp   (hl)
260a: ae           xor  (hl)
260b: 06 a1        ld   b,$A1
260d: fe 7d        cp   $7D
260f: 3d           dec  a
2610: 55           ld   d,l
2611: aa           xor  d
2612: 75           ld   (hl),l
2613: 07           rlca
2614: 8b           adc  a,e
2615: f5           push af
2616: ea 00 7c     jp   pe,$7C00
2619: 00           nop
261a: 00           nop
261b: e8           ret  pe
261c: 0c           inc  c
261d: 00           nop
261e: be           cp   (hl)
261f: 1e 06        ld   e,$06
2621: e8           ret  pe
2622: 06 00        ld   b,$00
2624: 32 e4 cd     ld   ($CDE4),a
2627: 16 cd        ld   d,$CD
2629: 19           add  hl,de
262a: ac           xor  h
262b: 0a           ld   a,(bc)
262c: c0           ret  nz
262d: 74           ld   (hl),h
262e: 08           ex   af,af'
262f: b4           or   h
2630: 0e b7        ld   c,$B7
2632: 07           rlca
2633: cd 10 eb     call $EB10
2636: f3           di
2637: c3 28 43     jp   $4328
263a: 29           add  hl,hl
263b: 43           ld   b,e
263c: 4f           ld   c,a
263d: 50           ld   d,b
263e: 59           ld   e,c
263f: 52           ld   d,d
2640: 49           ld   c,c
2641: 47           ld   b,a
2642: 48           ld   c,b
2643: 54           ld   d,h
2644: 20 45        jr   nz,$268B
2646: 50           ld   d,b
2647: 53           ld   d,e
2648: 4f           ld   c,a
2649: 4e           ld   c,(hl)
264a: 20 41        jr   nz,$268D
264c: 4d           ld   c,l
264d: 45           ld   b,l
264e: 52           ld   d,d
264f: 49           ld   c,c
2650: 43           ld   b,e
2651: 41           ld   b,c
2652: 2c           inc  l
2653: 49           ld   c,c
2654: 4e           ld   c,(hl)
2655: 43           ld   b,e
2656: 2e 2c        ld   l,$2C
2658: 31 39 38     ld   sp,$3839
265b: 34           inc  (hl)
265c: 2e 41        ld   l,$41
265e: 4c           ld   c,h
265f: 4c           ld   c,h
2660: 20 52        jr   nz,$26B4
2662: 49           ld   c,c
2663: 47           ld   b,a
2664: 48           ld   c,b
2665: 54           ld   d,h
2666: 53           ld   d,e
2667: 20 52        jr   nz,$26BB
2669: 45           ld   b,l
266a: 53           ld   d,e
266b: 45           ld   b,l
266c: 52           ld   d,d
266d: 56           ld   d,(hl)
266e: 45           ld   b,l
266f: 44           ld   b,h
2670: 2e e9        ld   l,$E9
2672: ff           rst  $38
2673: 73           ld   (hl),e
2674: 03           inc  bc
2675: eb           ex   de,hl
2676: 21 90 26     ld   hl,$2690
2679: 11 00 e0     ld   de,$E000
267c: 01 1a 00     ld   bc,$001A
267f: ed b0        ldir
2681: f3           di
2682: cd 00 e0     call $E000
2685: fb           ei
2686: 0e 00        ld   c,$00
2688: 28 01        jr   z,$268B
268a: 0c           inc  c
268b: 06 00        ld   b,$00
268d: e1           pop  hl
268e: c5           push bc
268f: e9           jp   (hl)
2690: 97           sub  a
2691: d3 1c        out  ($1C),a
2693: 21 00 00     ld   hl,$0000
2696: 11 00 08     ld   de,$0800
2699: 01 00 08     ld   bc,$0800
269c: 1a           ld   a,(de)
269d: ed a1        cpi
269f: 13           inc  de
26a0: 20 03        jr   nz,$26A5
26a2: ea 0c e0     jp   pe,$E00C
26a5: 3e 01        ld   a,$01
26a7: d3 1c        out  ($1C),a
26a9: c9           ret
26aa: 0e 05        ld   c,$05
26ac: 11 f6 22     ld   de,$22F6
26af: cd 5a f0     call $F05A
26b2: 3a 2d 23     ld   a,($232D)
26b5: 4f           ld   c,a
26b6: 06 00        ld   b,$00
26b8: e1           pop  hl
26b9: c5           push bc
26ba: e9           jp   (hl)
26bb: f3           di
26bc: 3e 01        ld   a,$01
26be: d3 20        out  ($20),a
26c0: cd 00 80     call $8000
26c3: 4f           ld   c,a
26c4: 97           sub  a
26c5: d3 20        out  ($20),a
26c7: fb           ei
26c8: 06 00        ld   b,$00
26ca: e1           pop  hl
26cb: c5           push bc
26cc: e9           jp   (hl)
26cd: f5           push af
26ce: c5           push bc
26cf: d5           push de
26d0: e5           push hl
26d1: dd e5        push ix
26d3: fd e5        push iy
26d5: 54           ld   d,h
26d6: 15           dec  d
26d7: 5d           ld   e,l
26d8: 1d           dec  e
26d9: 0e 39        ld   c,$39
26db: cd 5a f0     call $F05A
26de: fd e1        pop  iy
26e0: dd e1        pop  ix
26e2: e1           pop  hl
26e3: d1           pop  de
26e4: c1           pop  bc
26e5: f1           pop  af
26e6: c9           ret
26e7: dd           db   $dd
26e8: e8           ret  pe
26e9: fd e9        jp   (iy)
26eb: e9           jp   (hl)
26ec: df           rst  $18
26ed: e8           ret  pe
26ee: ff           rst  $38
26ef: 3e 01        ld   a,$01
26f1: 18 01        jr   $26F4
26f3: 97           sub  a
26f4: dd e1        pop  ix
26f6: c1           pop  bc
26f7: 0c           inc  c
26f8: 51           ld   d,c
26f9: c1           pop  bc
26fa: 0c           inc  c
26fb: 61           ld   h,c
26fc: c1           pop  bc
26fd: 0c           inc  c
26fe: 59           ld   e,c
26ff: c1           pop  bc
2700: 0c           inc  c
2701: 69           ld   l,c
2702: dd e5        push ix
2704: dd 21 e7 26  ld   ix,$26E7
2708: b7           or   a
2709: 28 06        jr   z,$2711
270b: cd 7d 32     call $327D
270e: c3 1f 33     jp   $331F
2711: cd 81 32     call $3281
2714: c3 1f 33     jp   $331F
2717: cd 96 34     call $3496
271a: dd e1        pop  ix
271c: d1           pop  de
271d: 4b           ld   c,e
271e: d1           pop  de
271f: 43           ld   b,e
2720: d1           pop  de
2721: 1c           inc  e
2722: 63           ld   h,e
2723: d1           pop  de
2724: 1c           inc  e
2725: 6b           ld   l,e
2726: dd e5        push ix
2728: cd 61 27     call $2761
272b: fe 0d        cp   $0D
272d: 28 06        jr   z,$2735
272f: fe 1b        cp   $1B
2731: 20 f5        jr   nz,$2728
2733: cb f0        set  6,b
2735: 48           ld   c,b
2736: 06 00        ld   b,$00
2738: e1           pop  hl
2739: c5           push bc
273a: e9           jp   (hl)
273b: dd e1        pop  ix
273d: d1           pop  de
273e: 4b           ld   c,e
273f: d1           pop  de
2740: 43           ld   b,e
2741: d1           pop  de
2742: 1c           inc  e
2743: 63           ld   h,e
2744: d1           pop  de
2745: 1c           inc  e
2746: 6b           ld   l,e
2747: dd e5        push ix
2749: cd 61 27     call $2761
274c: fe 0d        cp   $0D
274e: 20 04        jr   nz,$2754
2750: cb f8        set  7,b
2752: 18 06        jr   $275A
2754: fe 1b        cp   $1B
2756: 20 02        jr   nz,$275A
2758: cb f0        set  6,b
275a: 48           ld   c,b
275b: 06 00        ld   b,$00
275d: e1           pop  hl
275e: c5           push bc
275f: e9           jp   (hl)
2760: 00           nop
2761: 78           ld   a,b
2762: a7           and  a
2763: c8           ret  z
2764: cd a5 27     call $27A5
2767: cd 27 33     call $3327
276a: cd 79 33     call $3379
276d: cd bb 33     call $33BB
2770: 32 60 27     ld   ($2760),a
2773: fe 0d        cp   $0D
2775: c8           ret  z
2776: fe 1b        cp   $1B
2778: c8           ret  z
2779: fe 0b        cp   $0B
277b: 20 07        jr   nz,$2784
277d: cd 8d 27     call $278D
2780: 3a 60 27     ld   a,($2760)
2783: c9           ret
2784: fe 0a        cp   $0A
2786: 20 e5        jr   nz,$276D
2788: cd 9f 27     call $279F
278b: 18 f3        jr   $2780
278d: 78           ld   a,b
278e: 3d           dec  a
278f: c8           ret  z
2790: 47           ld   b,a
2791: 3e 20        ld   a,$20
2793: cd eb 33     call $33EB
2796: cd a5 27     call $27A5
2799: cd 27 33     call $3327
279c: c3 79 33     jp   $3379
279f: 78           ld   a,b
27a0: b9           cp   c
27a1: c8           ret  z
27a2: 3c           inc  a
27a3: 18 eb        jr   $2790
27a5: 78           ld   a,b
27a6: 3d           dec  a
27a7: 84           add  a,h
27a8: e5           push hl
27a9: 67           ld   h,a
27aa: cd cd 26     call $26CD
27ad: e1           pop  hl
27ae: c9           ret
27af: 00           nop
27b0: 3e 0d        ld   a,$0D
27b2: 32 af 27     ld   ($27AF),a
27b5: c1           pop  bc
27b6: e1           pop  hl
27b7: c5           push bc
27b8: 2b           dec  hl
27b9: 29           add  hl,hl
27ba: 11 fa 27     ld   de,$27FA
27bd: 19           add  hl,de
27be: 5e           ld   e,(hl)
27bf: 23           inc  hl
27c0: 56           ld   d,(hl)
27c1: eb           ex   de,hl
27c2: 06 17        ld   b,$17
27c4: e5           push hl
27c5: 3a af 27     ld   a,($27AF)
27c8: 67           ld   h,a
27c9: 24           inc  h
27ca: 2e 38        ld   l,$38
27cc: cd cd 26     call $26CD
27cf: e1           pop  hl
27d0: 7e           ld   a,(hl)
27d1: b7           or   a
27d2: 28 07        jr   z,$27DB
27d4: cd eb 33     call $33EB
27d7: 23           inc  hl
27d8: 05           dec  b
27d9: 18 f5        jr   $27D0
27db: 3e 20        ld   a,$20
27dd: cd 04 34     call $3404
27e0: cd 17 33     call $3317
27e3: 3a af 27     ld   a,($27AF)
27e6: 3c           inc  a
27e7: fe 17        cp   $17
27e9: 20 04        jr   nz,$27EF
27eb: cd 1f 33     call $331F
27ee: c9           ret
27ef: 32 af 27     ld   ($27AF),a
27f2: 23           inc  hl
27f3: 97           sub  a
27f4: be           cp   (hl)
27f5: 20 cb        jr   nz,$27C2
27f7: 2b           dec  hl
27f8: 18 c8        jr   $27C2
27fa: 04           inc  b
27fb: 28 73        jr   z,$2870
27fd: 28 04        jr   z,$2803
27ff: 29           add  hl,hl
2800: a2           and  d
2801: 29           add  hl,hl
2802: 47           ld   b,a
2803: 2a 20 20     ld   hl,($2020)
2806: 20 45        jr   nz,$284D
2808: 78           ld   a,b
2809: 69           ld   l,c
280a: 74           ld   (hl),h
280b: 20 2d        jr   nz,$283A
280d: 20 4e        jr   nz,$285D
280f: 6f           ld   l,a
2810: 20 55        jr   nz,$2867
2812: 70           ld   (hl),b
2813: 64           ld   h,h
2814: 61           ld   h,c
2815: 74           ld   (hl),h
2816: 65           ld   h,l
2817: 00           nop
2818: 20 00        jr   nz,$281A
281a: 20 00        jr   nz,$281C
281c: 4c           ld   c,h
281d: 65           ld   h,l
281e: 61           ld   h,c
281f: 76           halt
2820: 65           ld   h,l
2821: 20 61        jr   nz,$2884
2823: 6e           ld   l,(hl)
2824: 64           ld   h,h
2825: 20 63        jr   nz,$288A
2827: 68           ld   l,b
2828: 61           ld   h,c
2829: 6e           ld   l,(hl)
282a: 67           ld   h,a
282b: 65           ld   h,l
282c: 20 6e        jr   nz,$289C
282e: 6f           ld   l,a
282f: 2d           dec  l
2830: 00           nop
2831: 74           ld   (hl),h
2832: 68           ld   l,b
2833: 69           ld   l,c
2834: 6e           ld   l,(hl)
2835: 67           ld   h,a
2836: 2e 20        ld   l,$20
2838: 20 43        jr   nz,$287D
283a: 68           ld   l,b
283b: 6f           ld   l,a
283c: 6f           ld   l,a
283d: 73           ld   (hl),e
283e: 65           ld   h,l
283f: 20 74        jr   nz,$28B5
2841: 68           ld   l,b
2842: 69           ld   l,c
2843: 73           ld   (hl),e
2844: 20 69        jr   nz,$28AF
2846: 66           ld   h,(hl)
2847: 00           nop
2848: 79           ld   a,c
2849: 6f           ld   l,a
284a: 75           ld   (hl),l
284b: 20 61        jr   nz,$28AE
284d: 72           ld   (hl),d
284e: 65           ld   h,l
284f: 20 75        jr   nz,$28C6
2851: 6e           ld   l,(hl)
2852: 73           ld   (hl),e
2853: 75           ld   (hl),l
2854: 72           ld   (hl),d
2855: 65           ld   h,l
2856: 20 61        jr   nz,$28B9
2858: 62           ld   h,d
2859: 6f           ld   l,a
285a: 75           ld   (hl),l
285b: 74           ld   (hl),h
285c: 00           nop
285d: 75           ld   (hl),l
285e: 73           ld   (hl),e
285f: 65           ld   h,l
2860: 20 6f        jr   nz,$28D1
2862: 66           ld   h,(hl)
2863: 20 74        jr   nz,$28D9
2865: 68           ld   l,b
2866: 69           ld   l,c
2867: 73           ld   (hl),e
2868: 20 70        jr   nz,$28DA
286a: 72           ld   (hl),d
286b: 6f           ld   l,a
286c: 67           ld   h,a
286d: 72           ld   (hl),d
286e: 61           ld   h,c
286f: 6d           ld   l,l
2870: 2e 00        ld   l,$00
2872: 00           nop
2873: 20 20        jr   nz,$2895
2875: 20 20        jr   nz,$2897
2877: 41           ld   b,c
2878: 64           ld   h,h
2879: 64           ld   h,h
287a: 20 50        jr   nz,$28CC
287c: 61           ld   h,c
287d: 72           ld   (hl),d
287e: 74           ld   (hl),h
287f: 69           ld   l,c
2880: 74           ld   (hl),h
2881: 69           ld   l,c
2882: 6f           ld   l,a
2883: 6e           ld   l,(hl)
2884: 00           nop
2885: 20 00        jr   nz,$2887
2887: 43           ld   b,e
2888: 72           ld   (hl),d
2889: 65           ld   h,l
288a: 61           ld   h,c
288b: 74           ld   (hl),h
288c: 65           ld   h,l
288d: 20 61        jr   nz,$28F0
288f: 20 6e        jr   nz,$28FF
2891: 65           ld   h,l
2892: 77           ld   (hl),a
2893: 20 6f        jr   nz,$2904
2895: 70           ld   (hl),b
2896: 65           ld   h,l
2897: 72           ld   (hl),d
2898: 61           ld   h,c
2899: 74           ld   (hl),h
289a: 69           ld   l,c
289b: 6e           ld   l,(hl)
289c: 67           ld   h,a
289d: 00           nop
289e: 73           ld   (hl),e
289f: 79           ld   a,c
28a0: 73           ld   (hl),e
28a1: 74           ld   (hl),h
28a2: 65           ld   h,l
28a3: 6d           ld   l,l
28a4: 20 70        jr   nz,$2916
28a6: 61           ld   h,c
28a7: 72           ld   (hl),d
28a8: 74           ld   (hl),h
28a9: 69           ld   l,c
28aa: 74           ld   (hl),h
28ab: 69           ld   l,c
28ac: 6f           ld   l,a
28ad: 6e           ld   l,(hl)
28ae: 00           nop
28af: 20 00        jr   nz,$28B1
28b1: 54           ld   d,h
28b2: 6f           ld   l,a
28b3: 20 63        jr   nz,$2918
28b5: 68           ld   l,b
28b6: 61           ld   h,c
28b7: 6e           ld   l,(hl)
28b8: 67           ld   h,a
28b9: 65           ld   h,l
28ba: 20 74        jr   nz,$2930
28bc: 68           ld   l,b
28bd: 65           ld   h,l
28be: 20 73        jr   nz,$2933
28c0: 69           ld   l,c
28c1: 7a           ld   a,d
28c2: 65           ld   h,l
28c3: 20 6f        jr   nz,$2934
28c5: 66           ld   h,(hl)
28c6: 00           nop
28c7: 61           ld   h,c
28c8: 6e           ld   l,(hl)
28c9: 20 65        jr   nz,$2930
28cb: 78           ld   a,b
28cc: 69           ld   l,c
28cd: 73           ld   (hl),e
28ce: 74           ld   (hl),h
28cf: 69           ld   l,c
28d0: 6e           ld   l,(hl)
28d1: 67           ld   h,a
28d2: 20 70        jr   nz,$2944
28d4: 61           ld   h,c
28d5: 72           ld   (hl),d
28d6: 74           ld   (hl),h
28d7: 69           ld   l,c
28d8: 74           ld   (hl),h
28d9: 69           ld   l,c
28da: 6f           ld   l,a
28db: 6e           ld   l,(hl)
28dc: 2c           inc  l
28dd: 00           nop
28de: 44           ld   b,h
28df: 65           ld   h,l
28e0: 6c           ld   l,h
28e1: 65           ld   h,l
28e2: 74           ld   (hl),h
28e3: 65           ld   h,l
28e4: 20 69        jr   nz,$294F
28e6: 74           ld   (hl),h
28e7: 20 66        jr   nz,$294F
28e9: 69           ld   l,c
28ea: 72           ld   (hl),d
28eb: 73           ld   (hl),e
28ec: 74           ld   (hl),h
28ed: 2c           inc  l
28ee: 20 61        jr   nz,$2951
28f0: 6e           ld   l,(hl)
28f1: 64           ld   h,h
28f2: 00           nop
28f3: 74           ld   (hl),h
28f4: 68           ld   l,b
28f5: 65           ld   h,l
28f6: 6e           ld   l,(hl)
28f7: 20 72        jr   nz,$296B
28f9: 65           ld   h,l
28fa: 2d           dec  l
28fb: 41           ld   b,c
28fc: 64           ld   h,h
28fd: 64           ld   h,h
28fe: 20 69        jr   nz,$2969
2900: 74           ld   (hl),h
2901: 2e 00        ld   l,$00
2903: 00           nop
2904: 20 20        jr   nz,$2926
2906: 20 44        jr   nz,$294C
2908: 65           ld   h,l
2909: 6c           ld   l,h
290a: 65           ld   h,l
290b: 74           ld   (hl),h
290c: 65           ld   h,l
290d: 20 50        jr   nz,$295F
290f: 61           ld   h,c
2910: 72           ld   (hl),d
2911: 74           ld   (hl),h
2912: 69           ld   l,c
2913: 74           ld   (hl),h
2914: 69           ld   l,c
2915: 6f           ld   l,a
2916: 6e           ld   l,(hl)
2917: 00           nop
2918: 20 00        jr   nz,$291A
291a: 52           ld   d,d
291b: 65           ld   h,l
291c: 6d           ld   l,l
291d: 6f           ld   l,a
291e: 76           halt
291f: 65           ld   h,l
2920: 20 61        jr   nz,$2983
2922: 6e           ld   l,(hl)
2923: 20 65        jr   nz,$298A
2925: 78           ld   a,b
2926: 69           ld   l,c
2927: 73           ld   (hl),e
2928: 74           ld   (hl),h
2929: 69           ld   l,c
292a: 6e           ld   l,(hl)
292b: 67           ld   h,a
292c: 00           nop
292d: 70           ld   (hl),b
292e: 61           ld   h,c
292f: 72           ld   (hl),d
2930: 74           ld   (hl),h
2931: 69           ld   l,c
2932: 74           ld   (hl),h
2933: 69           ld   l,c
2934: 6f           ld   l,a
2935: 6e           ld   l,(hl)
2936: 00           nop
2937: 20 00        jr   nz,$2939
2939: 54           ld   d,h
293a: 48           ld   c,b
293b: 49           ld   c,c
293c: 53           ld   d,e
293d: 20 57        jr   nz,$2996
293f: 49           ld   c,c
2940: 4c           ld   c,h
2941: 4c           ld   c,h
2942: 20 45        jr   nz,$2989
2944: 52           ld   d,d
2945: 41           ld   b,c
2946: 53           ld   d,e
2947: 45           ld   b,l
2948: 20 41        jr   nz,$298B
294a: 4e           ld   c,(hl)
294b: 59           ld   e,c
294c: 00           nop
294d: 49           ld   c,c
294e: 4e           ld   c,(hl)
294f: 46           ld   b,(hl)
2950: 4f           ld   c,a
2951: 52           ld   d,d
2952: 4d           ld   c,l
2953: 41           ld   b,c
2954: 54           ld   d,h
2955: 49           ld   c,c
2956: 4f           ld   c,a
2957: 4e           ld   c,(hl)
2958: 20 49        jr   nz,$29A3
295a: 4e           ld   c,(hl)
295b: 20 54        jr   nz,$29B1
295d: 48           ld   c,b
295e: 45           ld   b,l
295f: 00           nop
2960: 50           ld   d,b
2961: 41           ld   b,c
2962: 52           ld   d,d
2963: 54           ld   d,h
2964: 49           ld   c,c
2965: 54           ld   d,h
2966: 49           ld   c,c
2967: 4f           ld   c,a
2968: 4e           ld   c,(hl)
2969: 20 61        jr   nz,$29CC
296b: 6e           ld   l,(hl)
296c: 64           ld   h,h
296d: 20 6d        jr   nz,$29DC
296f: 61           ld   h,c
2970: 6b           ld   l,e
2971: 65           ld   h,l
2972: 20 74        jr   nz,$29E8
2974: 68           ld   l,b
2975: 65           ld   h,l
2976: 00           nop
2977: 73           ld   (hl),e
2978: 70           ld   (hl),b
2979: 61           ld   h,c
297a: 63           ld   h,e
297b: 65           ld   h,l
297c: 20 61        jr   nz,$29DF
297e: 76           halt
297f: 61           ld   h,c
2980: 69           ld   l,c
2981: 6c           ld   l,h
2982: 61           ld   h,c
2983: 62           ld   h,d
2984: 6c           ld   l,h
2985: 65           ld   h,l
2986: 20 66        jr   nz,$29EE
2988: 6f           ld   l,a
2989: 72           ld   (hl),d
298a: 00           nop
298b: 6f           ld   l,a
298c: 74           ld   (hl),h
298d: 68           ld   l,b
298e: 65           ld   h,l
298f: 72           ld   (hl),d
2990: 20 6e        jr   nz,$2A00
2992: 65           ld   h,l
2993: 77           ld   (hl),a
2994: 20 70        jr   nz,$2A06
2996: 61           ld   h,c
2997: 72           ld   (hl),d
2998: 74           ld   (hl),h
2999: 69           ld   l,c
299a: 74           ld   (hl),h
299b: 69           ld   l,c
299c: 6f           ld   l,a
299d: 6e           ld   l,(hl)
299e: 73           ld   (hl),e
299f: 2e 00        ld   l,$00
29a1: 00           nop
29a2: 20 20        jr   nz,$29C4
29a4: 20 20        jr   nz,$29C6
29a6: 43           ld   b,e
29a7: 68           ld   l,b
29a8: 61           ld   h,c
29a9: 6e           ld   l,(hl)
29aa: 67           ld   h,a
29ab: 65           ld   h,l
29ac: 20 42        jr   nz,$29F0
29ae: 6f           ld   l,a
29af: 6f           ld   l,a
29b0: 74           ld   (hl),h
29b1: 61           ld   h,c
29b2: 62           ld   h,d
29b3: 6c           ld   l,h
29b4: 65           ld   h,l
29b5: 00           nop
29b6: 20 00        jr   nz,$29B8
29b8: 41           ld   b,c
29b9: 73           ld   (hl),e
29ba: 73           ld   (hl),e
29bb: 69           ld   l,c
29bc: 67           ld   h,a
29bd: 6e           ld   l,(hl)
29be: 20 61        jr   nz,$2A21
29c0: 20 70        jr   nz,$2A32
29c2: 61           ld   h,c
29c3: 72           ld   (hl),d
29c4: 74           ld   (hl),h
29c5: 69           ld   l,c
29c6: 74           ld   (hl),h
29c7: 69           ld   l,c
29c8: 6f           ld   l,a
29c9: 6e           ld   l,(hl)
29ca: 20 66        jr   nz,$2A32
29cc: 6f           ld   l,a
29cd: 72           ld   (hl),d
29ce: 00           nop
29cf: 61           ld   h,c
29d0: 75           ld   (hl),l
29d1: 74           ld   (hl),h
29d2: 6f           ld   l,a
29d3: 2d           dec  l
29d4: 62           ld   h,d
29d5: 6f           ld   l,a
29d6: 6f           ld   l,a
29d7: 74           ld   (hl),h
29d8: 69           ld   l,c
29d9: 6e           ld   l,(hl)
29da: 67           ld   h,a
29db: 00           nop
29dc: 20 00        jr   nz,$29DE
29de: 49           ld   c,c
29df: 66           ld   h,(hl)
29e0: 20 74        jr   nz,$2A56
29e2: 68           ld   l,b
29e3: 65           ld   h,l
29e4: 20 63        jr   nz,$2A49
29e6: 75           ld   (hl),l
29e7: 72           ld   (hl),d
29e8: 72           ld   (hl),d
29e9: 65           ld   h,l
29ea: 6e           ld   l,(hl)
29eb: 74           ld   (hl),h
29ec: 20 62        jr   nz,$2A50
29ee: 6f           ld   l,a
29ef: 6f           ld   l,a
29f0: 74           ld   (hl),h
29f1: 2d           dec  l
29f2: 00           nop
29f3: 61           ld   h,c
29f4: 62           ld   h,d
29f5: 6c           ld   l,h
29f6: 65           ld   h,l
29f7: 20 70        jr   nz,$2A69
29f9: 61           ld   h,c
29fa: 72           ld   (hl),d
29fb: 74           ld   (hl),h
29fc: 69           ld   l,c
29fd: 74           ld   (hl),h
29fe: 69           ld   l,c
29ff: 6f           ld   l,a
2a00: 6e           ld   l,(hl)
2a01: 20 69        jr   nz,$2A6C
2a03: 73           ld   (hl),e
2a04: 00           nop
2a05: 72           ld   (hl),d
2a06: 65           ld   h,l
2a07: 2d           dec  l
2a08: 73           ld   (hl),e
2a09: 65           ld   h,l
2a0a: 6c           ld   l,h
2a0b: 65           ld   h,l
2a0c: 63           ld   h,e
2a0d: 74           ld   (hl),h
2a0e: 65           ld   h,l
2a0f: 64           ld   h,h
2a10: 2c           inc  l
2a11: 20 74        jr   nz,$2A87
2a13: 68           ld   l,b
2a14: 69           ld   l,c
2a15: 73           ld   (hl),e
2a16: 20 77        jr   nz,$2A8F
2a18: 69           ld   l,c
2a19: 6c           ld   l,h
2a1a: 6c           ld   l,h
2a1b: 00           nop
2a1c: 72           ld   (hl),d
2a1d: 65           ld   h,l
2a1e: 73           ld   (hl),e
2a1f: 75           ld   (hl),l
2a20: 6c           ld   l,h
2a21: 74           ld   (hl),h
2a22: 20 69        jr   nz,$2A8D
2a24: 6e           ld   l,(hl)
2a25: 20 4e        jr   nz,$2A75
2a27: 4f           ld   c,a
2a28: 20 70        jr   nz,$2A9A
2a2a: 61           ld   h,c
2a2b: 72           ld   (hl),d
2a2c: 74           ld   (hl),h
2a2d: 69           ld   l,c
2a2e: 74           ld   (hl),h
2a2f: 69           ld   l,c
2a30: 6f           ld   l,a
2a31: 6e           ld   l,(hl)
2a32: 00           nop
2a33: 62           ld   h,d
2a34: 65           ld   h,l
2a35: 69           ld   l,c
2a36: 6e           ld   l,(hl)
2a37: 67           ld   h,a
2a38: 20 61        jr   nz,$2A9B
2a3a: 75           ld   (hl),l
2a3b: 74           ld   (hl),h
2a3c: 6f           ld   l,a
2a3d: 2d           dec  l
2a3e: 62           ld   h,d
2a3f: 6f           ld   l,a
2a40: 6f           ld   l,a
2a41: 74           ld   (hl),h
2a42: 65           ld   h,l
2a43: 64           ld   h,h
2a44: 2e 00        ld   l,$00
2a46: 00           nop
2a47: 20 20        jr   nz,$2A69
2a49: 20 20        jr   nz,$2A6B
2a4b: 45           ld   b,l
2a4c: 78           ld   a,b
2a4d: 69           ld   l,c
2a4e: 74           ld   (hl),h
2a4f: 20 2d        jr   nz,$2A7E
2a51: 20 55        jr   nz,$2AA8
2a53: 70           ld   (hl),b
2a54: 64           ld   h,h
2a55: 61           ld   h,c
2a56: 74           ld   (hl),h
2a57: 65           ld   h,l
2a58: 00           nop
2a59: 20 00        jr   nz,$2A5B
2a5b: 55           ld   d,l
2a5c: 70           ld   (hl),b
2a5d: 64           ld   h,h
2a5e: 61           ld   h,c
2a5f: 74           ld   (hl),h
2a60: 65           ld   h,l
2a61: 20 70        jr   nz,$2AD3
2a63: 61           ld   h,c
2a64: 72           ld   (hl),d
2a65: 74           ld   (hl),h
2a66: 69           ld   l,c
2a67: 74           ld   (hl),h
2a68: 69           ld   l,c
2a69: 6f           ld   l,a
2a6a: 6e           ld   l,(hl)
2a6b: 20 74        jr   nz,$2AE1
2a6d: 61           ld   h,c
2a6e: 62           ld   h,d
2a6f: 6c           ld   l,h
2a70: 65           ld   h,l
2a71: 00           nop
2a72: 74           ld   (hl),h
2a73: 6f           ld   l,a
2a74: 20 68        jr   nz,$2ADE
2a76: 61           ld   h,c
2a77: 72           ld   (hl),d
2a78: 64           ld   h,h
2a79: 20 64        jr   nz,$2ADF
2a7b: 69           ld   l,c
2a7c: 73           ld   (hl),e
2a7d: 6b           ld   l,e
2a7e: 20 61        jr   nz,$2AE1
2a80: 6e           ld   l,(hl)
2a81: 64           ld   h,h
2a82: 20 65        jr   nz,$2AE9
2a84: 78           ld   a,b
2a85: 69           ld   l,c
2a86: 74           ld   (hl),h
2a87: 00           nop
2a88: 20 00        jr   nz,$2A8A
2a8a: 54           ld   d,h
2a8b: 68           ld   l,b
2a8c: 69           ld   l,c
2a8d: 73           ld   (hl),e
2a8e: 20 77        jr   nz,$2B07
2a90: 69           ld   l,c
2a91: 6c           ld   l,h
2a92: 6c           ld   l,h
2a93: 20 6d        jr   nz,$2B02
2a95: 61           ld   h,c
2a96: 6b           ld   l,e
2a97: 65           ld   h,l
2a98: 20 61        jr   nz,$2AFB
2a9a: 6c           ld   l,h
2a9b: 6c           ld   l,h
2a9c: 00           nop
2a9d: 63           ld   h,e
2a9e: 68           ld   l,b
2a9f: 61           ld   h,c
2aa0: 6e           ld   l,(hl)
2aa1: 67           ld   h,a
2aa2: 65           ld   h,l
2aa3: 73           ld   (hl),e
2aa4: 20 65        jr   nz,$2B0B
2aa6: 66           ld   h,(hl)
2aa7: 66           ld   h,(hl)
2aa8: 65           ld   h,l
2aa9: 63           ld   h,e
2aaa: 74           ld   (hl),h
2aab: 69           ld   l,c
2aac: 76           halt
2aad: 65           ld   h,l
2aae: 2c           inc  l
2aaf: 20 61        jr   nz,$2B12
2ab1: 6e           ld   l,(hl)
2ab2: 64           ld   h,h
2ab3: 00           nop
2ab4: 72           ld   (hl),d
2ab5: 65           ld   h,l
2ab6: 2d           dec  l
2ab7: 62           ld   h,d
2ab8: 6f           ld   l,a
2ab9: 6f           ld   l,a
2aba: 74           ld   (hl),h
2abb: 20 74        jr   nz,$2B31
2abd: 68           ld   l,b
2abe: 65           ld   h,l
2abf: 20 73        jr   nz,$2B34
2ac1: 79           ld   a,c
2ac2: 73           ld   (hl),e
2ac3: 74           ld   (hl),h
2ac4: 65           ld   h,l
2ac5: 6d           ld   l,l
2ac6: 2e 00        ld   l,$00
2ac8: 54           ld   d,h
2ac9: 68           ld   l,b
2aca: 69           ld   l,c
2acb: 6e           ld   l,(hl)
2acc: 6b           ld   l,e
2acd: 20 74        jr   nz,$2B43
2acf: 77           ld   (hl),a
2ad0: 69           ld   l,c
2ad1: 63           ld   h,e
2ad2: 65           ld   h,l
2ad3: 20 62        jr   nz,$2B37
2ad5: 65           ld   h,l
2ad6: 66           ld   h,(hl)
2ad7: 6f           ld   l,a
2ad8: 72           ld   (hl),d
2ad9: 65           ld   h,l
2ada: 00           nop
2adb: 70           ld   (hl),b
2adc: 72           ld   (hl),d
2add: 65           ld   h,l
2ade: 73           ld   (hl),e
2adf: 73           ld   (hl),e
2ae0: 69           ld   l,c
2ae1: 6e           ld   l,(hl)
2ae2: 67           ld   h,a
2ae3: 20 52        jr   nz,$2B37
2ae5: 45           ld   b,l
2ae6: 54           ld   d,h
2ae7: 55           ld   d,l
2ae8: 52           ld   d,d
2ae9: 4e           ld   c,(hl)
2aea: 2e 00        ld   l,$00
2aec: 00           nop
2aed: e1           pop  hl
2aee: c1           pop  bc
2aef: 79           ld   a,c
2af0: e5           push hl
2af1: c3 00 34     jp   $3400
2af4: e1           pop  hl
2af5: d1           pop  de
2af6: e5           push hl
2af7: 53           ld   d,e
2af8: 06 01        ld   b,$01
2afa: 1e 20        ld   e,$20
2afc: 0e 3a        ld   c,$3A
2afe: c3 5a f0     jp   $F05A
2b01: 26 10        ld   h,$10
2b03: 2e 05        ld   l,$05
2b05: cd cd 26     call $26CD
2b08: 06 2f        ld   b,$2F
2b0a: 3e 20        ld   a,$20
2b0c: cd 04 34     call $3404
2b0f: 24           inc  h
2b10: 3e 14        ld   a,$14
2b12: bc           cp   h
2b13: 20 f0        jr   nz,$2B05
2b15: c9           ret
2b16: 26 0e        ld   h,$0E
2b18: 2e 37        ld   l,$37
2b1a: cd cd 26     call $26CD
2b1d: 06 18        ld   b,$18
2b1f: 3e 20        ld   a,$20
2b21: cd 04 34     call $3404
2b24: 24           inc  h
2b25: 3e 18        ld   a,$18
2b27: bc           cp   h
2b28: 20 f0        jr   nz,$2B1A
2b2a: c9           ret
2b2b: e1           pop  hl
2b2c: c1           pop  bc
2b2d: 51           ld   d,c
2b2e: c1           pop  bc
2b2f: 59           ld   e,c
2b30: e5           push hl
2b31: 0e 39        ld   c,$39
2b33: c3 5a f0     jp   $F05A
2b36: 11 f6 22     ld   de,$22F6
2b39: cd 03 80     call $8003
2b3c: b7           or   a
2b3d: 20 1c        jr   nz,$2B5B
2b3f: 2a f4 24     ld   hl,($24F4)
2b42: 11 55 aa     ld   de,$AA55
2b45: b7           or   a
2b46: ed 52        sbc  hl,de
2b48: 28 04        jr   z,$2B4E
2b4a: 3e 01        ld   a,$01
2b4c: 18 0d        jr   $2B5B
2b4e: 11 ad 14     ld   de,$14AD
2b51: 21 b4 24     ld   hl,$24B4
2b54: 01 40 00     ld   bc,$0040
2b57: ed b0        ldir
2b59: 18 0d        jr   $2B68
2b5b: 21 ad 14     ld   hl,$14AD
2b5e: 11 ae 14     ld   de,$14AE
2b61: 01 3f 00     ld   bc,$003F
2b64: 36 00        ld   (hl),$00
2b66: ed b0        ldir
2b68: 4f           ld   c,a
2b69: 06 00        ld   b,$00
2b6b: e1           pop  hl
2b6c: c5           push bc
2b6d: e9           jp   (hl)
2b6e: 21 f6 24     ld   hl,$24F6
2b71: 11 f6 22     ld   de,$22F6
2b74: 01 80 01     ld   bc,$0180
2b77: ed b0        ldir
2b79: 21 ad 14     ld   hl,$14AD
2b7c: 11 b4 24     ld   de,$24B4
2b7f: 01 40 00     ld   bc,$0040
2b82: ed b0        ldir
2b84: 21 55 aa     ld   hl,$AA55
2b87: 22 f4 24     ld   ($24F4),hl
2b8a: 11 f6 22     ld   de,$22F6
2b8d: cd 09 80     call $8009
2b90: 01 00 00     ld   bc,$0000
2b93: b7           or   a
2b94: 20 01        jr   nz,$2B97
2b96: 0c           inc  c
2b97: e1           pop  hl
2b98: c5           push bc
2b99: e9           jp   (hl)
2b9a: 21 00 00     ld   hl,$0000
2b9d: 1a           ld   a,(de)
2b9e: ad           xor  l
2b9f: 6f           ld   l,a
2ba0: c5           push bc
2ba1: 01 00 00     ld   bc,$0000
2ba4: 29           add  hl,hl
2ba5: ed 4a        adc  hl,bc
2ba7: 13           inc  de
2ba8: c1           pop  bc
2ba9: 0b           dec  bc
2baa: 78           ld   a,b
2bab: b1           or   c
2bac: 20 ef        jr   nz,$2B9D
2bae: c9           ret
2baf: f3           di
2bb0: 3e 01        ld   a,$01
2bb2: d3 20        out  ($20),a
2bb4: cd cd 2b     call $2BCD
2bb7: 21 55 aa     ld   hl,$AA55
2bba: 22 fc 81     ld   ($81FC),hl
2bbd: 11 00 80     ld   de,$8000
2bc0: 01 fe 01     ld   bc,$01FE
2bc3: cd 9a 2b     call $2B9A
2bc6: 22 fe 81     ld   ($81FE),hl
2bc9: 97           sub  a
2bca: d3 20        out  ($20),a
2bcc: fb           ei
2bcd: 11 00 80     ld   de,$8000
2bd0: 21 34 30     ld   hl,$3034
2bd3: ed 4b 32 30  ld   bc,($3032)
2bd7: ed b0        ldir
2bd9: c9           ret
2bda: c1           pop  bc
2bdb: d1           pop  de
2bdc: e1           pop  hl
2bdd: c5           push bc
2bde: 23           inc  hl
2bdf: 7e           ld   a,(hl)
2be0: e6 3f        and  $3F
2be2: cb 0a        rrc  d
2be4: cb 0a        rrc  d
2be6: b2           or   d
2be7: 77           ld   (hl),a
2be8: 23           inc  hl
2be9: 73           ld   (hl),e
2bea: c9           ret
2beb: dd e1        pop  ix
2bed: e1           pop  hl
2bee: 23           inc  hl
2bef: 7e           ld   a,(hl)
2bf0: 07           rlca
2bf1: 07           rlca
2bf2: e6 03        and  $03
2bf4: 57           ld   d,a
2bf5: 23           inc  hl
2bf6: 5e           ld   e,(hl)
2bf7: d5           push de
2bf8: dd e9        jp   (ix)
2bfa: 21 f6 22     ld   hl,$22F6
2bfd: 22 04 70     ld   ($7004),hl
2c00: 11 f7 22     ld   de,$22F7
2c03: 36 e5        ld   (hl),$E5
2c05: 01 ff 01     ld   bc,$01FF
2c08: ed b0        ldir
2c0a: 97           sub  a
2c0b: 32 00 70     ld   ($7000),a
2c0e: c1           pop  bc
2c0f: e1           pop  hl
2c10: d1           pop  de
2c11: c5           push bc
2c12: e5           push hl
2c13: d5           push de
2c14: ed 53 01 70  ld   ($7001),de
2c18: cd 29 2c     call $2C29
2c1b: d1           pop  de
2c1c: e1           pop  hl
2c1d: b7           or   a
2c1e: ed 52        sbc  hl,de
2c20: 23           inc  hl
2c21: cb 3c        srl  h
2c23: cb 1d        rr   l
2c25: 19           add  hl,de
2c26: 22 01 70     ld   ($7001),hl
2c29: 06 06        ld   b,$06
2c2b: 97           sub  a
2c2c: 32 03 70     ld   ($7003),a
2c2f: c5           push bc
2c30: cd 0c 80     call $800C
2c33: c1           pop  bc
2c34: 3a 03 70     ld   a,($7003)
2c37: fe 0f        cp   $0F
2c39: 28 06        jr   z,$2C41
2c3b: 3c           inc  a
2c3c: 32 03 70     ld   ($7003),a
2c3f: 18 ee        jr   $2C2F
2c41: 2a 01 70     ld   hl,($7001)
2c44: 23           inc  hl
2c45: 22 01 70     ld   ($7001),hl
2c48: 10 e1        djnz $2C2B
2c4a: c9           ret
2c4b: c9           ret
2c4c: c9           ret
2c4d: c9           ret
2c4e: c9           ret
2c4f: 00           nop
2c50: 00           nop
2c51: 00           nop
2c52: 00           nop
2c53: 00           nop
2c54: 00           nop
2c55: e1           pop  hl
2c56: 36 3e        ld   (hl),$3E
2c58: 0d           dec  c
2c59: cd 00 34     call $3400
2c5c: 3e 0a        ld   a,$0A
2c5e: c3 00 34     jp   $3400
2c61: cd 84 2c     call $2C84          ; SUBROUTINE - format and write track; CALL format_track
2c64: cd a7 2c     call $2CA7          ; CALL write_track
2c67: 3e 30        ld   a,$30
2c69: d3 86        out  ($86),a        ; Select disk 3 ?
2c6b: c9           ret
2c6c: cd ff 2c     call $2CFF          ; SUBROUTINE - seek; CALL check_ready
2c6f: 3e a0        ld   a,$A0
2c71: d3 86        out  ($86),a        ; Set SDH to Master, Head0
2c73: af           xor  a
2c74: d3 83        out  ($83),a        ; Sec 0 ; FIXME - sector number
2c76: d3 84        out  ($84),a        ; Low Cylinder 0
2c78: d3 85        out  ($85),a        ; High Cylinder 0
2c7a: 3e 00        ld   a,$00
2c7c: f6 70        or   $70
2c7e: d3 87        out  ($87),a        ; Seek ; FIXME - disable seek
2c80: cd 35 2d     call $2D35          ; Wait for not busy
2c83: c9           ret
2c84: cd ea 2c     call $2CEA          ; SUBROUTINE - format; Cyl to ($2DEA), Sec Count to 16
2c87: 3e 50        ld   a,$50          
2c89: d3 87        out  ($87),a        ; Format track
2c8b: 21 f2 2f     ld   hl,$2FF2       ; Track format info is at 2FF2
2c8e: 01 80 00     ld   bc,$0080       ; Setup to transfer 256 byte to port 80
2c91: ed b3        otir                ; Output first 256 bytes
2c93: ed b3        otir                ; Output second 256 bytes
2c95: cd 35 2d     call $2D35          ; Wait for not busy
2c98: da 9c 2c     jp   c,$2C9C        ; Jump to error return if carry set
2c9b: c9           ret
2c9c: 11 8b 2d     ld   de,$2D8B       ; Load address "Error formatting track"
2c9f: 0e 09        ld   c,$09          ; write message
2ca1: cd 05 00     call $0005
2ca4: c3 00 00     jp   $0000          ; Warm boot
2ca7: af           xor  a              ; SUBROUTINE - write track
2ca8: 32 e6 2d     ld   ($2DE6),a      ; Start at sector 0
2cab: 06 10        ld   b,$10          ; Write 10 sectors
2cad: c5           push bc
2cae: cd b5 2c     call $2CB5          ; Call write_Sector
2cb1: c1           pop  bc
2cb2: 10 f9        djnz $2CAD          ; Write next Sector
2cb4: c9           ret
2cb5: cd ea 2c     call $2CEA          ; CALL Seek
2cb8: 3a e6 2d     ld   a,($2DE6)      ; Sector number from [$2DE6]
2cbb: d3 83        out  ($83),a        ; Set sector number  ; FIXME - sector number
2cbd: 3c           inc  a              ; Incremenet
2cbe: 32 e6 2d     ld   ($2DE6),a      ; Store it back
2cc1: 3e 30        ld   a,$30          
2cc3: d3 87        out  ($87),a        ; write sector
2cc5: 01 80 00     ld   bc,$0080       ; Setup to transfer 256 byte to port 80
2cc8: 21 f2 2d     ld   hl,$2DF2       ; Write buffer is at 2DF2
2ccb: ed b3        otir                ; Output first 256 bytes
2ccd: ed b3        otir                ; Output second 256 bytes
2ccf: cd 35 2d     call $2D35          ; Wait for not busy
2cd2: dc d6 2c     call c,$2CD6
2cd5: c9           ret
2cd6: 3a f1 2d     ld   a,($2DF1)
2cd9: b7           or   a
2cda: c0           ret  nz
2cdb: 3d           dec  a
2cdc: 32 f1 2d     ld   ($2DF1),a
2cdf: 11 c7 2d     ld   de,$2DC7       ; Set message to "Error writing track 0"
2ce2: 0e 09        ld   c,$09          
2ce4: cd 05 00     call $0005          ; Print message
2ce7: c3 00 00     jp   $0000          ; Warm boot - exit to CCP
2cea: cd ff 2c     call $2CFF          ; SUBROUTINE - Set cylinder address
2ced: 3e a0        ld   a,$A0
2cef: d3 86        out  ($86),a        ; Set SDH to Master, Head0
2cf1: 2a ea 2d     ld   hl,($2DEA)     ; Get cylinder from [$2DEA]
2cf4: 7d           ld   a,l
2cf5: d3 84        out  ($84),a        ; Cylinder low
2cf7: 7c           ld   a,h
2cf8: d3 85        out  ($85),a        ; Cylinder High
2cfa: 3e 10        ld   a,$10
2cfc: d3 82        out  ($82),a        ; Sector count to 16
2cfe: c9           ret
2cff: 3e a0        ld   a,$A0          ; SUBROUTINE - check healthy
2d01: d3 86        out  ($86),a        ; Set SDH to Master, Head0
2d03: 47           ld   b,a            ; B = A0
2d04: 2f           cpl                 ; Invert A
2d05: d3 84        out  ($84),a        ; Cylinder Number Low, set to 5F
2d07: db 86        in   a,($86)        ; Read back the SDH register
2d09: b8           cp   b              ; Did it change?
2d0a: 20 1e        jr   nz,$2D2A       ; Yes - Error Exit
2d0c: db 87        in   a,($87)        ; Read Status
2d0e: e6 c0        and  $C0            ; Mask Busy and ready bits
2d10: fe 40        cp   $40            ; Is drive ready and not busy?
2d12: c2 2a 2d     jp   nz,$2D2A       ; No - Error Exit
2d15: c9           ret
2d16: c5           push bc             ; SUBROUTINE - delay
2d17: e5           push hl
2d18: d5           push de
2d19: 06 05        ld   b,$05
2d1b: 11 ff ff     ld   de,$FFFF
2d1e: 21 de 39     ld   hl,$39DE
2d21: 19           add  hl,de
2d22: 38 fd        jr   c,$2D21
2d24: 10 f8        djnz $2D1E
2d26: d1           pop  de
2d27: e1           pop  hl
2d28: c1           pop  bc
2d29: c9           ret
2d2a: 11 47 2d     ld   de,$2D47       ; String at 2D47 "Hard drive not connected"
2d2d: 0e 09        ld   c,$09          ; Output string
2d2f: cd 05 00     call $0005          ; BIOS Call
2d32: c3 00 00     jp   $0000          ; Warm boot - Exit to CCP
2d35: 06 0a        ld   b,$0A          ; SUBROUTINE - Busy Wait
2d37: db 87        in   a,($87)
2d39: cb 7f        bit  7,a
2d3b: ca 45 2d     jp   z,$2D45       
2d3e: cd 16 2d     call $2D16          ; Delay
2d41: 10 f4        djnz $2D37
2d43: 3e ff        ld   a,$FF
2d45: 1f           rra
2d46: c9           ret
2d47: 48           ld   c,b
2d48: 41           ld   b,c
2d49: 52           ld   d,d
2d4a: 44           ld   b,h
2d4b: 20 44        jr   nz,$2D91
2d4d: 52           ld   d,d
2d4e: 49           ld   c,c
2d4f: 56           ld   d,(hl)
2d50: 45           ld   b,l
2d51: 20 45        jr   nz,$2D98
2d53: 49           ld   c,c
2d54: 54           ld   d,h
2d55: 48           ld   c,b
2d56: 45           ld   b,l
2d57: 52           ld   d,d
2d58: 20 4e        jr   nz,$2DA8
2d5a: 4f           ld   c,a
2d5b: 54           ld   d,h
2d5c: 20 43        jr   nz,$2DA1
2d5e: 4f           ld   c,a
2d5f: 4e           ld   c,(hl)
2d60: 4e           ld   c,(hl)
2d61: 45           ld   b,l
2d62: 43           ld   b,e
2d63: 54           ld   d,h
2d64: 45           ld   b,l
2d65: 44           ld   b,h
2d66: 20 2f        jr   nz,$2D97
2d68: 20 4e        jr   nz,$2DB8
2d6a: 4f           ld   c,a
2d6b: 54           ld   d,h
2d6c: 20 50        jr   nz,$2DBE
2d6e: 4f           ld   c,a
2d6f: 57           ld   d,a
2d70: 45           ld   b,l
2d71: 52           ld   d,d
2d72: 45           ld   b,l
2d73: 44           ld   b,h
2d74: 20 4f        jr   nz,$2DC5
2d76: 4e           ld   c,(hl)
2d77: 20 2f        jr   nz,$2DA8
2d79: 20 4f        jr   nz,$2DCA
2d7b: 52           ld   d,d
2d7c: 20 4e        jr   nz,$2DCC
2d7e: 4f           ld   c,a
2d7f: 54           ld   d,h
2d80: 20 52        jr   nz,$2DD4
2d82: 45           ld   b,l
2d83: 41           ld   b,c
2d84: 44           ld   b,h
2d85: 59           ld   e,c
2d86: 20 0d        jr   nz,$2D95
2d88: 0a           ld   a,(bc)
2d89: 0a           ld   a,(bc)
2d8a: 24           inc  h
2d8b: 45           ld   b,l
2d8c: 52           ld   d,d
2d8d: 52           ld   d,d
2d8e: 4f           ld   c,a
2d8f: 52           ld   d,d
2d90: 20 46        jr   nz,$2DD8
2d92: 4f           ld   c,a
2d93: 52           ld   d,d
2d94: 4d           ld   c,l
2d95: 41           ld   b,c
2d96: 54           ld   d,h
2d97: 54           ld   d,h
2d98: 49           ld   c,c
2d99: 4e           ld   c,(hl)
2d9a: 47           ld   b,a
2d9b: 20 54        jr   nz,$2DF1
2d9d: 52           ld   d,d
2d9e: 41           ld   b,c
2d9f: 43           ld   b,e
2da0: 4b           ld   c,e
2da1: 20 30        jr   nz,$2DD3
2da3: 20 0d        jr   nz,$2DB2
2da5: 0a           ld   a,(bc)
2da6: 0a           ld   a,(bc)
2da7: 24           inc  h
2da8: 45           ld   b,l
2da9: 52           ld   d,d
2daa: 52           ld   d,d
2dab: 4f           ld   c,a
2dac: 52           ld   d,d
2dad: 20 52        jr   nz,$2E01
2daf: 45           ld   b,l
2db0: 41           ld   b,c
2db1: 44           ld   b,h
2db2: 49           ld   c,c
2db3: 4e           ld   c,(hl)
2db4: 47           ld   b,a
2db5: 20 54        jr   nz,$2E0B
2db7: 52           ld   d,d
2db8: 41           ld   b,c
2db9: 43           ld   b,e
2dba: 4b           ld   c,e
2dbb: 20 30        jr   nz,$2DED
2dbd: 20 44        jr   nz,$2E03
2dbf: 41           ld   b,c
2dc0: 54           ld   d,h
2dc1: 41           ld   b,c
2dc2: 20 0d        jr   nz,$2DD1
2dc4: 0a           ld   a,(bc)
2dc5: 0a           ld   a,(bc)
2dc6: 24           inc  h
2dc7: 45           ld   b,l
2dc8: 52           ld   d,d
2dc9: 52           ld   d,d
2dca: 4f           ld   c,a
2dcb: 52           ld   d,d
2dcc: 20 57        jr   nz,$2E25
2dce: 52           ld   d,d
2dcf: 49           ld   c,c
2dd0: 54           ld   d,h
2dd1: 49           ld   c,c
2dd2: 4e           ld   c,(hl)
2dd3: 47           ld   b,a
2dd4: 20 54        jr   nz,$2E2A
2dd6: 52           ld   d,d
2dd7: 41           ld   b,c
2dd8: 43           ld   b,e
2dd9: 4b           ld   c,e
2dda: 20 30        jr   nz,$2E0C
2ddc: 20 44        jr   nz,$2E22
2dde: 41           ld   b,c
2ddf: 54           ld   d,h
2de0: 41           ld   b,c
2de1: 20 0d        jr   nz,$2DF0
2de3: 0a           ld   a,(bc)
2de4: 0a           ld   a,(bc)
2de5: 24           inc  h
2de6: 00           nop                 ; Sector number
2de7: 00           nop
2de8: 00           nop
2de9: 00           nop
2dea: 00           nop                 ; Cylinder number, 10 bits
2deb: 00           nop
2dec: 00           nop
2ded: 00           nop
2dee: 00           nop
2def: 00           nop
2df0: 00           nop
2df1: 00           nop
2df2: e5           push hl
2df3: e5           push hl
2df4: e5           push hl
2df5: e5           push hl
2df6: e5           push hl
2df7: e5           push hl
2df8: e5           push hl
2df9: e5           push hl
2dfa: e5           push hl
2dfb: e5           push hl
2dfc: e5           push hl
2dfd: e5           push hl
2dfe: e5           push hl
2dff: e5           push hl
2e00: e5           push hl
2e01: e5           push hl
2e02: e5           push hl
2e03: e5           push hl
2e04: e5           push hl
2e05: e5           push hl
2e06: e5           push hl
2e07: e5           push hl
2e08: e5           push hl
2e09: e5           push hl
2e0a: e5           push hl
2e0b: e5           push hl
2e0c: e5           push hl
2e0d: e5           push hl
2e0e: e5           push hl
2e0f: e5           push hl
2e10: e5           push hl
2e11: e5           push hl
2e12: e5           push hl
2e13: e5           push hl
2e14: e5           push hl
2e15: e5           push hl
2e16: e5           push hl
2e17: e5           push hl
2e18: e5           push hl
2e19: e5           push hl
2e1a: e5           push hl
2e1b: e5           push hl
2e1c: e5           push hl
2e1d: e5           push hl
2e1e: e5           push hl
2e1f: e5           push hl
2e20: e5           push hl
2e21: e5           push hl
2e22: e5           push hl
2e23: e5           push hl
2e24: e5           push hl
2e25: e5           push hl
2e26: e5           push hl
2e27: e5           push hl
2e28: e5           push hl
2e29: e5           push hl
2e2a: e5           push hl
2e2b: e5           push hl
2e2c: e5           push hl
2e2d: e5           push hl
2e2e: e5           push hl
2e2f: e5           push hl
2e30: e5           push hl
2e31: e5           push hl
2e32: e5           push hl
2e33: e5           push hl
2e34: e5           push hl
2e35: e5           push hl
2e36: e5           push hl
2e37: e5           push hl
2e38: e5           push hl
2e39: e5           push hl
2e3a: e5           push hl
2e3b: e5           push hl
2e3c: e5           push hl
2e3d: e5           push hl
2e3e: e5           push hl
2e3f: e5           push hl
2e40: e5           push hl
2e41: e5           push hl
2e42: e5           push hl
2e43: e5           push hl
2e44: e5           push hl
2e45: e5           push hl
2e46: e5           push hl
2e47: e5           push hl
2e48: e5           push hl
2e49: e5           push hl
2e4a: e5           push hl
2e4b: e5           push hl
2e4c: e5           push hl
2e4d: e5           push hl
2e4e: e5           push hl
2e4f: e5           push hl
2e50: e5           push hl
2e51: e5           push hl
2e52: e5           push hl
2e53: e5           push hl
2e54: e5           push hl
2e55: e5           push hl
2e56: e5           push hl
2e57: e5           push hl
2e58: e5           push hl
2e59: e5           push hl
2e5a: e5           push hl
2e5b: e5           push hl
2e5c: e5           push hl
2e5d: e5           push hl
2e5e: e5           push hl
2e5f: e5           push hl
2e60: e5           push hl
2e61: e5           push hl
2e62: e5           push hl
2e63: e5           push hl
2e64: e5           push hl
2e65: e5           push hl
2e66: e5           push hl
2e67: e5           push hl
2e68: e5           push hl
2e69: e5           push hl
2e6a: e5           push hl
2e6b: e5           push hl
2e6c: e5           push hl
2e6d: e5           push hl
2e6e: e5           push hl
2e6f: e5           push hl
2e70: e5           push hl
2e71: e5           push hl
2e72: e5           push hl
2e73: e5           push hl
2e74: e5           push hl
2e75: e5           push hl
2e76: e5           push hl
2e77: e5           push hl
2e78: e5           push hl
2e79: e5           push hl
2e7a: e5           push hl
2e7b: e5           push hl
2e7c: e5           push hl
2e7d: e5           push hl
2e7e: e5           push hl
2e7f: e5           push hl
2e80: e5           push hl
2e81: e5           push hl
2e82: e5           push hl
2e83: e5           push hl
2e84: e5           push hl
2e85: e5           push hl
2e86: e5           push hl
2e87: e5           push hl
2e88: e5           push hl
2e89: e5           push hl
2e8a: e5           push hl
2e8b: e5           push hl
2e8c: e5           push hl
2e8d: e5           push hl
2e8e: e5           push hl
2e8f: e5           push hl
2e90: e5           push hl
2e91: e5           push hl
2e92: e5           push hl
2e93: e5           push hl
2e94: e5           push hl
2e95: e5           push hl
2e96: e5           push hl
2e97: e5           push hl
2e98: e5           push hl
2e99: e5           push hl
2e9a: e5           push hl
2e9b: e5           push hl
2e9c: e5           push hl
2e9d: e5           push hl
2e9e: e5           push hl
2e9f: e5           push hl
2ea0: e5           push hl
2ea1: e5           push hl
2ea2: e5           push hl
2ea3: e5           push hl
2ea4: e5           push hl
2ea5: e5           push hl
2ea6: e5           push hl
2ea7: e5           push hl
2ea8: e5           push hl
2ea9: e5           push hl
2eaa: e5           push hl
2eab: e5           push hl
2eac: e5           push hl
2ead: e5           push hl
2eae: e5           push hl
2eaf: e5           push hl
2eb0: e5           push hl
2eb1: e5           push hl
2eb2: e5           push hl
2eb3: e5           push hl
2eb4: e5           push hl
2eb5: e5           push hl
2eb6: e5           push hl
2eb7: e5           push hl
2eb8: e5           push hl
2eb9: e5           push hl
2eba: e5           push hl
2ebb: e5           push hl
2ebc: e5           push hl
2ebd: e5           push hl
2ebe: e5           push hl
2ebf: e5           push hl
2ec0: e5           push hl
2ec1: e5           push hl
2ec2: e5           push hl
2ec3: e5           push hl
2ec4: e5           push hl
2ec5: e5           push hl
2ec6: e5           push hl
2ec7: e5           push hl
2ec8: e5           push hl
2ec9: e5           push hl
2eca: e5           push hl
2ecb: e5           push hl
2ecc: e5           push hl
2ecd: e5           push hl
2ece: e5           push hl
2ecf: e5           push hl
2ed0: e5           push hl
2ed1: e5           push hl
2ed2: e5           push hl
2ed3: e5           push hl
2ed4: e5           push hl
2ed5: e5           push hl
2ed6: e5           push hl
2ed7: e5           push hl
2ed8: e5           push hl
2ed9: e5           push hl
2eda: e5           push hl
2edb: e5           push hl
2edc: e5           push hl
2edd: e5           push hl
2ede: e5           push hl
2edf: e5           push hl
2ee0: e5           push hl
2ee1: e5           push hl
2ee2: e5           push hl
2ee3: e5           push hl
2ee4: e5           push hl
2ee5: e5           push hl
2ee6: e5           push hl
2ee7: e5           push hl
2ee8: e5           push hl
2ee9: e5           push hl
2eea: e5           push hl
2eeb: e5           push hl
2eec: e5           push hl
2eed: e5           push hl
2eee: e5           push hl
2eef: e5           push hl
2ef0: e5           push hl
2ef1: e5           push hl
2ef2: e5           push hl
2ef3: e5           push hl
2ef4: e5           push hl
2ef5: e5           push hl
2ef6: e5           push hl
2ef7: e5           push hl
2ef8: e5           push hl
2ef9: e5           push hl
2efa: e5           push hl
2efb: e5           push hl
2efc: e5           push hl
2efd: e5           push hl
2efe: e5           push hl
2eff: e5           push hl
2f00: e5           push hl
2f01: e5           push hl
2f02: e5           push hl
2f03: e5           push hl
2f04: e5           push hl
2f05: e5           push hl
2f06: e5           push hl
2f07: e5           push hl
2f08: e5           push hl
2f09: e5           push hl
2f0a: e5           push hl
2f0b: e5           push hl
2f0c: e5           push hl
2f0d: e5           push hl
2f0e: e5           push hl
2f0f: e5           push hl
2f10: e5           push hl
2f11: e5           push hl
2f12: e5           push hl
2f13: e5           push hl
2f14: e5           push hl
2f15: e5           push hl
2f16: e5           push hl
2f17: e5           push hl
2f18: e5           push hl
2f19: e5           push hl
2f1a: e5           push hl
2f1b: e5           push hl
2f1c: e5           push hl
2f1d: e5           push hl
2f1e: e5           push hl
2f1f: e5           push hl
2f20: e5           push hl
2f21: e5           push hl
2f22: e5           push hl
2f23: e5           push hl
2f24: e5           push hl
2f25: e5           push hl
2f26: e5           push hl
2f27: e5           push hl
2f28: e5           push hl
2f29: e5           push hl
2f2a: e5           push hl
2f2b: e5           push hl
2f2c: e5           push hl
2f2d: e5           push hl
2f2e: e5           push hl
2f2f: e5           push hl
2f30: e5           push hl
2f31: e5           push hl
2f32: e5           push hl
2f33: e5           push hl
2f34: e5           push hl
2f35: e5           push hl
2f36: e5           push hl
2f37: e5           push hl
2f38: e5           push hl
2f39: e5           push hl
2f3a: e5           push hl
2f3b: e5           push hl
2f3c: e5           push hl
2f3d: e5           push hl
2f3e: e5           push hl
2f3f: e5           push hl
2f40: e5           push hl
2f41: e5           push hl
2f42: e5           push hl
2f43: e5           push hl
2f44: e5           push hl
2f45: e5           push hl
2f46: e5           push hl
2f47: e5           push hl
2f48: e5           push hl
2f49: e5           push hl
2f4a: e5           push hl
2f4b: e5           push hl
2f4c: e5           push hl
2f4d: e5           push hl
2f4e: e5           push hl
2f4f: e5           push hl
2f50: e5           push hl
2f51: e5           push hl
2f52: e5           push hl
2f53: e5           push hl
2f54: e5           push hl
2f55: e5           push hl
2f56: e5           push hl
2f57: e5           push hl
2f58: e5           push hl
2f59: e5           push hl
2f5a: e5           push hl
2f5b: e5           push hl
2f5c: e5           push hl
2f5d: e5           push hl
2f5e: e5           push hl
2f5f: e5           push hl
2f60: e5           push hl
2f61: e5           push hl
2f62: e5           push hl
2f63: e5           push hl
2f64: e5           push hl
2f65: e5           push hl
2f66: e5           push hl
2f67: e5           push hl
2f68: e5           push hl
2f69: e5           push hl
2f6a: e5           push hl
2f6b: e5           push hl
2f6c: e5           push hl
2f6d: e5           push hl
2f6e: e5           push hl
2f6f: e5           push hl
2f70: e5           push hl
2f71: e5           push hl
2f72: e5           push hl
2f73: e5           push hl
2f74: e5           push hl
2f75: e5           push hl
2f76: e5           push hl
2f77: e5           push hl
2f78: e5           push hl
2f79: e5           push hl
2f7a: e5           push hl
2f7b: e5           push hl
2f7c: e5           push hl
2f7d: e5           push hl
2f7e: e5           push hl
2f7f: e5           push hl
2f80: e5           push hl
2f81: e5           push hl
2f82: e5           push hl
2f83: e5           push hl
2f84: e5           push hl
2f85: e5           push hl
2f86: e5           push hl
2f87: e5           push hl
2f88: e5           push hl
2f89: e5           push hl
2f8a: e5           push hl
2f8b: e5           push hl
2f8c: e5           push hl
2f8d: e5           push hl
2f8e: e5           push hl
2f8f: e5           push hl
2f90: e5           push hl
2f91: e5           push hl
2f92: e5           push hl
2f93: e5           push hl
2f94: e5           push hl
2f95: e5           push hl
2f96: e5           push hl
2f97: e5           push hl
2f98: e5           push hl
2f99: e5           push hl
2f9a: e5           push hl
2f9b: e5           push hl
2f9c: e5           push hl
2f9d: e5           push hl
2f9e: e5           push hl
2f9f: e5           push hl
2fa0: e5           push hl
2fa1: e5           push hl
2fa2: e5           push hl
2fa3: e5           push hl
2fa4: e5           push hl
2fa5: e5           push hl
2fa6: e5           push hl
2fa7: e5           push hl
2fa8: e5           push hl
2fa9: e5           push hl
2faa: e5           push hl
2fab: e5           push hl
2fac: e5           push hl
2fad: e5           push hl
2fae: e5           push hl
2faf: e5           push hl
2fb0: e5           push hl
2fb1: e5           push hl
2fb2: e5           push hl
2fb3: e5           push hl
2fb4: e5           push hl
2fb5: e5           push hl
2fb6: e5           push hl
2fb7: e5           push hl
2fb8: e5           push hl
2fb9: e5           push hl
2fba: e5           push hl
2fbb: e5           push hl
2fbc: e5           push hl
2fbd: e5           push hl
2fbe: e5           push hl
2fbf: e5           push hl
2fc0: e5           push hl
2fc1: e5           push hl
2fc2: e5           push hl
2fc3: e5           push hl
2fc4: e5           push hl
2fc5: e5           push hl
2fc6: e5           push hl
2fc7: e5           push hl
2fc8: e5           push hl
2fc9: e5           push hl
2fca: e5           push hl
2fcb: e5           push hl
2fcc: e5           push hl
2fcd: e5           push hl
2fce: e5           push hl
2fcf: e5           push hl
2fd0: e5           push hl
2fd1: e5           push hl
2fd2: e5           push hl
2fd3: e5           push hl
2fd4: e5           push hl
2fd5: e5           push hl
2fd6: e5           push hl
2fd7: e5           push hl
2fd8: e5           push hl
2fd9: e5           push hl
2fda: e5           push hl
2fdb: e5           push hl
2fdc: e5           push hl
2fdd: e5           push hl
2fde: e5           push hl
2fdf: e5           push hl
2fe0: e5           push hl
2fe1: e5           push hl
2fe2: e5           push hl
2fe3: e5           push hl
2fe4: e5           push hl
2fe5: e5           push hl
2fe6: e5           push hl
2fe7: e5           push hl
2fe8: e5           push hl
2fe9: e5           push hl
2fea: e5           push hl
2feb: e5           push hl
2fec: e5           push hl
2fed: e5           push hl
2fee: e5           push hl
2fef: e5           push hl
2ff0: e5           push hl
2ff1: e5           push hl
2ff2: 00           nop
2ff3: 00           nop
2ff4: 00           nop
2ff5: 02           ld   (bc),a
2ff6: 00           nop
2ff7: 04           inc  b
2ff8: 00           nop
2ff9: 06 00        ld   b,$00
2ffb: 08           ex   af,af'
2ffc: 00           nop
2ffd: 0a           ld   a,(bc)
2ffe: 00           nop
2fff: 0c           inc  c
3000: 00           nop
3001: 0e 00        ld   c,$00
3003: 01 00 03     ld   bc,$0300
3006: 00           nop
3007: 05           dec  b
3008: 00           nop
3009: 07           rlca
300a: 00           nop
300b: 09           add  hl,bc
300c: 00           nop
300d: 0b           dec  bc
300e: 00           nop
300f: 0d           dec  c
3010: 00           nop
3011: 0f           rrca
3012: ff           rst  $38
3013: ff           rst  $38
3014: ff           rst  $38
3015: ff           rst  $38
3016: ff           rst  $38
3017: ff           rst  $38
3018: ff           rst  $38
3019: ff           rst  $38
301a: ff           rst  $38
301b: ff           rst  $38
301c: ff           rst  $38
301d: ff           rst  $38
301e: ff           rst  $38
301f: ff           rst  $38
3020: ff           rst  $38
3021: ff           rst  $38
3022: ff           rst  $38
3023: ff           rst  $38
3024: ff           rst  $38
3025: ff           rst  $38
3026: ff           rst  $38
3027: ff           rst  $38
3028: ff           rst  $38
3029: ff           rst  $38
302a: ff           rst  $38
302b: ff           rst  $38
302c: ff           rst  $38
302d: ff           rst  $38
302e: ff           rst  $38
302f: ff           rst  $38
3030: ff           rst  $38
3031: ff           rst  $38
3032: 4e           ld   c,(hl)
3033: 01 c3 0f     ld   bc,$0FC3
3036: 80           add  a,b
3037: c3 42 80     jp   $8042
303a: c3 4d 80     jp   $804D
303d: c3 75 80     jp   $8075
3040: c3 c5 80     jp   $80C5
3043: 06 14        ld   b,$14          ; SUBROUTINE - check_present/ready. Retry count?
3045: c5           push bc
3046: 3e a0        ld   a,$A0
3048: d3 86        out  ($86),a        ; Set SDH to Master, Head0
304a: 47           ld   b,a            ; b = A0
304b: 2f           cpl                 ; Invert a, a is now 5F
304c: d3 84        out  ($84),a        ; Cylinder Number Low, set to 5F
304e: db 86        in   a,($86)        ; Read back the SDH register
3050: b8           cp   b              ; Did it change?
3051: 28 09        jr   z,$305C        ; No - Jump over
3053: cd 3e 81     call $813E          ; ??
3056: c1           pop  bc
3057: 10 ec        djnz $3045          ; retry ?
3059: 3e 02        ld   a,$02
305b: c9           ret                 ; retries failed, exit status 2
305c: c1           pop  bc
305d: 06 28        ld   b,$28          ; Retry count?
305f: c5           push bc
3060: db 87        in   a,($87)        ; Read status
3062: cb 77        bit  6,a            ; Ready?
3064: 20 09        jr   nz,$306F       ; yes - jump over
3066: cd 3e 81     call $813E          ; ??
3069: c1           pop  bc
306a: 10 f3        djnz $305F          ; Retry ?
306c: 3e 01        ld   a,$01
306e: c9           ret                 ; retries failed, exit status 2
306f: c1           pop  bc
3070: 3e 30        ld   a,$30
3072: d3 86        out  ($86),a        ; Select drive 3?
3074: af           xor  a
3075: c9           ret                 ; Return exit status 0
3076: 3e 00        ld   a,$00
3078: 32 03 70     ld   ($7003),a
307b: 21 00 00     ld   hl,$0000
307e: c3 8b 80     jp   $808B
3081: 7c           ld   a,h
3082: e6 3f        and  $3F
3084: 3d           dec  a
3085: 32 03 70     ld   ($7003),a
3088: 7c           ld   a,h
3089: e6 c0        and  $C0
308b: 07           rlca
308c: 07           rlca
308d: 67           ld   h,a
308e: 29           add  hl,hl
308f: 29           add  hl,hl
3090: 78           ld   a,b
3091: 06 00        ld   b,$00
3093: 09           add  hl,bc
3094: 47           ld   b,a
3095: c5           push bc
3096: cd 8b 80     call $808B
3099: c1           pop  bc
309a: c0           ret  nz
309b: 3a 03 70     ld   a,($7003)
309e: 3c           inc  a
309f: 32 03 70     ld   ($7003),a
30a2: 2a 01 70     ld   hl,($7001)
30a5: 10 ee        djnz $3095
30a7: af           xor  a
30a8: c9           ret
30a9: ed 53 04 70  ld   ($7004),de
30ad: 21 00 00     ld   hl,$0000
30b0: 22 01 70     ld   ($7001),hl
30b3: af           xor  a
30b4: 32 00 70     ld   ($7000),a
30b7: 3e 00        ld   a,$00
30b9: 32 03 70     ld   ($7003),a
30bc: c3 c5 80     jp   $80C5
30bf: 22 01 70     ld   ($7001),hl
30c2: ed 53 04 70  ld   ($7004),de
30c6: af           xor  a
30c7: 32 00 70     ld   ($7000),a
30ca: cd e5 80     call $80E5
30cd: 3e 20        ld   a,$20
30cf: d3 87        out  ($87),a        ; Read sector
30d1: 2a 04 70     ld   hl,($7004)     ; HL to address buffer at 7004
30d4: 01 80 00     ld   bc,$0080       ; Read 256 bytes at a time from add 80
30d7: db 87        in   a,($87)        ; Check status
30d9: b7           or   a
30da: fa a3 80     jp   m,$80A3        ; Not ready?
30dd: ed b2        inir                ; Read 256 bytes
30df: ed b2        inir                ; Read 256 bytes
30e1: eb           ex   de,hl
30e2: 47           ld   b,a
30e3: 3e 30        ld   a,$30
30e5: d3 86        out  ($86),a        ; Select drive 3?
30e7: 78           ld   a,b
30e8: e6 01        and  $01
30ea: c8           ret  z
30eb: db 81        in   a,($81)        ; Read Extended error register
30ed: e6 10        and  $10            ; ID not found ?
30ef: 28 04        jr   z,$30F5
30f1: 3e 02        ld   a,$02
30f3: 18 02        jr   $30F7
30f5: 3e 01        ld   a,$01
30f7: b7           or   a
30f8: c9           ret
30f9: cd e5 80     call $80E5
30fc: 3e 30        ld   a,$30          
30fe: d3 87        out  ($87),a        ; Write Sector
3100: 2a 04 70     ld   hl,($7004)     ; HL to address buffer at 7004
3103: 01 80 00     ld   bc,$0080       ; Write 256 bytes at a time to add 80
3106: ed b3        otir                ; Write 256 Bytes
3108: ed b3        otir                ; Write 256 Bytes
310a: db 87        in   a,($87)        ; Check status
310c: b7           or   a
310d: fa d6 80     jp   m,$80D6        ; Not ready?
3110: 47           ld   b,a
3111: 3e 30        ld   a,$30          ; Select drive 3?
3113: d3 86        out  ($86),a
3115: 78           ld   a,b
3116: e6 01        and  $01
3118: c9           ret
3119: 3e a0        ld   a,$A0          
311b: d3 86        out  ($86),a        ; Set SDH to Master, Head0
311d: 47           ld   b,a            ; b = A0
311e: 2f           cpl                 ; Invert a, a is now 5F
311f: d3 84        out  ($84),a        ; Cylinder Number Low, set to 5F
3121: db 86        in   a,($86)        ; Read back the SDH register
3123: b8           cp   b              ; Did it change?
3124: c2 e5 80     jp   nz,$80E5       ; Yes - ??
3127: db 87        in   a,($87)        ; Read Status
3129: e6 c0        and  $C0            ; Mask Busy and ready bits
312b: fe 40        cp   $40            ; Is drive ready and not busy?
312d: c2 e5 80     jp   nz,$80E5       ; No - Retry
3130: 2a 01 70     ld   hl,($7001)
3133: 3a 00 70     ld   a,($7000)
3136: 1f           rra
3137: d2 0a 81     jp   nc,$810A
313a: 11 64 02     ld   de,$0264
313d: 19           add  hl,de
313e: 7d           ld   a,l
313f: e6 03        and  $03
3141: 47           ld   b,a
3142: 3a 00 70     ld   a,($7000)
3145: 0f           rrca
3146: 87           add  a,a
3147: 87           add  a,a
3148: 87           add  a,a
3149: f6 a0        or   $A0
314b: b0           or   b
314c: d3 86        out  ($86),a        ; Secsize/Drive/Head select
314e: 3a 03 70     ld   a,($7003)
3151: d3 83        out  ($83),a        ; Sector number ; FIXME - sector number
3153: 7d           ld   a,l
3154: 1f           rra
3155: 1f           rra
3156: e6 3f        and  $3F
3158: 47           ld   b,a
3159: 7c           ld   a,h
315a: 0f           rrca
315b: 0f           rrca
315c: 4f           ld   c,a
315d: e6 c0        and  $C0
315f: b0           or   b
3160: d3 84        out  ($84),a        ; Cylinder Number, Low
3162: 79           ld   a,c
3163: e6 03        and  $03
3165: d3 85        out  ($85),a        ; Cylinder Number, High 2 bits
3167: 3e 70        ld   a,$70
3169: d3 87        out  ($87),a        ; HDD Exec CMD - SEEK  ; FIXME - disable seek
316b: db 87        in   a,($87)
316d: a7           and  a
316e: fa 37 81     jp   m,$8137
3171: c9           ret
3172: 06 05        ld   b,$05
3174: 11 ff ff     ld   de,$FFFF
3177: 21 de 39     ld   hl,$39DE
317a: 19           add  hl,de
317b: 38 fd        jr   c,$317A
317d: 10 f8        djnz $3177
317f: c9           ret
3180: 00           nop
3181: 3a 02 00     ld   a,($0002)
3184: 32 80 31     ld   ($3180),a
3187: fe f0        cp   $F0
3189: 28 04        jr   z,$318F
318b: fe ef        cp   $EF
318d: 20 31        jr   nz,$31C0
318f: 1e 00        ld   e,$00
3191: 0e 0c        ld   c,$0C
3193: cd 05 00     call $0005
3196: 3e 54        ld   a,$54
3198: bb           cp   e
3199: 28 1a        jr   z,$31B5
319b: 3a 80 31     ld   a,($3180)
319e: 67           ld   h,a
319f: 2e 33        ld   l,$33
31a1: 06 0d        ld   b,$0D
31a3: 3e c3        ld   a,$C3
31a5: be           cp   (hl)
31a6: 20 0d        jr   nz,$31B5
31a8: 23           inc  hl
31a9: 5e           ld   e,(hl)
31aa: 23           inc  hl
31ab: 56           ld   d,(hl)
31ac: 23           inc  hl
31ad: 1a           ld   a,(de)
31ae: fe c9        cp   $C9
31b0: 20 03        jr   nz,$31B5
31b2: 10 ef        djnz $31A3
31b4: c9           ret
31b5: 11 fe 31     ld   de,$31FE
31b8: 0e 09        ld   c,$09
31ba: cd 05 00     call $0005
31bd: c3 00 00     jp   $0000
31c0: 11 40 32     ld   de,$3240
31c3: 18 f3        jr   $31B8
31c5: cd 81 31     call $3181
31c8: a7           and  a
31c9: 2a 06 00     ld   hl,($0006)
31cc: 11 06 e2     ld   de,$E206
31cf: ed 52        sbc  hl,de
31d1: c2 c0 31     jp   nz,$31C0
31d4: 21 00 00     ld   hl,$0000
31d7: e5           push hl
31d8: d1           pop  de
31d9: 0e 0a        ld   c,$0A
31db: cd 5a f0     call $F05A
31de: 3e 42        ld   a,$42
31e0: ba           cp   d
31e1: 20 d2        jr   nz,$31B5
31e3: 3e 32        ld   a,$32
31e5: bb           cp   e
31e6: 20 cd        jr   nz,$31B5
31e8: 16 32        ld   d,$32
31ea: 1e 36        ld   e,$36
31ec: b7           or   a
31ed: ed 52        sbc  hl,de
31ef: 38 c4        jr   c,$31B5
31f1: 0e 1d        ld   c,$1D
31f3: 3e 01        ld   a,$01
31f5: c3 5a f0     jp   $F05A
31f8: 0e 1d        ld   c,$1D
31fa: 97           sub  a
31fb: c3 5a f0     jp   $F05A
31fe: 0a           ld   a,(bc)
31ff: 0a           ld   a,(bc)
3200: 0a           ld   a,(bc)
3201: 0d           dec  c
3202: 54           ld   d,h
3203: 48           ld   c,b
3204: 49           ld   c,c
3205: 53           ld   d,e
3206: 20 50        jr   nz,$3258
3208: 52           ld   d,d
3209: 4f           ld   c,a
320a: 47           ld   b,a
320b: 52           ld   d,d
320c: 41           ld   b,c
320d: 4d           ld   c,l
320e: 20 52        jr   nz,$3262
3210: 45           ld   b,l
3211: 51           ld   d,c
3212: 55           ld   d,l
3213: 49           ld   c,c
3214: 52           ld   d,d
3215: 45           ld   b,l
3216: 53           ld   d,e
3217: 20 45        jr   nz,$325E
3219: 50           ld   d,b
321a: 53           ld   d,e
321b: 4f           ld   c,a
321c: 4e           ld   c,(hl)
321d: 20 43        jr   nz,$3262
321f: 50           ld   d,b
3220: 2f           cpl
3221: 4d           ld   c,l
3222: 20 52        jr   nz,$3276
3224: 45           ld   b,l
3225: 4c           ld   c,h
3226: 45           ld   b,l
3227: 41           ld   b,c
3228: 53           ld   d,e
3229: 45           ld   b,l
322a: 20 42        jr   nz,$326E
322c: 32 2e 32     ld   ($322E),a
322f: 36 20        ld   (hl),$20
3231: 4f           ld   c,a
3232: 52           ld   d,d
3233: 20 47        jr   nz,$327C
3235: 52           ld   d,d
3236: 45           ld   b,l
3237: 41           ld   b,c
3238: 54           ld   d,h
3239: 45           ld   b,l
323a: 52           ld   d,d
323b: 0d           dec  c
323c: 0a           ld   a,(bc)
323d: 0a           ld   a,(bc)
323e: 0a           ld   a,(bc)
323f: 24           inc  h
3240: 0a           ld   a,(bc)
3241: 0a           ld   a,(bc)
3242: 0a           ld   a,(bc)
3243: 0d           dec  c
3244: 54           ld   d,h
3245: 48           ld   c,b
3246: 49           ld   c,c
3247: 53           ld   d,e
3248: 20 4d        jr   nz,$3297
324a: 55           ld   d,l
324b: 53           ld   d,e
324c: 54           ld   d,h
324d: 20 52        jr   nz,$32A1
324f: 55           ld   d,l
3250: 4e           ld   c,(hl)
3251: 20 41        jr   nz,$3294
3253: 53           ld   d,e
3254: 20 41        jr   nz,$3297
3256: 20 53        jr   nz,$32AB
3258: 54           ld   d,h
3259: 41           ld   b,c
325a: 4e           ld   c,(hl)
325b: 44           ld   b,h
325c: 2d           dec  l
325d: 41           ld   b,c
325e: 4c           ld   c,h
325f: 4f           ld   c,a
3260: 4e           ld   c,(hl)
3261: 45           ld   b,l
3262: 20 50        jr   nz,$32B4
3264: 52           ld   d,d
3265: 4f           ld   c,a
3266: 47           ld   b,a
3267: 52           ld   d,d
3268: 41           ld   b,c
3269: 4d           ld   c,l
326a: 0d           dec  c
326b: 0a           ld   a,(bc)
326c: 0a           ld   a,(bc)
326d: 0a           ld   a,(bc)
326e: 24           inc  h
326f: dd           db   $dd
3270: e8           ret  pe
3271: fd e9        jp   (iy)
3273: e9           jp   (hl)
3274: df           rst  $18
3275: e8           ret  pe
3276: ff           rst  $38
3277: dd 21 6f 32  ld   ix,$326F
327b: 18 0d        jr   $328A
327d: dd 21 6f 32  ld   ix,$326F
3281: 7b           ld   a,e
3282: 95           sub  l
3283: 3d           dec  a
3284: 47           ld   b,a
3285: 7a           ld   a,d
3286: 94           sub  h
3287: 3d           dec  a
3288: 5f           ld   e,a
3289: 50           ld   d,b
328a: cd cd 26     call $26CD
328d: dd 7e 00     ld   a,(ix+$00)
3290: cd eb 33     call $33EB
3293: 42           ld   b,d
3294: dd 7e 01     ld   a,(ix+$01)
3297: cd 04 34     call $3404
329a: dd 7e 02     ld   a,(ix+$02)
329d: cd eb 33     call $33EB
32a0: cd 79 33     call $3379
32a3: 3e 0a        ld   a,$0A
32a5: cd eb 33     call $33EB
32a8: 43           ld   b,e
32a9: dd 4e 03     ld   c,(ix+$03)
32ac: cd ff 32     call $32FF
32af: e5           push hl
32b0: 24           inc  h
32b1: cd cd 26     call $26CD
32b4: e1           pop  hl
32b5: 43           ld   b,e
32b6: dd 4e 04     ld   c,(ix+$04)
32b9: cd ff 32     call $32FF
32bc: dd 7e 05     ld   a,(ix+$05)
32bf: cd eb 33     call $33EB
32c2: 42           ld   b,d
32c3: dd 7e 06     ld   a,(ix+$06)
32c6: cd 04 34     call $3404
32c9: dd 7e 07     ld   a,(ix+$07)
32cc: cd eb 33     call $33EB
32cf: 3a fe 32     ld   a,($32FE)
32d2: a7           and  a
32d3: c8           ret  z
32d4: cb 47        bit  0,a
32d6: f5           push af
32d7: c4 ed 32     call nz,$32ED
32da: f1           pop  af
32db: cb 4f        bit  1,a
32dd: c8           ret  z
32de: e5           push hl
32df: 24           inc  h
32e0: 2c           inc  l
32e1: 43           ld   b,e
32e2: cd cd 26     call $26CD
32e5: cd 27 33     call $3327
32e8: 24           inc  h
32e9: 10 f7        djnz $32E2
32eb: e1           pop  hl
32ec: c9           ret
32ed: 7a           ld   a,d
32ee: 85           add  a,l
32ef: e5           push hl
32f0: 6f           ld   l,a
32f1: 24           inc  h
32f2: 43           ld   b,e
32f3: cd cd 26     call $26CD
32f6: cd 2f 33     call $332F
32f9: 24           inc  h
32fa: 10 f7        djnz $32F3
32fc: e1           pop  hl
32fd: c9           ret
32fe: 00           nop
32ff: dd e5        push ix
3301: fd e5        push iy
3303: e5           push hl
3304: d5           push de
3305: c5           push bc
3306: 50           ld   d,b
3307: 59           ld   e,c
3308: 0e 3a        ld   c,$3A
330a: 06 02        ld   b,$02
330c: cd 5a f0     call $F05A
330f: c1           pop  bc
3310: d1           pop  de
3311: e1           pop  hl
3312: fd e1        pop  iy
3314: dd e1        pop  ix
3316: c9           ret
3317: d5           push de
3318: 1e 29        ld   e,$29
331a: cd 1e 34     call $341E
331d: d1           pop  de
331e: c9           ret
331f: d5           push de
3320: 1e 28        ld   e,$28
3322: cd 1e 34     call $341E
3325: d1           pop  de
3326: c9           ret
3327: d5           push de
3328: 1e 6a        ld   e,$6A
332a: cd 1e 34     call $341E
332d: d1           pop  de
332e: c9           ret
332f: d5           push de
3330: 1e 6b        ld   e,$6B
3332: cd 1e 34     call $341E
3335: d1           pop  de
3336: c9           ret
3337: d5           push de
3338: 1e 6c        ld   e,$6C
333a: cd 1e 34     call $341E
333d: d1           pop  de
333e: c9           ret
333f: d5           push de
3340: 1e 6d        ld   e,$6D
3342: cd 1e 34     call $341E
3345: d1           pop  de
3346: c9           ret
3347: d5           push de
3348: 1e 5e        ld   e,$5E
334a: cd 1e 34     call $341E
334d: d1           pop  de
334e: c9           ret
334f: d5           push de
3350: 1e 71        ld   e,$71
3352: cd 1e 34     call $341E
3355: d1           pop  de
3356: c9           ret
3357: d5           push de
3358: 1e 5f        ld   e,$5F
335a: cd 1e 34     call $341E
335d: d1           pop  de
335e: c9           ret
335f: 18 ee        jr   $334F
3361: cd 9e 33     call $339E
3364: 1b           dec  de
3365: 58           ld   e,b
3366: 45           ld   b,l
3367: 00           nop
3368: c9           ret
3369: cd 9e 33     call $339E
336c: 1b           dec  de
336d: 58           ld   e,b
336e: 46           ld   b,(hl)
336f: 00           nop
3370: c9           ret
3371: f5           push af
3372: 3e 1a        ld   a,$1A
3374: cd eb 33     call $33EB
3377: f1           pop  af
3378: c9           ret
3379: f5           push af
337a: 3e 08        ld   a,$08
337c: cd eb 33     call $33EB
337f: f1           pop  af
3380: c9           ret
3381: f5           push af
3382: 3e 20        ld   a,$20
3384: cd eb 33     call $33EB
3387: f1           pop  af
3388: c9           ret
3389: f5           push af
338a: 3e 0d        ld   a,$0D
338c: cd eb 33     call $33EB
338f: 3e 0a        ld   a,$0A
3391: cd eb 33     call $33EB
3394: f1           pop  af
3395: c9           ret
3396: f5           push af
3397: 3e 07        ld   a,$07
3399: cd eb 33     call $33EB
339c: f1           pop  af
339d: c9           ret
339e: e3           ex   (sp),hl
339f: f5           push af
33a0: c5           push bc
33a1: d5           push de
33a2: dd e5        push ix
33a4: fd e5        push iy
33a6: 7e           ld   a,(hl)
33a7: 23           inc  hl
33a8: a7           and  a
33a9: 28 07        jr   z,$33B2
33ab: e5           push hl
33ac: cd 00 34     call $3400
33af: e1           pop  hl
33b0: 18 f4        jr   $33A6
33b2: fd e1        pop  iy
33b4: dd e1        pop  ix
33b6: d1           pop  de
33b7: c1           pop  bc
33b8: f1           pop  af
33b9: e3           ex   (sp),hl
33ba: c9           ret
33bb: cd c1 33     call $33C1
33be: 28 fb        jr   z,$33BB
33c0: c9           ret
33c1: dd e5        push ix
33c3: fd e5        push iy
33c5: e5           push hl
33c6: d5           push de
33c7: c5           push bc
33c8: 1e ff        ld   e,$FF
33ca: 0e 06        ld   c,$06
33cc: cd 05 00     call $0005
33cf: a7           and  a
33d0: c1           pop  bc
33d1: d1           pop  de
33d2: e1           pop  hl
33d3: fd e1        pop  iy
33d5: dd e1        pop  ix
33d7: c9           ret
33d8: dd e5        push ix
33da: fd e5        push iy
33dc: e5           push hl
33dd: d5           push de
33de: c5           push bc
33df: cd 06 f0     call $F006
33e2: a7           and  a
33e3: c1           pop  bc
33e4: d1           pop  de
33e5: e1           pop  hl
33e6: fd e1        pop  iy
33e8: dd e1        pop  ix
33ea: c9           ret
33eb: dd e5        push ix
33ed: fd e5        push iy
33ef: e5           push hl
33f0: d5           push de
33f1: c5           push bc
33f2: f5           push af
33f3: 4f           ld   c,a
33f4: cd 0c f0     call $F00C
33f7: f1           pop  af
33f8: c1           pop  bc
33f9: d1           pop  de
33fa: e1           pop  hl
33fb: fd e1        pop  iy
33fd: dd e1        pop  ix
33ff: c9           ret
3400: 4f           ld   c,a
3401: c3 0c f0     jp   $F00C
3404: dd e5        push ix
3406: fd e5        push iy
3408: e5           push hl
3409: d5           push de
340a: c5           push bc
340b: f5           push af
340c: 5f           ld   e,a
340d: 50           ld   d,b
340e: 0e 3a        ld   c,$3A
3410: 06 01        ld   b,$01
3412: cd 5a f0     call $F05A
3415: f1           pop  af
3416: c1           pop  bc
3417: d1           pop  de
3418: e1           pop  hl
3419: fd e1        pop  iy
341b: dd e1        pop  ix
341d: c9           ret
341e: dd e5        push ix
3420: fd e5        push iy
3422: e5           push hl
3423: c5           push bc
3424: f5           push af
3425: d5           push de
3426: 0e 1b        ld   c,$1B
3428: cd 0c f0     call $F00C
342b: c1           pop  bc
342c: c5           push bc
342d: cd 0c f0     call $F00C
3430: d1           pop  de
3431: f1           pop  af
3432: c1           pop  bc
3433: e1           pop  hl
3434: fd e1        pop  iy
3436: dd e1        pop  ix
3438: c9           ret
3439: c3 00 00     jp   $0000
343c: c3 3f 34     jp   $343F
343f: cd 82 39     call $3982
3442: e1           pop  hl
3443: 22 54 34     ld   ($3454),hl
3446: cd 88 39     call $3988
3449: 2a 54 34     ld   hl,($3454)
344c: e5           push hl
344d: cd 87 34     call $3487
3450: cd 2b 2b     call $2B2B
3453: c9           ret
3454: 00           nop
3455: 00           nop
3456: 0e 06        ld   c,$06
3458: 1e ff        ld   e,$FF
345a: c3 05 00     jp   $0005
345d: cd 56 34     call $3456
3460: b7           or   a
3461: 20 fa        jr   nz,$345D
3463: 1e 1b        ld   e,$1B
3465: 0e 06        ld   c,$06
3467: cd 05 00     call $0005
346a: 1e 3f        ld   e,$3F
346c: 0e 06        ld   c,$06
346e: c3 05 00     jp   $0005
3471: cd 5d 34     call $345D
3474: cd 56 34     call $3456
3477: cd 56 34     call $3456
347a: d6 20        sub  $20
347c: f5           push af
347d: cd 56 34     call $3456
3480: f1           pop  af
3481: 4f           ld   c,a
3482: 06 00        ld   b,$00
3484: e1           pop  hl
3485: c5           push bc
3486: e9           jp   (hl)
3487: cd 5d 34     call $345D
348a: cd 56 34     call $3456
348d: d6 20        sub  $20
348f: f5           push af
3490: cd 56 34     call $3456
3493: c3 7d 34     jp   $347D
3496: 0e 06        ld   c,$06
3498: 1e ff        ld   e,$FF
349a: cd 05 00     call $0005
349d: b7           or   a
349e: 20 f6        jr   nz,$3496
34a0: c9           ret
34a1: 00           nop
34a2: 00           nop
34a3: 00           nop
34a4: 00           nop
34a5: c1           pop  bc
34a6: e1           pop  hl
34a7: 22 a1 34     ld   ($34A1),hl
34aa: e1           pop  hl
34ab: 22 a3 34     ld   ($34A3),hl
34ae: c5           push bc
34af: cd ca 34     call $34CA
34b2: cd aa 35     call $35AA
34b5: c1           pop  bc
34b6: 79           ld   a,c
34b7: ca af 34     jp   z,$34AF
34ba: 2a a3 34     ld   hl,($34A3)
34bd: 77           ld   (hl),a
34be: 2a a1 34     ld   hl,($34A1)
34c1: 4e           ld   c,(hl)
34c2: 23           inc  hl
34c3: be           cp   (hl)
34c4: c8           ret  z
34c5: 0d           dec  c
34c6: 20 fa        jr   nz,$34C2
34c8: 18 e5        jr   $34AF
34ca: 2a de 34     ld   hl,($34DE)
34cd: 23           inc  hl
34ce: 22 de 34     ld   ($34DE),hl
34d1: 0e 06        ld   c,$06
34d3: 1e ff        ld   e,$FF
34d5: cd 05 00     call $0005
34d8: e1           pop  hl
34d9: 4f           ld   c,a
34da: 06 00        ld   b,$00
34dc: c5           push bc
34dd: e9           jp   (hl)
34de: 00           nop
34df: 00           nop
34e0: ed 5b de 34  ld   de,($34DE)
34e4: 19           add  hl,de
34e5: eb           ex   de,hl
34e6: cb 13        rl   e
34e8: cb 12        rl   d
34ea: 10 fa        djnz $34E6
34ec: 06 ff        ld   b,$FF
34ee: ed 5f        ld   a,r
34f0: 4f           ld   c,a
34f1: ab           xor  e
34f2: 5f           ld   e,a
34f3: ed 5f        ld   a,r
34f5: b9           cp   c
34f6: 28 f6        jr   z,$34EE
34f8: aa           xor  d
34f9: 57           ld   d,a
34fa: 10 f2        djnz $34EE
34fc: ed 53 de 34  ld   ($34DE),de
3500: e1           pop  hl
3501: d5           push de
3502: e9           jp   (hl)
3503: 00           nop
3504: 00           nop
3505: e1           pop  hl
3506: 22 03 35     ld   ($3503),hl
3509: cd 14 35     call $3514
350c: cd 57 2c     call $2C57
350f: 2a 03 35     ld   hl,($3503)
3512: e9           jp   (hl)
3513: 00           nop
3514: d1           pop  de
3515: e1           pop  hl
3516: c1           pop  bc
3517: d5           push de
3518: 79           ld   a,c
3519: 96           sub  (hl)
351a: cb 3f        srl  a
351c: 47           ld   b,a
351d: 79           ld   a,c
351e: 90           sub  b
351f: 32 13 35     ld   ($3513),a
3522: e5           push hl
3523: 21 81 38     ld   hl,$3881
3526: e5           push hl
3527: cd f4 3c     call $3CF4
352a: 2a 13 35     ld   hl,($3513)
352d: 26 00        ld   h,$00
352f: e5           push hl
3530: 21 ff ff     ld   hl,$FFFF
3533: e5           push hl
3534: cd 6b 3d     call $3D6B
3537: c9           ret
3538: c3 00 00     jp   $0000
353b: c3 6f 35     jp   $356F
353e: c3 41 35     jp   $3541
3541: cd 82 39     call $3982
3544: e1           pop  hl
3545: 7d           ld   a,l
3546: 32 a8 35     ld   ($35A8),a
3549: cd 88 39     call $3988
354c: 2a a4 35     ld   hl,($35A4)
354f: e5           push hl
3550: cd ff 39     call $39FF
3553: 2a a4 35     ld   hl,($35A4)
3556: e5           push hl
3557: cd 0d 3a     call $3A0D
355a: 3a a8 35     ld   a,($35A8)
355d: 26 00        ld   h,$00
355f: 6f           ld   l,a
3560: e5           push hl
3561: cd 53 3a     call $3A53
3564: cd fa 39     call $39FA
3567: 21 51 00     ld   hl,$0051
356a: e5           push hl
356b: cd 1a 3d     call $3D1A
356e: c9           ret
356f: cd 82 39     call $3982
3572: e1           pop  hl
3573: 22 a4 35     ld   ($35A4),hl
3576: e1           pop  hl
3577: 22 a6 35     ld   ($35A6),hl
357a: cd 88 39     call $3988
357d: 2a a4 35     ld   hl,($35A4)
3580: e5           push hl
3581: cd 85 35     call $3585
3584: 00           nop
3585: 21 51 00     ld   hl,$0051
3588: e5           push hl
3589: cd 1a 3d     call $3D1A
358c: 21 3f 35     ld   hl,$353F
358f: 5e           ld   e,(hl)
3590: 23           inc  hl
3591: 56           ld   d,(hl)
3592: d5           push de
3593: cd 07 3d     call $3D07
3596: 2a a6 35     ld   hl,($35A6)
3599: e5           push hl
359a: cd fa 3c     call $3CFA
359d: cd 6d 3b     call $3B6D
35a0: cd 0d 3d     call $3D0D
35a3: c9           ret
35a4: 00           nop
35a5: 00           nop
35a6: 00           nop
35a7: 00           nop
35a8: 00           nop
35a9: 00           nop
35aa: e1           pop  hl
35ab: c1           pop  bc
35ac: 79           ld   a,c
35ad: fe 61        cp   $61
35af: fa b9 35     jp   m,$35B9
35b2: fe 7b        cp   $7B
35b4: f2 b9 35     jp   p,$35B9
35b7: e6 df        and  $DF
35b9: 4f           ld   c,a
35ba: c5           push bc
35bb: e9           jp   (hl)
35bc: 0e 06        ld   c,$06
35be: c3 05 00     jp   $0005
35c1: d5           push de
35c2: 1e 1b        ld   e,$1B
35c4: cd bc 35     call $35BC
35c7: d1           pop  de
35c8: c3 bc 35     jp   $35BC
35cb: 1e 1a        ld   e,$1A
35cd: c3 bc 35     jp   $35BC
35d0: 1e 59        ld   e,$59
35d2: c3 c1 35     jp   $35C1
35d5: 1e 54        ld   e,$54
35d7: c3 c1 35     jp   $35C1
35da: 1e 58        ld   e,$58
35dc: cd c1 35     call $35C1
35df: 1e 45        ld   e,$45
35e1: c3 bc 35     jp   $35BC
35e4: 1e 58        ld   e,$58
35e6: cd c1 35     call $35C1
35e9: 1e 46        ld   e,$46
35eb: c3 bc 35     jp   $35BC
35ee: 1e 28        ld   e,$28
35f0: c3 c1 35     jp   $35C1
35f3: 1e 29        ld   e,$29
35f5: c3 c1 35     jp   $35C1
35f8: 1e 6a        ld   e,$6A
35fa: c3 c1 35     jp   $35C1
35fd: 1e 6b        ld   e,$6B
35ff: c3 c1 35     jp   $35C1
3602: e1           pop  hl
3603: c1           pop  bc
3604: d1           pop  de
3605: 97           sub  a
3606: b9           cp   c
3607: 28 07        jr   z,$3610
3609: 41           ld   b,c
360a: cb 3a        srl  d
360c: cb 1b        rr   e
360e: 10 fa        djnz $360A
3610: d5           push de
3611: e9           jp   (hl)
3612: e1           pop  hl
3613: c1           pop  bc
3614: d1           pop  de
3615: 97           sub  a
3616: b9           cp   c
3617: 28 f7        jr   z,$3610
3619: 41           ld   b,c
361a: cb 23        sla  e
361c: cb 12        rl   d
361e: 10 fa        djnz $361A
3620: 18 ee        jr   $3610
3622: c3 00 00     jp   $0000
3625: c3 28 36     jp   $3628
3628: cd 82 39     call $3982
362b: e1           pop  hl
362c: 22 d3 36     ld   ($36D3),hl
362f: e1           pop  hl
3630: 22 d5 36     ld   ($36D5),hl
3633: e1           pop  hl
3634: 22 d7 36     ld   ($36D7),hl
3637: e1           pop  hl
3638: 22 d9 36     ld   ($36D9),hl
363b: cd 88 39     call $3988
363e: 21 01 00     ld   hl,$0001
3641: e5           push hl
3642: 2a d5 36     ld   hl,($36D5)
3645: eb           ex   de,hl
3646: 2a d7 36     ld   hl,($36D7)
3649: 7b           ld   a,e
364a: 95           sub  l
364b: 6f           ld   l,a
364c: 7a           ld   a,d
364d: 9c           sbc  a,h
364e: 67           ld   h,a
364f: e5           push hl
3650: d1           pop  de
3651: e1           pop  hl
3652: 2b           dec  hl
3653: e5           push hl
3654: d5           push de
3655: 22 db 36     ld   ($36DB),hl
3658: d1           pop  de
3659: e1           pop  hl
365a: 23           inc  hl
365b: e5           push hl
365c: d5           push de
365d: cd 51 39     call $3951
3660: 22 dd 36     ld   ($36DD),hl
3663: 2a db 36     ld   hl,($36DB)
3666: 23           inc  hl
3667: 22 db 36     ld   ($36DB),hl
366a: 2a dd 36     ld   hl,($36DD)
366d: 2b           dec  hl
366e: 22 dd 36     ld   ($36DD),hl
3671: 7c           ld   a,h
3672: b5           or   l
3673: ca 88 36     jp   z,$3688
3676: 21 20 00     ld   hl,$0020
3679: e5           push hl
367a: 21 ff ff     ld   hl,$FFFF
367d: e5           push hl
367e: 21 ff ff     ld   hl,$FFFF
3681: e5           push hl
3682: cd aa 3e     call $3EAA
3685: c3 63 36     jp   $3663
3688: 21 01 00     ld   hl,$0001
368b: e5           push hl
368c: 2a d7 36     ld   hl,($36D7)
368f: e5           push hl
3690: d1           pop  de
3691: e1           pop  hl
3692: 2b           dec  hl
3693: e5           push hl
3694: d5           push de
3695: 22 db 36     ld   ($36DB),hl
3698: d1           pop  de
3699: e1           pop  hl
369a: 23           inc  hl
369b: e5           push hl
369c: d5           push de
369d: cd 51 39     call $3951
36a0: 22 df 36     ld   ($36DF),hl
36a3: 2a db 36     ld   hl,($36DB)
36a6: 23           inc  hl
36a7: 22 db 36     ld   ($36DB),hl
36aa: 2a df 36     ld   hl,($36DF)
36ad: 2b           dec  hl
36ae: 22 df 36     ld   ($36DF),hl
36b1: 7c           ld   a,h
36b2: b5           or   l
36b3: ca d2 36     jp   z,$36D2
36b6: 2a d9 36     ld   hl,($36D9)
36b9: e5           push hl
36ba: 2a db 36     ld   hl,($36DB)
36bd: 2b           dec  hl
36be: d1           pop  de
36bf: 19           add  hl,de
36c0: 16 00        ld   d,$00
36c2: 5e           ld   e,(hl)
36c3: d5           push de
36c4: 21 ff ff     ld   hl,$FFFF
36c7: e5           push hl
36c8: 21 ff ff     ld   hl,$FFFF
36cb: e5           push hl
36cc: cd aa 3e     call $3EAA
36cf: c3 a3 36     jp   $36A3
36d2: c9           ret
36d3: 00           nop
36d4: 00           nop
36d5: 00           nop
36d6: 00           nop
36d7: 00           nop
36d8: 00           nop
36d9: 00           nop
36da: 00           nop
36db: 00           nop
36dc: 00           nop
36dd: 00           nop
36de: 00           nop
36df: 00           nop
36e0: 00           nop
36e1: e1           pop  hl
36e2: c1           pop  bc
36e3: d1           pop  de
36e4: e3           ex   (sp),hl
36e5: c3 ed 36     jp   $36ED
36e8: e1           pop  hl
36e9: c1           pop  bc
36ea: d1           pop  de
36eb: e3           ex   (sp),hl
36ec: eb           ex   de,hl
36ed: 78           ld   a,b
36ee: b1           or   c
36ef: ca f4 36     jp   z,$36F4
36f2: ed b0        ldir
36f4: eb           ex   de,hl
36f5: c9           ret
36f6: e1           pop  hl
36f7: c1           pop  bc
36f8: d1           pop  de
36f9: e3           ex   (sp),hl
36fa: eb           ex   de,hl
36fb: c3 02 37     jp   $3702
36fe: e1           pop  hl
36ff: c1           pop  bc
3700: d1           pop  de
3701: e3           ex   (sp),hl
3702: 78           ld   a,b
3703: b1           or   c
3704: ca 0e 37     jp   z,$370E
3707: 09           add  hl,bc
3708: 2b           dec  hl
3709: eb           ex   de,hl
370a: 09           add  hl,bc
370b: 2b           dec  hl
370c: ed b8        lddr
370e: eb           ex   de,hl
370f: c9           ret
3710: e1           pop  hl
3711: c1           pop  bc
3712: d1           pop  de
3713: e3           ex   (sp),hl
3714: 7b           ld   a,e
3715: b2           or   d
3716: c8           ret  z
3717: 71           ld   (hl),c
3718: 23           inc  hl
3719: 1b           dec  de
371a: 7b           ld   a,e
371b: b2           or   d
371c: c2 17 37     jp   nz,$3717
371f: c9           ret
3720: 2a 03 01     ld   hl,($0103)
3723: 7d           ld   a,l
3724: b4           or   h
3725: ca 3b 37     jp   z,$373B
3728: 06 10        ld   b,$10
372a: 5e           ld   e,(hl)
372b: 23           inc  hl
372c: 56           ld   d,(hl)
372d: 23           inc  hl
372e: 1b           dec  de
372f: 7b           ld   a,e
3730: b2           or   d
3731: 13           inc  de
3732: ca 37 37     jp   z,$3737
3735: af           xor  a
3736: 12           ld   (de),a
3737: 05           dec  b
3738: c2 2a 37     jp   nz,$372A
373b: 21 4d 39     ld   hl,$394D
373e: 36 01        ld   (hl),$01
3740: 23           inc  hl
3741: 36 00        ld   (hl),$00
3743: 23           inc  hl
3744: 36 00        ld   (hl),$00
3746: 23           inc  hl
3747: 36 00        ld   (hl),$00
3749: 21 4b 39     ld   hl,$394B
374c: 36 01        ld   (hl),$01
374e: 23           inc  hl
374f: 36 00        ld   (hl),$00
3751: 21 12 3f     ld   hl,$3F12
3754: 23           inc  hl
3755: 23           inc  hl
3756: 11 00 00     ld   de,$0000
3759: 19           add  hl,de
375a: 22 12 3f     ld   ($3F12),hl
375d: 21 80 ff     ld   hl,$FF80
3760: 39           add  hl,sp
3761: 22 0c 3f     ld   ($3F0C),hl
3764: 22 06 3f     ld   ($3F06),hl
3767: 3e 02        ld   a,$02
3769: 32 48 39     ld   ($3948),a
376c: 21 30 30     ld   hl,$3030
376f: 22 49 39     ld   ($3949),hl
3772: 21 be 37     ld   hl,$37BE
3775: 01 86 01     ld   bc,$0186
3778: 36 00        ld   (hl),$00
377a: 23           inc  hl
377b: 0b           dec  bc
377c: 78           ld   a,b
377d: b1           or   c
377e: c2 78 37     jp   nz,$3778
3781: 21 01 00     ld   hl,$0001
3784: 22 f7 37     ld   ($37F7),hl
3787: 22 f2 37     ld   ($37F2),hl
378a: 22 ba 38     ld   ($38BA),hl
378d: 22 b5 38     ld   ($38B5),hl
3790: 3e 04        ld   a,$04
3792: 32 f6 37     ld   ($37F6),a
3795: 32 b9 38     ld   ($38B9),a
3798: 3e 01        ld   a,$01
379a: 32 fe 37     ld   ($37FE),a
379d: 32 c1 38     ld   ($38C1),a
37a0: 3e 20        ld   a,$20
37a2: 32 80 38     ld   ($3880),a
37a5: 21 80 38     ld   hl,$3880
37a8: 22 fb 37     ld   ($37FB),hl
37ab: 21 43 39     ld   hl,$3943
37ae: 22 be 38     ld   ($38BE),hl
37b1: 21 4b 2c     ld   hl,$2C4B
37b4: 22 44 39     ld   ($3944),hl
37b7: 21 ed 2a     ld   hl,$2AED
37ba: 22 46 39     ld   ($3946),hl
37bd: c9           ret
37be: 00           nop
37bf: 00           nop
37c0: 00           nop
37c1: 00           nop
37c2: 00           nop
37c3: 00           nop
37c4: 00           nop
37c5: 00           nop
37c6: 00           nop
37c7: 00           nop
37c8: 00           nop
37c9: 00           nop
37ca: 00           nop
37cb: 00           nop
37cc: 00           nop
37cd: 00           nop
37ce: 00           nop
37cf: 00           nop
37d0: 00           nop
37d1: 00           nop
37d2: 00           nop
37d3: 00           nop
37d4: 00           nop
37d5: 00           nop
37d6: 00           nop
37d7: 00           nop
37d8: 00           nop
37d9: 00           nop
37da: 00           nop
37db: 00           nop
37dc: 00           nop
37dd: 00           nop
37de: 00           nop
37df: 00           nop
37e0: 00           nop
37e1: 00           nop
37e2: 00           nop
37e3: 00           nop
37e4: 00           nop
37e5: 00           nop
37e6: 00           nop
37e7: 00           nop
37e8: 00           nop
37e9: 00           nop
37ea: 00           nop
37eb: 00           nop
37ec: 00           nop
37ed: 00           nop
37ee: 00           nop
37ef: 00           nop
37f0: 00           nop
37f1: 00           nop
37f2: 00           nop
37f3: 00           nop
37f4: 00           nop
37f5: 00           nop
37f6: 00           nop
37f7: 00           nop
37f8: 00           nop
37f9: 00           nop
37fa: 00           nop
37fb: 00           nop
37fc: 00           nop
37fd: 00           nop
37fe: 00           nop
37ff: 00           nop
3800: 00           nop
3801: 00           nop
3802: 00           nop
3803: 00           nop
3804: 00           nop
3805: 00           nop
3806: 00           nop
3807: 00           nop
3808: 00           nop
3809: 00           nop
380a: 00           nop
380b: 00           nop
380c: 00           nop
380d: 00           nop
380e: 00           nop
380f: 00           nop
3810: 00           nop
3811: 00           nop
3812: 00           nop
3813: 00           nop
3814: 00           nop
3815: 00           nop
3816: 00           nop
3817: 00           nop
3818: 00           nop
3819: 00           nop
381a: 00           nop
381b: 00           nop
381c: 00           nop
381d: 00           nop
381e: 00           nop
381f: 00           nop
3820: 00           nop
3821: 00           nop
3822: 00           nop
3823: 00           nop
3824: 00           nop
3825: 00           nop
3826: 00           nop
3827: 00           nop
3828: 00           nop
3829: 00           nop
382a: 00           nop
382b: 00           nop
382c: 00           nop
382d: 00           nop
382e: 00           nop
382f: 00           nop
3830: 00           nop
3831: 00           nop
3832: 00           nop
3833: 00           nop
3834: 00           nop
3835: 00           nop
3836: 00           nop
3837: 00           nop
3838: 00           nop
3839: 00           nop
383a: 00           nop
383b: 00           nop
383c: 00           nop
383d: 00           nop
383e: 00           nop
383f: 00           nop
3840: 00           nop
3841: 00           nop
3842: 00           nop
3843: 00           nop
3844: 00           nop
3845: 00           nop
3846: 00           nop
3847: 00           nop
3848: 00           nop
3849: 00           nop
384a: 00           nop
384b: 00           nop
384c: 00           nop
384d: 00           nop
384e: 00           nop
384f: 00           nop
3850: 00           nop
3851: 00           nop
3852: 00           nop
3853: 00           nop
3854: 00           nop
3855: 00           nop
3856: 00           nop
3857: 00           nop
3858: 00           nop
3859: 00           nop
385a: 00           nop
385b: 00           nop
385c: 00           nop
385d: 00           nop
385e: 00           nop
385f: 00           nop
3860: 00           nop
3861: 00           nop
3862: 00           nop
3863: 00           nop
3864: 00           nop
3865: 00           nop
3866: 00           nop
3867: 00           nop
3868: 00           nop
3869: 00           nop
386a: 00           nop
386b: 00           nop
386c: 00           nop
386d: 00           nop
386e: 00           nop
386f: 00           nop
3870: 00           nop
3871: 00           nop
3872: 00           nop
3873: 00           nop
3874: 00           nop
3875: 00           nop
3876: 00           nop
3877: 00           nop
3878: 00           nop
3879: 00           nop
387a: 00           nop
387b: 00           nop
387c: 00           nop
387d: 00           nop
387e: 00           nop
387f: 00           nop
3880: 00           nop
3881: 00           nop
3882: 00           nop
3883: 00           nop
3884: 00           nop
3885: 00           nop
3886: 00           nop
3887: 00           nop
3888: 00           nop
3889: 00           nop
388a: 00           nop
388b: 00           nop
388c: 00           nop
388d: 00           nop
388e: 00           nop
388f: 00           nop
3890: 00           nop
3891: 00           nop
3892: 00           nop
3893: 00           nop
3894: 00           nop
3895: 00           nop
3896: 00           nop
3897: 00           nop
3898: 00           nop
3899: 00           nop
389a: 00           nop
389b: 00           nop
389c: 00           nop
389d: 00           nop
389e: 00           nop
389f: 00           nop
38a0: 00           nop
38a1: 00           nop
38a2: 00           nop
38a3: 00           nop
38a4: 00           nop
38a5: 00           nop
38a6: 00           nop
38a7: 00           nop
38a8: 00           nop
38a9: 00           nop
38aa: 00           nop
38ab: 00           nop
38ac: 00           nop
38ad: 00           nop
38ae: 00           nop
38af: 00           nop
38b0: 00           nop
38b1: 00           nop
38b2: 00           nop
38b3: 00           nop
38b4: 00           nop
38b5: 00           nop
38b6: 00           nop
38b7: 00           nop
38b8: 00           nop
38b9: 00           nop
38ba: 00           nop
38bb: 00           nop
38bc: 00           nop
38bd: 00           nop
38be: 00           nop
38bf: 00           nop
38c0: 00           nop
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
38cb: 00           nop
38cc: 00           nop
38cd: 00           nop
38ce: 00           nop
38cf: 00           nop
38d0: 00           nop
38d1: 00           nop
38d2: 00           nop
38d3: 00           nop
38d4: 00           nop
38d5: 00           nop
38d6: 00           nop
38d7: 00           nop
38d8: 00           nop
38d9: 00           nop
38da: 00           nop
38db: 00           nop
38dc: 00           nop
38dd: 00           nop
38de: 00           nop
38df: 00           nop
38e0: 00           nop
38e1: 00           nop
38e2: 00           nop
38e3: 00           nop
38e4: 00           nop
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
3951: e1           pop  hl
3952: 22 7d 39     ld   ($397D),hl
3955: d1           pop  de
3956: e1           pop  hl
3957: e5           push hl
3958: d5           push de
3959: e5           push hl
395a: d5           push de
395b: cd a4 3c     call $3CA4
395e: f1           pop  af
395f: da 72 39     jp   c,$3972
3962: d1           pop  de
3963: e1           pop  hl
3964: 7b           ld   a,e
3965: 95           sub  l
3966: 6f           ld   l,a
3967: 7a           ld   a,d
3968: 9c           sbc  a,h
3969: 67           ld   h,a
396a: 23           inc  hl
396b: 23           inc  hl
396c: e5           push hl
396d: 2a 7d 39     ld   hl,($397D)
3970: e3           ex   (sp),hl
3971: c9           ret
3972: e1           pop  hl
3973: d1           pop  de
3974: 21 01 00     ld   hl,$0001
3977: e5           push hl
3978: 2a 7d 39     ld   hl,($397D)
397b: e3           ex   (sp),hl
397c: c9           ret
397d: 00           nop
397e: 00           nop
397f: c3 00 00     jp   $0000
3982: e1           pop  hl
3983: e3           ex   (sp),hl
3984: 22 8d 39     ld   ($398D),hl
3987: c9           ret
3988: 2a 8d 39     ld   hl,($398D)
398b: e3           ex   (sp),hl
398c: e9           jp   (hl)
398d: 00           nop
398e: 00           nop
398f: d1           pop  de
3990: e1           pop  hl
3991: 22 f8 39     ld   ($39F8),hl
3994: eb           ex   de,hl
3995: 5e           ld   e,(hl)
3996: 23           inc  hl
3997: 56           ld   d,(hl)
3998: 23           inc  hl
3999: eb           ex   de,hl
399a: 22 f6 39     ld   ($39F6),hl
399d: eb           ex   de,hl
399e: 5e           ld   e,(hl)
399f: 23           inc  hl
39a0: 56           ld   d,(hl)
39a1: 23           inc  hl
39a2: 22 f4 39     ld   ($39F4),hl
39a5: eb           ex   de,hl
39a6: 22 f2 39     ld   ($39F2),hl
39a9: 2a f8 39     ld   hl,($39F8)
39ac: e5           push hl
39ad: 2a f6 39     ld   hl,($39F6)
39b0: e5           push hl
39b1: cd d9 3c     call $3CD9
39b4: f1           pop  af
39b5: da e3 39     jp   c,$39E3
39b8: 2a f8 39     ld   hl,($39F8)
39bb: e5           push hl
39bc: 2a f2 39     ld   hl,($39F2)
39bf: eb           ex   de,hl
39c0: 2a f6 39     ld   hl,($39F6)
39c3: 19           add  hl,de
39c4: e5           push hl
39c5: cd a4 3c     call $3CA4
39c8: f1           pop  af
39c9: da e3 39     jp   c,$39E3
39cc: 2a f8 39     ld   hl,($39F8)
39cf: eb           ex   de,hl
39d0: 2a f6 39     ld   hl,($39F6)
39d3: 7b           ld   a,e
39d4: 95           sub  l
39d5: 5f           ld   e,a
39d6: 7a           ld   a,d
39d7: 9c           sbc  a,h
39d8: 57           ld   d,a
39d9: 2a f4 39     ld   hl,($39F4)
39dc: 19           add  hl,de
39dd: 19           add  hl,de
39de: 5e           ld   e,(hl)
39df: 23           inc  hl
39e0: 56           ld   d,(hl)
39e1: eb           ex   de,hl
39e2: e9           jp   (hl)
39e3: 2a f2 39     ld   hl,($39F2)
39e6: 23           inc  hl
39e7: 29           add  hl,hl
39e8: eb           ex   de,hl
39e9: 2a f4 39     ld   hl,($39F4)
39ec: 19           add  hl,de
39ed: 5e           ld   e,(hl)
39ee: 23           inc  hl
39ef: 56           ld   d,(hl)
39f0: eb           ex   de,hl
39f1: e9           jp   (hl)
39f2: 00           nop
39f3: 00           nop
39f4: 00           nop
39f5: 00           nop
39f6: 00           nop
39f7: 00           nop
39f8: 00           nop
39f9: 00           nop
39fa: 21 66 3a     ld   hl,$3A66
39fd: e3           ex   (sp),hl
39fe: e9           jp   (hl)
39ff: 21 67 3a     ld   hl,$3A67
3a02: 22 66 3b     ld   ($3B66),hl
3a05: af           xor  a
3a06: 32 66 3a     ld   ($3A66),a
3a09: 32 65 3d     ld   ($3D65),a
3a0c: c9           ret
3a0d: e1           pop  hl
3a0e: 22 6a 3b     ld   ($3B6A),hl
3a11: d1           pop  de
3a12: 1a           ld   a,(de)
3a13: b7           or   a
3a14: ca 43 3a     jp   z,$3A43
3a17: 32 6c 3b     ld   ($3B6C),a
3a1a: 4f           ld   c,a
3a1b: 3a 66 3a     ld   a,($3A66)
3a1e: 81           add  a,c
3a1f: da 47 3a     jp   c,$3A47
3a22: 06 00        ld   b,$00
3a24: 13           inc  de
3a25: 2a 66 3b     ld   hl,($3B66)
3a28: e5           push hl
3a29: d5           push de
3a2a: c5           push bc
3a2b: cd e8 36     call $36E8
3a2e: 3a 66 3a     ld   a,($3A66)
3a31: 47           ld   b,a
3a32: 3a 6c 3b     ld   a,($3B6C)
3a35: 80           add  a,b
3a36: 32 66 3a     ld   ($3A66),a
3a39: 5f           ld   e,a
3a3a: 16 00        ld   d,$00
3a3c: 21 67 3a     ld   hl,$3A67
3a3f: 19           add  hl,de
3a40: 22 66 3b     ld   ($3B66),hl
3a43: 2a 6a 3b     ld   hl,($3B6A)
3a46: e9           jp   (hl)
3a47: 3e ff        ld   a,$FF
3a49: 91           sub  c
3a4a: 4f           ld   c,a
3a4b: 3e 01        ld   a,$01
3a4d: 32 65 3d     ld   ($3D65),a
3a50: c3 22 3a     jp   $3A22
3a53: d1           pop  de
3a54: c1           pop  bc
3a55: 79           ld   a,c
3a56: 32 69 3b     ld   ($3B69),a
3a59: 3e 01        ld   a,$01
3a5b: 32 68 3b     ld   ($3B68),a
3a5e: 21 68 3b     ld   hl,$3B68
3a61: e5           push hl
3a62: d5           push de
3a63: c3 0d 3a     jp   $3A0D
3a66: 00           nop
3a67: 00           nop
3a68: 00           nop
3a69: 00           nop
3a6a: 00           nop
3a6b: 00           nop
3a6c: 00           nop
3a6d: 00           nop
3a6e: 00           nop
3a6f: 00           nop
3a70: 00           nop
3a71: 00           nop
3a72: 00           nop
3a73: 00           nop
3a74: 00           nop
3a75: 00           nop
3a76: 00           nop
3a77: 00           nop
3a78: 00           nop
3a79: 00           nop
3a7a: 00           nop
3a7b: 00           nop
3a7c: 00           nop
3a7d: 00           nop
3a7e: 00           nop
3a7f: 00           nop
3a80: 00           nop
3a81: 00           nop
3a82: 00           nop
3a83: 00           nop
3a84: 00           nop
3a85: 00           nop
3a86: 00           nop
3a87: 00           nop
3a88: 00           nop
3a89: 00           nop
3a8a: 00           nop
3a8b: 00           nop
3a8c: 00           nop
3a8d: 00           nop
3a8e: 00           nop
3a8f: 00           nop
3a90: 00           nop
3a91: 00           nop
3a92: 00           nop
3a93: 00           nop
3a94: 00           nop
3a95: 00           nop
3a96: 00           nop
3a97: 00           nop
3a98: 00           nop
3a99: 00           nop
3a9a: 00           nop
3a9b: 00           nop
3a9c: 00           nop
3a9d: 00           nop
3a9e: 00           nop
3a9f: 00           nop
3aa0: 00           nop
3aa1: 00           nop
3aa2: 00           nop
3aa3: 00           nop
3aa4: 00           nop
3aa5: 00           nop
3aa6: 00           nop
3aa7: 00           nop
3aa8: 00           nop
3aa9: 00           nop
3aaa: 00           nop
3aab: 00           nop
3aac: 00           nop
3aad: 00           nop
3aae: 00           nop
3aaf: 00           nop
3ab0: 00           nop
3ab1: 00           nop
3ab2: 00           nop
3ab3: 00           nop
3ab4: 00           nop
3ab5: 00           nop
3ab6: 00           nop
3ab7: 00           nop
3ab8: 00           nop
3ab9: 00           nop
3aba: 00           nop
3abb: 00           nop
3abc: 00           nop
3abd: 00           nop
3abe: 00           nop
3abf: 00           nop
3ac0: 00           nop
3ac1: 00           nop
3ac2: 00           nop
3ac3: 00           nop
3ac4: 00           nop
3ac5: 00           nop
3ac6: 00           nop
3ac7: 00           nop
3ac8: 00           nop
3ac9: 00           nop
3aca: 00           nop
3acb: 00           nop
3acc: 00           nop
3acd: 00           nop
3ace: 00           nop
3acf: 00           nop
3ad0: 00           nop
3ad1: 00           nop
3ad2: 00           nop
3ad3: 00           nop
3ad4: 00           nop
3ad5: 00           nop
3ad6: 00           nop
3ad7: 00           nop
3ad8: 00           nop
3ad9: 00           nop
3ada: 00           nop
3adb: 00           nop
3adc: 00           nop
3add: 00           nop
3ade: 00           nop
3adf: 00           nop
3ae0: 00           nop
3ae1: 00           nop
3ae2: 00           nop
3ae3: 00           nop
3ae4: 00           nop
3ae5: 00           nop
3ae6: 00           nop
3ae7: 00           nop
3ae8: 00           nop
3ae9: 00           nop
3aea: 00           nop
3aeb: 00           nop
3aec: 00           nop
3aed: 00           nop
3aee: 00           nop
3aef: 00           nop
3af0: 00           nop
3af1: 00           nop
3af2: 00           nop
3af3: 00           nop
3af4: 00           nop
3af5: 00           nop
3af6: 00           nop
3af7: 00           nop
3af8: 00           nop
3af9: 00           nop
3afa: 00           nop
3afb: 00           nop
3afc: 00           nop
3afd: 00           nop
3afe: 00           nop
3aff: 00           nop
3b00: 00           nop
3b01: 00           nop
3b02: 00           nop
3b03: 00           nop
3b04: 00           nop
3b05: 00           nop
3b06: 00           nop
3b07: 00           nop
3b08: 00           nop
3b09: 00           nop
3b0a: 00           nop
3b0b: 00           nop
3b0c: 00           nop
3b0d: 00           nop
3b0e: 00           nop
3b0f: 00           nop
3b10: 00           nop
3b11: 00           nop
3b12: 00           nop
3b13: 00           nop
3b14: 00           nop
3b15: 00           nop
3b16: 00           nop
3b17: 00           nop
3b18: 00           nop
3b19: 00           nop
3b1a: 00           nop
3b1b: 00           nop
3b1c: 00           nop
3b1d: 00           nop
3b1e: 00           nop
3b1f: 00           nop
3b20: 00           nop
3b21: 00           nop
3b22: 00           nop
3b23: 00           nop
3b24: 00           nop
3b25: 00           nop
3b26: 00           nop
3b27: 00           nop
3b28: 00           nop
3b29: 00           nop
3b2a: 00           nop
3b2b: 00           nop
3b2c: 00           nop
3b2d: 00           nop
3b2e: 00           nop
3b2f: 00           nop
3b30: 00           nop
3b31: 00           nop
3b32: 00           nop
3b33: 00           nop
3b34: 00           nop
3b35: 00           nop
3b36: 00           nop
3b37: 00           nop
3b38: 00           nop
3b39: 00           nop
3b3a: 00           nop
3b3b: 00           nop
3b3c: 00           nop
3b3d: 00           nop
3b3e: 00           nop
3b3f: 00           nop
3b40: 00           nop
3b41: 00           nop
3b42: 00           nop
3b43: 00           nop
3b44: 00           nop
3b45: 00           nop
3b46: 00           nop
3b47: 00           nop
3b48: 00           nop
3b49: 00           nop
3b4a: 00           nop
3b4b: 00           nop
3b4c: 00           nop
3b4d: 00           nop
3b4e: 00           nop
3b4f: 00           nop
3b50: 00           nop
3b51: 00           nop
3b52: 00           nop
3b53: 00           nop
3b54: 00           nop
3b55: 00           nop
3b56: 00           nop
3b57: 00           nop
3b58: 00           nop
3b59: 00           nop
3b5a: 00           nop
3b5b: 00           nop
3b5c: 00           nop
3b5d: 00           nop
3b5e: 00           nop
3b5f: 00           nop
3b60: 00           nop
3b61: 00           nop
3b62: 00           nop
3b63: 00           nop
3b64: 00           nop
3b65: 00           nop
3b66: 00           nop
3b67: 00           nop
3b68: 00           nop
3b69: 00           nop
3b6a: 00           nop
3b6b: 00           nop
3b6c: 00           nop
3b6d: e1           pop  hl
3b6e: d1           pop  de
3b6f: c1           pop  bc
3b70: 41           ld   b,c
3b71: d1           pop  de
3b72: e5           push hl
3b73: cd 00 3c     call $3C00
3b76: 7a           ld   a,d
3b77: e6 80        and  $80
3b79: f2 8f 3b     jp   p,$3B8F
3b7c: d5           push de
3b7d: 1e 2d        ld   e,$2D
3b7f: cd e8 3b     call $3BE8
3b82: d1           pop  de
3b83: 7b           ld   a,e
3b84: 2f           cpl
3b85: 5f           ld   e,a
3b86: 7a           ld   a,d
3b87: 2f           cpl
3b88: 57           ld   d,a
3b89: 13           inc  de
3b8a: 7a           ld   a,d
3b8b: b7           or   a
3b8c: fa c7 3b     jp   m,$3BC7
3b8f: 06 00        ld   b,$00
3b91: c5           push bc
3b92: 01 10 27     ld   bc,$2710
3b95: cd fa 3d     call $3DFA
3b98: c1           pop  bc
3b99: cd db 3b     call $3BDB
3b9c: eb           ex   de,hl
3b9d: c5           push bc
3b9e: 01 e8 03     ld   bc,$03E8
3ba1: cd fa 3d     call $3DFA
3ba4: c1           pop  bc
3ba5: cd db 3b     call $3BDB
3ba8: eb           ex   de,hl
3ba9: c5           push bc
3baa: 01 64 00     ld   bc,$0064
3bad: cd fa 3d     call $3DFA
3bb0: c1           pop  bc
3bb1: cd db 3b     call $3BDB
3bb4: eb           ex   de,hl
3bb5: c5           push bc
3bb6: 01 0a 00     ld   bc,$000A
3bb9: cd fa 3d     call $3DFA
3bbc: c1           pop  bc
3bbd: cd db 3b     call $3BDB
3bc0: eb           ex   de,hl
3bc1: 06 01        ld   b,$01
3bc3: cd db 3b     call $3BDB
3bc6: c9           ret
3bc7: 21 d6 3b     ld   hl,$3BD6
3bca: e5           push hl
3bcb: 21 05 00     ld   hl,$0005
3bce: e5           push hl
3bcf: cd fa 3c     call $3CFA
3bd2: cd 25 36     call $3625
3bd5: c9           ret
3bd6: 33           inc  sp
3bd7: 32 37 36     ld   ($3637),a
3bda: 38 e5        jr   c,$3BC1
3bdc: 3e 30        ld   a,$30
3bde: b3           or   e
3bdf: 5f           ld   e,a
3be0: fe 30        cp   $30
3be2: ca f9 3b     jp   z,$3BF9
3be5: 06 01        ld   b,$01
3be7: e1           pop  hl
3be8: e5           push hl
3be9: c5           push bc
3bea: d5           push de
3beb: 21 ff ff     ld   hl,$FFFF
3bee: e5           push hl
3bef: e5           push hl
3bf0: cd aa 3e     call $3EAA
3bf3: c3 f6 3b     jp   $3BF6
3bf6: c1           pop  bc
3bf7: e1           pop  hl
3bf8: c9           ret
3bf9: 78           ld   a,b
3bfa: b7           or   a
3bfb: e1           pop  hl
3bfc: c8           ret  z
3bfd: c3 e8 3b     jp   $3BE8
3c00: 78           ld   a,b
3c01: fe ff        cp   $FF
3c03: c8           ret  z
3c04: d5           push de
3c05: 7a           ld   a,d
3c06: b7           or   a
3c07: f2 23 3c     jp   p,$3C23
3c0a: fe 80        cp   $80
3c0c: c2 1b 3c     jp   nz,$3C1B
3c0f: 7b           ld   a,e
3c10: b7           or   a
3c11: c2 1b 3c     jp   nz,$3C1B
3c14: 78           ld   a,b
3c15: d6 06        sub  $06
3c17: 47           ld   b,a
3c18: c3 31 3c     jp   $3C31
3c1b: 05           dec  b
3c1c: 7a           ld   a,d
3c1d: 2f           cpl
3c1e: 57           ld   d,a
3c1f: 7b           ld   a,e
3c20: 2f           cpl
3c21: 5f           ld   e,a
3c22: 13           inc  de
3c23: c5           push bc
3c24: 01 0a 00     ld   bc,$000A
3c27: cd fa 3d     call $3DFA
3c2a: c1           pop  bc
3c2b: 05           dec  b
3c2c: 7a           ld   a,d
3c2d: b3           or   e
3c2e: c2 23 3c     jp   nz,$3C23
3c31: 78           ld   a,b
3c32: b7           or   a
3c33: fa 4d 3c     jp   m,$3C4D
3c36: ca 4d 3c     jp   z,$3C4D
3c39: 1e 20        ld   e,$20
3c3b: c5           push bc
3c3c: d5           push de
3c3d: 21 ff ff     ld   hl,$FFFF
3c40: e5           push hl
3c41: e5           push hl
3c42: cd aa 3e     call $3EAA
3c45: c3 48 3c     jp   $3C48
3c48: c1           pop  bc
3c49: 05           dec  b
3c4a: c3 31 3c     jp   $3C31
3c4d: d1           pop  de
3c4e: c9           ret
3c4f: e1           pop  hl
3c50: 7e           ld   a,(hl)
3c51: 23           inc  hl
3c52: e5           push hl
3c53: b7           or   a
3c54: ca 6e 3c     jp   z,$3C6E
3c57: fe 01        cp   $01
3c59: ca b6 3c     jp   z,$3CB6
3c5c: fe 02        cp   $02
3c5e: ca a1 3c     jp   z,$3CA1
3c61: fe 03        cp   $03
3c63: ca d6 3c     jp   z,$3CD6
3c66: fe 04        cp   $04
3c68: ca 85 3c     jp   z,$3C85
3c6b: c3 cd 3c     jp   $3CCD
3c6e: cd df 3c     call $3CDF
3c71: c1           pop  bc
3c72: d1           pop  de
3c73: e1           pop  hl
3c74: 7d           ld   a,l
3c75: 93           sub  e
3c76: c2 7e 3c     jp   nz,$3C7E
3c79: 7c           ld   a,h
3c7a: 9a           sbc  a,d
3c7b: ca c6 3c     jp   z,$3CC6
3c7e: 21 00 00     ld   hl,$0000
3c81: e5           push hl
3c82: 60           ld   h,b
3c83: 69           ld   l,c
3c84: e9           jp   (hl)
3c85: cd df 3c     call $3CDF
3c88: c1           pop  bc
3c89: d1           pop  de
3c8a: e1           pop  hl
3c8b: 7a           ld   a,d
3c8c: ac           xor  h
3c8d: fa 9a 3c     jp   m,$3C9A
3c90: 7d           ld   a,l
3c91: 93           sub  e
3c92: 7c           ld   a,h
3c93: 9a           sbc  a,d
3c94: f2 c6 3c     jp   p,$3CC6
3c97: c3 7e 3c     jp   $3C7E
3c9a: a4           and  h
3c9b: f2 c6 3c     jp   p,$3CC6
3c9e: c3 7e 3c     jp   $3C7E
3ca1: cd df 3c     call $3CDF
3ca4: c1           pop  bc
3ca5: d1           pop  de
3ca6: e1           pop  hl
3ca7: 7a           ld   a,d
3ca8: ac           xor  h
3ca9: fa 9a 3c     jp   m,$3C9A
3cac: 7b           ld   a,e
3cad: 95           sub  l
3cae: 7a           ld   a,d
3caf: 9c           sbc  a,h
3cb0: da c6 3c     jp   c,$3CC6
3cb3: c3 7e 3c     jp   $3C7E
3cb6: cd df 3c     call $3CDF
3cb9: c1           pop  bc
3cba: d1           pop  de
3cbb: e1           pop  hl
3cbc: 7d           ld   a,l
3cbd: 93           sub  e
3cbe: c2 c6 3c     jp   nz,$3CC6
3cc1: 7c           ld   a,h
3cc2: 9a           sbc  a,d
3cc3: ca 7e 3c     jp   z,$3C7E
3cc6: 21 01 00     ld   hl,$0001
3cc9: e5           push hl
3cca: 60           ld   h,b
3ccb: 69           ld   l,c
3ccc: e9           jp   (hl)
3ccd: cd df 3c     call $3CDF
3cd0: c1           pop  bc
3cd1: e1           pop  hl
3cd2: d1           pop  de
3cd3: c3 8b 3c     jp   $3C8B
3cd6: cd df 3c     call $3CDF
3cd9: c1           pop  bc
3cda: e1           pop  hl
3cdb: d1           pop  de
3cdc: c3 a7 3c     jp   $3CA7
3cdf: c1           pop  bc
3ce0: d1           pop  de
3ce1: e1           pop  hl
3ce2: 26 00        ld   h,$00
3ce4: 7d           ld   a,l
3ce5: e6 01        and  $01
3ce7: 6f           ld   l,a
3ce8: e3           ex   (sp),hl
3ce9: 26 00        ld   h,$00
3ceb: 7d           ld   a,l
3cec: e6 01        and  $01
3cee: 6f           ld   l,a
3cef: e3           ex   (sp),hl
3cf0: e5           push hl
3cf1: d5           push de
3cf2: c5           push bc
3cf3: c9           ret
3cf4: e1           pop  hl
3cf5: e3           ex   (sp),hl
3cf6: 22 4f 2c     ld   ($2C4F),hl
3cf9: c9           ret
3cfa: e1           pop  hl
3cfb: 11 ff ff     ld   de,$FFFF
3cfe: d5           push de
3cff: d5           push de
3d00: e9           jp   (hl)
3d01: e1           pop  hl
3d02: e3           ex   (sp),hl
3d03: 22 44 39     ld   ($3944),hl
3d06: c9           ret
3d07: e1           pop  hl
3d08: e3           ex   (sp),hl
3d09: 22 46 39     ld   ($3946),hl
3d0c: c9           ret
3d0d: 21 4b 2c     ld   hl,$2C4B
3d10: 22 44 39     ld   ($3944),hl
3d13: 21 ed 2a     ld   hl,$2AED
3d16: 22 46 39     ld   ($3946),hl
3d19: c9           ret
3d1a: af           xor  a
3d1b: 32 65 3d     ld   ($3D65),a
3d1e: e1           pop  hl
3d1f: 22 66 3d     ld   ($3D66),hl
3d22: e1           pop  hl
3d23: c1           pop  bc
3d24: d1           pop  de
3d25: d5           push de
3d26: eb           ex   de,hl
3d27: 22 68 3d     ld   ($3D68),hl
3d2a: eb           ex   de,hl
3d2b: 59           ld   e,c
3d2c: 50           ld   d,b
3d2d: 7a           ld   a,d
3d2e: b7           or   a
3d2f: ca 58 3d     jp   z,$3D58
3d32: d5           push de
3d33: 1a           ld   a,(de)
3d34: bd           cp   l
3d35: ca 41 3d     jp   z,$3D41
3d38: da 41 3d     jp   c,$3D41
3d3b: 3e 01        ld   a,$01
3d3d: 32 65 3d     ld   ($3D65),a
3d40: 7d           ld   a,l
3d41: 3c           inc  a
3d42: 6f           ld   l,a
3d43: 26 00        ld   h,$00
3d45: e5           push hl
3d46: 32 6a 3d     ld   ($3D6A),a
3d49: cd e8 36     call $36E8
3d4c: 2a 68 3d     ld   hl,($3D68)
3d4f: 3a 6a 3d     ld   a,($3D6A)
3d52: 3d           dec  a
3d53: 77           ld   (hl),a
3d54: 2a 66 3d     ld   hl,($3D66)
3d57: e9           jp   (hl)
3d58: e1           pop  hl
3d59: 36 01        ld   (hl),$01
3d5b: 23           inc  hl
3d5c: 73           ld   (hl),e
3d5d: 3e 02        ld   a,$02
3d5f: 32 6a 3d     ld   ($3D6A),a
3d62: c3 4c 3d     jp   $3D4C
3d65: 00           nop
3d66: 00           nop
3d67: 00           nop
3d68: 00           nop
3d69: 00           nop
3d6a: 00           nop
3d6b: e1           pop  hl
3d6c: 22 8e 3d     ld   ($3D8E),hl
3d6f: e1           pop  hl
3d70: 22 90 3d     ld   ($3D90),hl
3d73: e1           pop  hl
3d74: 22 92 3d     ld   ($3D92),hl
3d77: e1           pop  hl
3d78: 23           inc  hl
3d79: e5           push hl
3d7a: 2b           dec  hl
3d7b: 6e           ld   l,(hl)
3d7c: 26 00        ld   h,$00
3d7e: e5           push hl
3d7f: 2a 92 3d     ld   hl,($3D92)
3d82: e5           push hl
3d83: 2a 90 3d     ld   hl,($3D90)
3d86: e5           push hl
3d87: cd 25 36     call $3625
3d8a: 2a 8e 3d     ld   hl,($3D8E)
3d8d: e9           jp   (hl)
3d8e: 00           nop
3d8f: 00           nop
3d90: 00           nop
3d91: 00           nop
3d92: 00           nop
3d93: 00           nop
3d94: e1           pop  hl
3d95: 3a a9 3e     ld   a,($3EA9)
3d98: 1f           rra
3d99: f5           push af
3d9a: e9           jp   (hl)
3d9b: eb           ex   de,hl
3d9c: 21 00 00     ld   hl,$0000
3d9f: af           xor  a
3da0: 32 a9 3e     ld   ($3EA9),a
3da3: 79           ld   a,c
3da4: b0           or   b
3da5: c2 ab 3d     jp   nz,$3DAB
3da8: c3 e4 3d     jp   $3DE4
3dab: 78           ld   a,b
3dac: 2f           cpl
3dad: 47           ld   b,a
3dae: 79           ld   a,c
3daf: 2f           cpl
3db0: 4f           ld   c,a
3db1: 03           inc  bc
3db2: 3e 11        ld   a,$11
3db4: 3d           dec  a
3db5: c2 bc 3d     jp   nz,$3DBC
3db8: eb           ex   de,hl
3db9: c3 e2 3d     jp   $3DE2
3dbc: 29           add  hl,hl
3dbd: da d6 3d     jp   c,$3DD6
3dc0: eb           ex   de,hl
3dc1: 29           add  hl,hl
3dc2: eb           ex   de,hl
3dc3: d2 c7 3d     jp   nc,$3DC7
3dc6: 2c           inc  l
3dc7: e5           push hl
3dc8: 09           add  hl,bc
3dc9: da d0 3d     jp   c,$3DD0
3dcc: e1           pop  hl
3dcd: c3 b4 3d     jp   $3DB4
3dd0: 1c           inc  e
3dd1: 33           inc  sp
3dd2: 33           inc  sp
3dd3: c3 b4 3d     jp   $3DB4
3dd6: eb           ex   de,hl
3dd7: 29           add  hl,hl
3dd8: eb           ex   de,hl
3dd9: d2 dd 3d     jp   nc,$3DDD
3ddc: 2c           inc  l
3ddd: 09           add  hl,bc
3dde: 1c           inc  e
3ddf: c3 b4 3d     jp   $3DB4
3de2: eb           ex   de,hl
3de3: c9           ret
3de4: 0e 09        ld   c,$09
3de6: 11 ef 3d     ld   de,$3DEF
3de9: cd 05 00     call $0005
3dec: cd 7f 39     call $397F
3def: 0d           dec  c
3df0: 0a           ld   a,(bc)
3df1: 44           ld   b,h
3df2: 49           ld   c,c
3df3: 56           ld   d,(hl)
3df4: 20 30        jr   nz,$3E26
3df6: 0d           dec  c
3df7: 0a           ld   a,(bc)
3df8: 24           inc  h
3df9: c9           ret
3dfa: af           xor  a
3dfb: 32 a9 3e     ld   ($3EA9),a
3dfe: b1           or   c
3dff: c2 0b 3e     jp   nz,$3E0B
3e02: b0           or   b
3e03: ca 70 3e     jp   z,$3E70
3e06: ee 80        xor  $80
3e08: ca 70 3e     jp   z,$3E70
3e0b: 78           ld   a,b
3e0c: a7           and  a
3e0d: fa 38 3e     jp   m,$3E38
3e10: b2           or   d
3e11: fa 19 3e     jp   m,$3E19
3e14: eb           ex   de,hl
3e15: cd 9b 3d     call $3D9B
3e18: c9           ret
3e19: 7d           ld   a,l
3e1a: fe 01        cp   $01
3e1c: ca 31 3e     jp   z,$3E31
3e1f: 7b           ld   a,e
3e20: 2f           cpl
3e21: 6f           ld   l,a
3e22: 7a           ld   a,d
3e23: 2f           cpl
3e24: 67           ld   h,a
3e25: 23           inc  hl
3e26: cd 9b 3d     call $3D9B
3e29: 7b           ld   a,e
3e2a: 2f           cpl
3e2b: 5f           ld   e,a
3e2c: 7a           ld   a,d
3e2d: 2f           cpl
3e2e: 57           ld   d,a
3e2f: 13           inc  de
3e30: c9           ret
3e31: 21 ff ff     ld   hl,$FFFF
3e34: cd 9f 3d     call $3D9F
3e37: c9           ret
3e38: af           xor  a
3e39: 91           sub  c
3e3a: 4f           ld   c,a
3e3b: 3e 00        ld   a,$00
3e3d: 98           sbc  a,b
3e3e: 47           ld   b,a
3e3f: 7a           ld   a,d
3e40: a7           and  a
3e41: fa 5e 3e     jp   m,$3E5E
3e44: c2 4b 3e     jp   nz,$3E4B
3e47: b3           or   e
3e48: ca 5e 3e     jp   z,$3E5E
3e4b: eb           ex   de,hl
3e4c: cd 9b 3d     call $3D9B
3e4f: 7b           ld   a,e
3e50: 2f           cpl
3e51: 5f           ld   e,a
3e52: 7a           ld   a,d
3e53: 2f           cpl
3e54: 57           ld   d,a
3e55: 13           inc  de
3e56: 7d           ld   a,l
3e57: 91           sub  c
3e58: 6f           ld   l,a
3e59: 7c           ld   a,h
3e5a: 98           sbc  a,b
3e5b: 67           ld   h,a
3e5c: 23           inc  hl
3e5d: c9           ret
3e5e: af           xor  a
3e5f: 93           sub  e
3e60: 6f           ld   l,a
3e61: 3e 00        ld   a,$00
3e63: 9a           sbc  a,d
3e64: 67           ld   h,a
3e65: cd 9b 3d     call $3D9B
3e68: af           xor  a
3e69: 95           sub  l
3e6a: 6f           ld   l,a
3e6b: 3e 00        ld   a,$00
3e6d: 9c           sbc  a,h
3e6e: 67           ld   h,a
3e6f: c9           ret
3e70: c3 e4 3d     jp   $3DE4
3e73: 3e 01        ld   a,$01
3e75: 32 a9 3e     ld   ($3EA9),a
3e78: 11 ff ff     ld   de,$FFFF
3e7b: 21 00 00     ld   hl,$0000
3e7e: c9           ret
3e7f: e1           pop  hl
3e80: c1           pop  bc
3e81: d1           pop  de
3e82: e5           push hl
3e83: 2e 00        ld   l,$00
3e85: cd fa 3d     call $3DFA
3e88: e1           pop  hl
3e89: d5           push de
3e8a: e9           jp   (hl)
3e8b: e1           pop  hl
3e8c: c1           pop  bc
3e8d: d1           pop  de
3e8e: e5           push hl
3e8f: 2e 01        ld   l,$01
3e91: cd fa 3d     call $3DFA
3e94: e3           ex   (sp),hl
3e95: e9           jp   (hl)
3e96: d1           pop  de
3e97: c1           pop  bc
3e98: e1           pop  hl
3e99: d5           push de
3e9a: cd 9b 3d     call $3D9B
3e9d: eb           ex   de,hl
3e9e: e3           ex   (sp),hl
3e9f: e9           jp   (hl)
3ea0: d1           pop  de
3ea1: c1           pop  bc
3ea2: e1           pop  hl
3ea3: d5           push de
3ea4: cd 9b 3d     call $3D9B
3ea7: e3           ex   (sp),hl
3ea8: e9           jp   (hl)
3ea9: 00           nop
3eaa: c1           pop  bc
3eab: e1           pop  hl
3eac: e1           pop  hl
3ead: c5           push bc
3eae: cd bb 3e     call $3EBB
3eb1: e1           pop  hl
3eb2: c1           pop  bc
3eb3: e5           push hl
3eb4: c5           push bc
3eb5: 59           ld   e,c
3eb6: cd d2 3e     call $3ED2
3eb9: c1           pop  bc
3eba: c9           ret
3ebb: 11 01 00     ld   de,$0001
3ebe: 19           add  hl,de
3ebf: 7d           ld   a,l
3ec0: b4           or   h
3ec1: c8           ret  z
3ec2: 2d           dec  l
3ec3: c8           ret  z
3ec4: 2d           dec  l
3ec5: c8           ret  z
3ec6: 1e 20        ld   e,$20
3ec8: e5           push hl
3ec9: cd d2 3e     call $3ED2
3ecc: e1           pop  hl
3ecd: 2d           dec  l
3ece: c2 c6 3e     jp   nz,$3EC6
3ed1: c9           ret
3ed2: e1           pop  hl
3ed3: d5           push de
3ed4: e5           push hl
3ed5: 2a 46 39     ld   hl,($3946)
3ed8: e9           jp   (hl)
3ed9: eb           ex   de,hl
3eda: 11 00 00     ld   de,$0000
3edd: 79           ld   a,c
3ede: 48           ld   c,b
3edf: 06 08        ld   b,$08
3ee1: 1f           rra
3ee2: d2 e8 3e     jp   nc,$3EE8
3ee5: eb           ex   de,hl
3ee6: 19           add  hl,de
3ee7: eb           ex   de,hl
3ee8: 29           add  hl,hl
3ee9: 05           dec  b
3eea: c2 e1 3e     jp   nz,$3EE1
3eed: 79           ld   a,c
3eee: a7           and  a
3eef: c2 de 3e     jp   nz,$3EDE
3ef2: eb           ex   de,hl
3ef3: e3           ex   (sp),hl
3ef4: e9           jp   (hl)
3ef5: e1           pop  hl
3ef6: c1           pop  bc
3ef7: d1           pop  de
3ef8: e5           push hl
3ef9: c3 d9 3e     jp   $3ED9
3efc: 4d           ld   c,l
3efd: 44           ld   b,h
3efe: cd d9 3e     call $3ED9
3f01: e1           pop  hl
3f02: c9           ret
3f03: c9           ret
3f04: 00           nop
3f05: 00           nop
3f06: 00           nop
3f07: 00           nop
3f08: 00           nop
3f09: 00           nop
3f0a: 00           nop
3f0b: 00           nop
3f0c: 00           nop
3f0d: 00           nop
3f0e: 00           nop
3f0f: 00           nop
3f10: 00           nop
3f11: 00           nop
3f12: 00           nop
3f13: 00           nop
3f14: 00           nop
3f15: 00           nop
3f16: 00           nop
3f17: 00           nop
3f18: 00           nop
3f19: 00           nop
3f1a: 00           nop
3f1b: 00           nop
3f1c: 00           nop
3f1d: 00           nop
3f1e: 00           nop
3f1f: 00           nop
3f20: 00           nop
3f21: 00           nop
3f22: 00           nop
3f23: 00           nop
3f24: 00           nop
3f25: 00           nop
3f26: 00           nop
3f27: 00           nop
3f28: 00           nop
3f29: 00           nop
3f2a: 00           nop
3f2b: 00           nop
3f2c: 00           nop
3f2d: 00           nop
3f2e: 00           nop
3f2f: 00           nop
3f30: 00           nop
3f31: 00           nop
3f32: 00           nop
3f33: 00           nop
3f34: 00           nop
3f35: 00           nop
3f36: 00           nop
3f37: 00           nop
3f38: 00           nop
3f39: 00           nop
3f3a: 00           nop
3f3b: 00           nop
3f3c: 00           nop
3f3d: 00           nop
3f3e: 00           nop
3f3f: 00           nop
3f40: 00           nop
3f41: 00           nop
3f42: 00           nop
3f43: 00           nop
3f44: 00           nop
3f45: 00           nop
3f46: 00           nop
3f47: 00           nop
3f48: 00           nop
3f49: 00           nop
3f4a: 00           nop
3f4b: 00           nop
3f4c: 00           nop
3f4d: 00           nop
3f4e: 00           nop
3f4f: 00           nop
3f50: 00           nop
3f51: 00           nop
3f52: 00           nop
3f53: 00           nop
3f54: 00           nop
3f55: 00           nop
3f56: 00           nop
3f57: 00           nop
3f58: 00           nop
3f59: 00           nop
3f5a: 00           nop
3f5b: 00           nop
3f5c: 00           nop
3f5d: 00           nop
3f5e: 00           nop
3f5f: 00           nop
3f60: 00           nop
3f61: 00           nop
3f62: 00           nop
3f63: 00           nop
3f64: 00           nop
3f65: 00           nop
3f66: 00           nop
3f67: 00           nop
3f68: 00           nop
3f69: 00           nop
3f6a: 00           nop
3f6b: 00           nop
3f6c: 00           nop
3f6d: 00           nop
3f6e: 00           nop
3f6f: 00           nop
3f70: 00           nop
3f71: 00           nop
3f72: 00           nop
3f73: 00           nop
3f74: 00           nop
3f75: 00           nop
3f76: 00           nop
3f77: 00           nop
3f78: 00           nop
3f79: 00           nop
3f7a: 00           nop
3f7b: 00           nop
3f7c: 00           nop
3f7d: 00           nop
3f7e: 00           nop
3f7f: 00           nop
