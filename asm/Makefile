ZASM=../../rc2014/z80-asm/zasm-4.0/Linux/zasm
IDE_IMG=qx10ide.img
PORT=0xD0

all: programs patches disk copyout

programs: bank01.com diskinfo.com diskpres.com fmt0.com read0.com cqgtest.com memtest.com memtest2.com

patches: patch-hdpart patch-cpm2

cqgtest.com: cqgtest.asm
	$(ZASM) -u -b cqgtest.asm -o cqgtest.com

diskinfo.com: diskinfo.asm
	$(ZASM) -u -b diskinfo.asm -o diskinfo.com

diskpres.com: diskpres.asm
	$(ZASM) -u -b diskpres.asm -o diskpres.com

bank01.com: bank01.asm
	$(ZASM) -u -b bank01.asm -o bank01.com

fmt0.com: fmt0.asm
	$(ZASM) -u -b fmt0.asm -o fmt0.com

read0.com: read0.asm
	$(ZASM) -u -b read0.asm -o read0.com

memtest.com: memtest.asm
	$(ZASM) -u -b memtest.asm -o memtest.com

memtest2.com: memtest2.asm
	$(ZASM) -u -b memtest2.asm -o memtest2.com

patch-hdpart-2C61.bin: patch-hdpart-2C61.asm
	$(ZASM) -u -b patch-hdpart-2C61.asm -o patch-hdpart-2C61.bin

patch-hdpart-2c73.bin: patch-hdpart-2c73.asm
	$(ZASM) -u -b patch-hdpart-2c73.asm -o patch-hdpart-2c73.bin

patch-hdpart-2cbb.bin: patch-hdpart-2cbb.asm
	$(ZASM) -u -b patch-hdpart-2cbb.asm -o patch-hdpart-2cbb.bin

patch-hdpart-2cfa.bin: patch-hdpart-2cfa.asm
	$(ZASM) -u -b patch-hdpart-2cfa.asm -o patch-hdpart-2cfa.bin

patch-hdpart-30d7.bin: patch-hdpart-30d7.asm
	$(ZASM) -u -b patch-hdpart-30d7.asm -o patch-hdpart-30d7.bin

patch-hdpart-30f9.bin: patch-hdpart-30f9.asm
	$(ZASM) -u -b patch-hdpart-30f9.asm -o patch-hdpart-30f9.bin

patch-hdpart-3119.bin: patch-hdpart-3119.asm
	$(ZASM) -u -b patch-hdpart-3119.asm -o patch-hdpart-3119.bin

patch-hdpart-3151.bin: patch-hdpart-3151.asm
	$(ZASM) -u -b patch-hdpart-3151.asm -o patch-hdpart-3151.bin

patch-warmboot.bin: patch-warmboot.asm
	$(ZASM) -u -b patch-warmboot.asm -o patch-warmboot.bin

patch-ret.bin: patch-ret.asm
	$(ZASM) -u -b patch-ret.asm -o patch-ret.bin

patch-hdpart: patch-hdpart-2C61.bin patch-hdpart-2c73.bin patch-hdpart-2cbb.bin patch-hdpart-2cfa.bin patch-hdpart-3151.bin patch-hdpart-30d7.bin patch-warmboot.bin patch-ret.bin patch-hdpart-30f9.bin patch-hdpart-3119.bin
	cp ../disasm/hdpart.com .
	python ./portpatch.py hdpart $(PORT) hdpart.com
	dd if=patch-hdpart-2c73.bin of=hdpart.com conv=notrunc bs=1 seek=$(shell printf "%d" $$((0x2C73-0x100)))    # seek, sector number
	dd if=patch-hdpart-2cbb.bin of=hdpart.com conv=notrunc bs=1 seek=$(shell printf "%d" $$((0x2CBB-0x100)))    # seek, sector number
	dd if=patch-hdpart-2cfa.bin of=hdpart.com conv=notrunc bs=1 seek=$(shell printf "%d" $$((0x2CFA-0x100)))    # seek, sector count
	dd if=patch-hdpart-30d7.bin of=hdpart.com conv=notrunc bs=1 seek=$(shell printf "%d" $$((0x30d7-0x100)))    # read, repl wait busy with drq
	dd if=patch-hdpart-30f9.bin of=hdpart.com conv=notrunc bs=1 seek=$(shell printf "%d" $$((0x30f9-0x100)))  # write, add drqwt
	dd if=patch-hdpart-3119.bin of=hdpart.com conv=notrunc bs=1 seek=$(shell printf "%d" $$((0x3119-0x100)))  # seek, secnum, count, and 8-bit mode
	python ./portpatch.py hdpart_patches $(PORT) hdpart.com

diff-hdpart:
	hexdump -C ../disasm/hdpart.com > /tmp/hdpart1
	hexdump -C hdpart.com > /tmp/hdpart2
	diff -w /tmp/hdpart1 /tmp/hdpart2

unidasm-diff-hdpart:
	~/projects/mame/unidasm ../disasm/hdpart.com -arch z80 -basepc 100 > /tmp/hdpart1
	~/projects/mame/unidasm hdpart.com -arch z80 -basepc 100 > /tmp/hdpart2
	diff -w /tmp/hdpart1 /tmp/hdpart2

patch-diskbios-9a5f.bin: patch-diskbios-9a5f.asm
	$(ZASM) -u -b patch-diskbios-9a5f.asm -o patch-diskbios-9a5f.bin

