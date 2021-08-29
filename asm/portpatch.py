# portpatch.py
#
# Patch the CPM 2.2 B2.26 cpm2.sys and hdpart.com to change the address
# of the hard drive controller from 0x80 to something else. Issue with the
# IDE board is that it will cause unpatched CPMs to hang on boot. so
# makes sense for the IDE board to be at a different address than 0x80, so
# it won't be detected on those unpatched CPMs.
#
# I recomment 0xD0.

import sys

diskbios = [
    # OUT ($8x), A   (D38x)
  0x99CB, 0x99E0, 0x9A19, 0x9A2E, 0x9A61, 0x9A65, 0x9A98, 0x9A9D, 0x9AAC, 
  0x9AB1, 0x9AB9, 0x9F35, 0x9F39, 0x9F47, 0x9FEA,
    # IN A,($8A)    (DB8x)
  0x99D3, 0x99F1, 0x9A25, 0x9A67, 0x9A6D, 0x9ABB, 0x9F3B,
    # LD BC,$0080 (018000)  
  0x99D0, 0x9A1E
]

diskbios_patches = [
  # OUT
  0x9A19, 0x9A61, 0x9A66, 0x9A70, 0x9A9F, 0x9AA5, 0x9AB4, 0x9AB9, 0x9ABD,
  # IN
  0x9A21, 0x9A2B, 0x9A68, 0x9A72, 
  # LD
  0x9A1E
]

hdpart = [
  # OUT
  0x2C69, 0x2C71, 0x2C74, 0x2C76, 0x2C78, 0x2C7E, 0x2C89,
  0x2CBB, 0x2CC3, 0x2CEF, 0x2CF5, 0x2CF8, 0x2CFC, 0x2D01, 0x2D05,
  0x3048, 0x304C, 0x3072, 0x30CF, 0x30E5, 0x30FE, 0x3113, 0x311B, 0x311F,
  0x314C, 0x3151, 0x3160, 0x3165, 0x3169,
  # IN
  0x2D07, 0x2D0C, 0x2D37, 0x304E, 0x3060, 0x30D7, 0x30EB, 0x310A, 0x3121,
  0x3127, 0x316B,
  # LD
  0x2C8E, 0x2CC5, 0x30D4, 0x3103
]

hdpart_patches = [
  # OUT
  0x2C74, 0x2C76, 0x2C79, 0x2C7B,
  0x2CBC,
  0x30FE,
  0x311B, 0x3120, 0x3129, 0x3150, 0x3156, 0x3165, 0x316A, 0x316E,
  # IN
  0x30D7,
  0x3106, 0x3110,
  0x3122, 0x312B,
  # LD
  0x3103]

if sys.argv[1] == "diskbios":
    patches = diskbios
    offs = 5888
elif sys.argv[1] == "diskbios_patches":
    patches = diskbios_patches
    offs = 5888
elif sys.argv[1] == "hdpart":
    patches = hdpart
    offs = -0x100
elif sys.argv[1] == "hdpart_patches":
    patches = hdpart_patches
    offs = -0x100
else:
    print "unknown", sys.argv[1]
    sys.exit(-1)

port = int(sys.argv[2],16)

data = bytearray(open(sys.argv[3]).read())

for addr in patches:
    origaddr = addr
    addr = addr + offs
    if (data[addr] != 0xD3) and (data[addr] != 0xDB) and (data[addr] != 0x01):
        print "not found at %X (%X): %02X" % (origaddr, addr, data[addr])
        sys.exit(-1)
    if (data[addr+1] < 0x80) or (data[addr+1] > 0x87):
        print "no port number at %X (%X): %02X" % (origaddr, addr, data[addr+1])
        sys.exit(-1)
    data[addr+1] = data[addr+1]-0x80 + port

open(sys.argv[3],"w").write(str(data))
