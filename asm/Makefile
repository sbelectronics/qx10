ZASM=../../rc2014/z80-asm/zasm-4.0/Linux/zasm

all: programs patches disk

programs: bank01.com diskinfo.com diskpres.com fmt0.com read0.com

patches: patch-hdpart patch-cpm2

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

patch-hdpart-3151.bin: patch-hdpart-3151.asm
	$(ZASM) -u -b patch-hdpart-3151.asm -o patch-hdpart-3151.bin

patch-warmboot.bin: patch-warmboot.asm
	$(ZASM) -u -b patch-warmboot.asm -o patch-warmboot.bin

patch-ret.bin: patch-ret.asm
	$(ZASM) -u -b patch-ret.asm -o patch-ret.bin

patch-hdpart: patch-hdpart-2C61.bin patch-hdpart-2c73.bin patch-hdpart-2cbb.bin patch-hdpart-2cfa.bin patch-hdpart-3151.bin patch-hdpart-30d7.bin patch-warmboot.bin patch-ret.bin patch-hdpart-30f9.bin
	cp ../disasm/hdpart.com .
	#dd if=patch-hdpart-2C61.bin of=hdpart.com conv=notrunc bs=1 seek=$(shell printf "%d" $$((0x2C61-0x100)))   # nop out call to format
	dd if=patch-hdpart-2c73.bin of=hdpart.com conv=notrunc bs=1 seek=$(shell printf "%d" $$((0x2C73-0x100)))    # seek, sector number
	dd if=patch-hdpart-2cbb.bin of=hdpart.com conv=notrunc bs=1 seek=$(shell printf "%d" $$((0x2CBB-0x100)))    # seek, sector number
	dd if=patch-hdpart-2cfa.bin of=hdpart.com conv=notrunc bs=1 seek=$(shell printf "%d" $$((0x2CFA-0x100)))    # seek, sector count
	dd if=patch-hdpart-30d7.bin of=hdpart.com conv=notrunc bs=1 seek=$(shell printf "%d" $$((0x30d7-0x100)))    # repl wait bust with with drq
	#dd if=patch-warmboot.bin of=hdpart.com conv=notrunc bs=1 seek=$(shell printf "%d" $$((0x2C84-0x100)))   # format
	#dd if=patch-warmboot.bin of=hdpart.com conv=notrunc bs=1 seek=$(shell printf "%d" $$((0x2ca7-0x100)))   # write
	#dd if=patch-warmboot.bin of=hdpart.com conv=notrunc bs=1 seek=$(shell printf "%d" $$((0x30f9-0x100)))   # write
	dd if=patch-hdpart-30f9.bin of=hdpart.com conv=notrunc bs=1 seek=$(shell printf "%d" $$((0x30f9-0x100)))  # write
	dd if=patch-hdpart-3151.bin of=hdpart.com conv=notrunc bs=1 seek=$(shell printf "%d" $$((0x3151-0x100)))

diff-hdpart:
	hexdump -C ../disasm/hdpart.com > /tmp/hdpart1
	hexdump -C hdpart.com > /tmp/hdpart2
	diff -w /tmp/hdpart1 /tmp/hdpart2

unidasm-diff-hdpart:
	~/projects/mame/unidasm ../disasm/hdpart.com -arch z80 -basepc 100 > /tmp/hdpart1
	~/projects/mame/unidasm hdpart.com -arch z80 -basepc 100 > /tmp/hdpart2
	diff -w /tmp/hdpart1 /tmp/hdpart2

patch-diskbios-9a9d.bin: patch-diskbios-9a9d.asm
	$(ZASM) -u -b patch-diskbios-9a9d.asm -o patch-diskbios-9a9d.bin

patch-cpm2: patch-diskbios-9a9d.bin
	# B19A == 9A9A
	cp ../disasm/cpm2.sys .
	dd if=patch-diskbios-9a9d.bin of=cpm2.sys conv=notrunc bs=1 seek=$(shell printf "%d" $$((0x9a9d+5888)))

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
	cpmrm -f epsqx10 epsnqx10-mangled.img 0:CLRDIR.COM || true
	cpmrm -f epsqx10 epsnqx10-mangled.img 0:FMT0.COM || true
	cpmrm -f epsqx10 epsnqx10-mangled.img 0:HDPART.COM || true
	cpmrm -f epsqx10 epsnqx10-mangled.img 0:BANK01.COM || true
	cpmrm -f epsqx10 epsnqx10-mangled.img 0:DISKINFO.COM || true
	cpmrm -f epsqx10 epsnqx10-mangled.img 0:DISKPRES.COM || true
	cpmrm -f epsqx10 epsnqx10-mangled.img 0:READ0.COM || true
	cpmcp -f epsqx10 epsnqx10-mangled.img bank01.com 0:BANK01.COM
	cpmcp -f epsqx10 epsnqx10-mangled.img ../disasm/CLRDIR.COM 0:CLRDIR.COM
	cpmcp -f epsqx10 epsnqx10-mangled.img diskinfo.com 0:DISKINFO.COM
	cpmcp -f epsqx10 epsnqx10-mangled.img diskpres.com 0:DISKPRES.COM
	cpmcp -f epsqx10 epsnqx10-mangled.img fmt0.com 0:FMT0.COM
	cpmcp -f epsqx10 epsnqx10-mangled.img cpm2.sys 0:CPM2.SYS
	cpmcp -f epsqx10 epsnqx10-mangled.img hdpart.com 0:HDPART.COM
	cpmcp -f epsqx10 epsnqx10-mangled.img read0.com 0:READ0.COM
	dd if=epsnqx10.img of=build.img bs=1 count=16384
	dd if=epsnqx10-mangled.img of=build.img bs=1 skip=20480 conv=notrunc oflag=append
	cp build.img ../flashflop/DSKA0031-DEVEL.img

ls:
	cpmls -f epsqx10 -D epsnqx10-mangled.img