patch-diskbios-9a9d.bin: patch-diskbios-9a9d.asm
	$(ZASM) -u -b patch-diskbios-9a9d.asm -o patch-diskbios-9a9d.bin

patch-diskbios-9a14.bin: patch-diskbios-9a14.asm
	$(ZASM) -u -b patch-diskbios-9a14.asm -o patch-diskbios-9a14.bin

patch-cpm2: patch-diskbios-9a5f.bin patch-diskbios-9a9d.bin patch-diskbios-9a14.bin
	# B19A == 9A9A
	cp ../disasm/cpm2.sys .
	python ./portpatch.py diskbios $(PORT) cpm2.sys
	dd if=patch-diskbios-9a14.bin of=cpm2.sys conv=notrunc bs=1 seek=$(shell printf "%d" $$((0x9a14+5888)))   # write, add drqwt
	dd if=patch-diskbios-9a5f.bin of=cpm2.sys conv=notrunc bs=1 seek=$(shell printf "%d" $$((0x9a5f+5888)))    # seek, secnum, count, and 8-bit mode
	python ./portpatch.py diskbios_patches $(PORT) cpm2.sys

diff-cpm2:
	hexdump -C ../disasm/cpm2.sys > /tmp/cpm2-1
	hexdump -C cpm2.sys > /tmp/cpm2-2
	diff -w /tmp/cpm2-1 /tmp/cpm2-2

unidasm-diff-cpm2:
	~/projects/mame/unidasm ../disasm/cpm2.sys -arch z80 -basepc 0 > /tmp/cpm2-1
	~/projects/mame/unidasm cpm2.sys -arch z80 -basepc 0 > /tmp/cpm2-2
	diff -w /tmp/cpm2-1 /tmp/cpm2-2

.PHONY: disk
disk:
	cpmrm -f epsqx10 epsnqx10-mangled.img 0:CPM2.SYS || true
	cpmrm -f epsqx10 epsnqx10-mangled.img 0:CQGTEST.COM || true	
	cpmrm -f epsqx10 epsnqx10-mangled.img 0:CLRDIR.COM || true
	cpmrm -f epsqx10 epsnqx10-mangled.img 0:FMT0.COM || true
	cpmrm -f epsqx10 epsnqx10-mangled.img 0:HDPART.COM || true
	cpmrm -f epsqx10 epsnqx10-mangled.img 0:BANK01.COM || true
	cpmrm -f epsqx10 epsnqx10-mangled.img 0:DISKINFO.COM || true
	cpmrm -f epsqx10 epsnqx10-mangled.img 0:DISKPRES.COM || true
	cpmrm -f epsqx10 epsnqx10-mangled.img 0:MEMTEST.COM || true
	cpmrm -f epsqx10 epsnqx10-mangled.img 0:MEMTEST2.COM || true
	cpmrm -f epsqx10 epsnqx10-mangled.img 0:READ0.COM || true
	cpmrm -f epsqx10 epsnqx10-mangled.img 0:ODYSSEY.TXT || true
	cpmcp -f epsqx10 epsnqx10-mangled.img bank01.com 0:BANK01.COM
	cpmcp -f epsqx10 epsnqx10-mangled.img ../disasm/CLRDIR.COM 0:CLRDIR.COM
	cpmcp -f epsqx10 epsnqx10-mangled.img cqgtest.com 0:CQGTEST.COM	
	cpmcp -f epsqx10 epsnqx10-mangled.img diskinfo.com 0:DISKINFO.COM
	cpmcp -f epsqx10 epsnqx10-mangled.img diskpres.com 0:DISKPRES.COM
	cpmcp -f epsqx10 epsnqx10-mangled.img memtest.com 0:MEMTEST.COM
	cpmcp -f epsqx10 epsnqx10-mangled.img memtest2.com 0:MEMTEST2.COM
	cpmcp -f epsqx10 epsnqx10-mangled.img fmt0.com 0:FMT0.COM
	cpmcp -f epsqx10 epsnqx10-mangled.img cpm2.sys 0:CPM2.SYS
	cpmcp -f epsqx10 epsnqx10-mangled.img hdpart.com 0:HDPART.COM
	cpmcp -f epsqx10 epsnqx10-mangled.img read0.com 0:READ0.COM
	cpmcp -f epsqx10 epsnqx10-mangled.img odyssey.txt 0:ODYSSEY.TXT
	dd if=epsnqx10.img of=build.img bs=1 count=16384
	dd if=epsnqx10-mangled.img of=build.img bs=1 skip=20480 conv=notrunc oflag=append
	mv build.img $(IDE_IMG)

copyout:
	cp $(IDE_IMG) ../flashflop/DSKA0031-DEVEL.img

odyssey.txt:
	fold -w 40 -s odyssey.orig > odyssey.fold
	nl -b a -n rz -w3 -s" " odyssey.fold > odyssey.nl
	head -n 400 < odyssey.nl > odyssey.head
	cp odyssey.head /tmp/odyssey.dos
	unix2dos /tmp/odyssey.dos
	cp /tmp/odyssey.dos .
	cp odyssey.dos odyssey.txt
	rm -f odyssey.fold
	rm -f odyssey.nl
	rm -f odyssey.dos

ls:
	cpmls -f epsqx10 -D epsnqx10-mangled.img
