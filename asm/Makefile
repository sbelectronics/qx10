ZASM=../../rc2014/z80-asm/zasm-4.0/Linux/zasm

all: diskinfo.com diskpres.com disk

diskinfo.com: diskinfo.asm
	$(ZASM) -u -b diskinfo.asm -o diskinfo.com

diskpres.com: diskpres.asm
	$(ZASM) -u -b diskpres.asm -o diskpres.com

.PHONY: disk
disk:
	cpmrm -f epsqx10 epsnqx10-mangled.img 0:DISKINFO.COM || true
	cpmcp -f epsqx10 epsnqx10-mangled.img diskinfo.com 0:DISKINFO.COM
	dd if=epsnqx10.img of=build.img bs=1 count=16384
	dd if=epsnqx10-mangled.img of=build.img bs=1 skip=20480 conv=notrunc oflag=append
	cp build.img ../flashflop/DSKA0031-DEVEL.img

ls:
	cpmls -f epsqx10 -D epsnqx10-mangled.img
