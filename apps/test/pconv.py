SCOTT_WAS_HERE = " ".join([ "SS KK2 AO PA3 TT1",  # Scott
"PA1 WW UH ZZ",  # Was
"PA1 HH1 YR"])  # Here

RC2014 = " ".join(["AR PA3 SS SS IY",  # RC
"TT2 WH EH EH NN1 PA2 PA3 TT2 IY",  # Twenty
"FF OR PA2 PA3 TT2 IY NN1"])  # Fourteen

DAISYBELL= " ".join(["DD2 EY YY1 YY1 ZZ IY YY1 PA3", # Daisy
"DD2 EY YY1 YY1 ZZ IY YY1 PA3", # Daisy
"GG2 IH IH VV PA3 MM IY PA3", # Give me
"YY1 AO OR PA3", # Your
"AE NN2 SS ER2 PA3", # Answer
"DD2 DD2 UW1 PA5", # Do
"AY YY1 MM PA3 HH1 AE FF PA3", # I'm half
"KK2 RR2 EY YY1 ZZ IY PA3", # Crazy
"AO LL PA3 FF AO PA3 DH1 AX PA3", # All for the
"LL AX VV PA3 AX FF PA3 YY1 UW1 PA4", # Love of you
"IH TT1 PA3 WW OW NN1 TT2 PA3 BB2 IY PA3 EY PA3", # It won't be a 
"SS SS PA3 TT1 AY LL IH SH PA3", # Stylish
"MM EH RR2 IH AE JH PA4", # Marriage
"AY YY1 PA3 KK1 AE NN1 TT2 PA3", # I can't
"AE FF OR RR1 DD2 PA3 EY PA3", # Afford a
"KK1 EH RR2 IH AE JH PA4", # Carriage
"BB1 AA TT2 PA3 YY2 UW2 LL PA3", # But you'll
"LL UH KK2 PA3 SS WW IY TT2 PA3", # Look sweet
"AX PA3 PP AA NN2 PA3 DH1 AX PA3", # upon the 
"SS IY TT2 PA3", # seat
"AA VV PA3 EY PA3 ", # Of a 
"BB1 AY YY1 SS IH KK2 LL PA3", # Bicycle 
"MM EY DD1 PA3 FF OR RR2 PA3", # Made For
"TT2 UW2"  # Two
])

ABC = " PA3 ".join(["EY", "BB2 IY", "SS SS IY", "DD2 IY",  # A B C D
                "IY", "EH EH FF FF", "JH IY", "EY PA2 PA3 CH", # E F G H
                "AA AY", "JH EH EY", "KK1 EH EY", "EH EH EL", # I J K L
                "EH EH MM", "EH EH NN1", "OW", "PP IY", # M N O P
                "KK1 YY1 UW2", "AR", "EH EH SS SS", "TT2 IY", # Q R S T
                "YY1 UW2", "VV IY", "DD2 AX PA2 BB2 EL YY1 UW2", "EH EH PA3 KK2 SS SS", # U V W X
                "WW AY", "ZZ IY"]) # Y Z

EPSON_QX10 = " PA3 ".join(["EH PP PA1 SS SS AA NN1", # EPSON
                       "KK1 YY1 UW2", # Q 
                       "EH EH PA3 KK2 SS SS", # X
                       "TT2 EH EH NN1"]) # Ten

PHONEMES="""PA1
PA2
PA3
PA4
PA5
OY
AY
EH
KK3
PP
JH
NN1
IH
TT2
RR1
AX
MM
TT1
DH1
IY
EY
DD1
UW1
AO
AA
YY2
AE
HH1
BB1
TH
UH
UW2
AW
DD2
GG3
VV
GG1
SH
ZH
RR2
FF
KK2
KK1
ZZ
NG
LL
WW
XR
WH
YY1
CH
ER1
ER2
OW
DH2
SS
NN2
HH2
OR
AR
YR
GG2
EL
BB2
"""

PHONEMES = [x.strip() for x in PHONEMES.split("\n")]

def find(s):
    i=0
    for x in PHONEMES:
        if s.lower() == x.lower():
            return i
        i += 1
    raise Exception("Not found: " + s)

def convert(s, title, line=0):
    print "%d REM %s" % (line, title)
    line += 1
    i=0
    phonemes = s.split()
    for phoneme in phonemes:
        v = find(phoneme)
        print "%d SP(%d)=%d : REM %s" % (line+i, i, v, phoneme)
        i=i+1

    line += i
    print "%d SC=%d" % (line, i)

    line += 1
    print "%d GOTO 32000" % line
    
convert(SCOTT_WAS_HERE, "Scott Was Here", 1000)
convert(RC2014, "RC 2014", 2000)
convert(DAISYBELL, "Daisy Bell", 3000)
convert(ABC, "ABCs", 4000)
convert(EPSON_QX10, "EPSON QX-10", 5000)
