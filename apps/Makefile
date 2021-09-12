ZASM=../../rc2014/z80-asm/zasm-4.0/Linux/zasm
BASE_IMG=base-mangled.img
BOOTABLE_IMG=base-bootable.img

ZORK_BUILD_IMG=zork-build.img
ZORK_IMG=zork.img
ZORK_SRC=~/projects/pi/rc2014/cpm_apps/zork

TOOLS_BUILD_IMG=tools-build.img
TOOLS_IMG=tools.img
XMODEM_SRC=~/projects/pi/rc2014/cpm_apps

SOUND_BUILD_IMG=sound-build.img
SOUND_IMG=sound.img
TUNE_SRC=../asm/tune.com
SNDPRES_SRC=../asm/sndpres.com
TUNES_DIR=~/projects/pi/RomWBW-master/Source/Apps/Tune/Tunes

SPEECH_BUILD_IMG=speech-build.img
SPEECH_IMG=speech.img

TPAS301_BUILD_IMG=tpas301-build.img
TPAS301_IMG=tpas301.img
TPAS301_SRC=~/projects/pi/rc2014/cpm_apps/tpas301

all: zork tools tpas301 sound speech copyout

clear-base:
	cpmrm -f epsqx10 $(BASE_IMG) 0:*.COM || true
	cpmrm -f epsqx10 $(BASE_IMG) 0:*.TXT || true
	cpmrm -f epsqx10 $(BASE_IMG) 0:*.SUB || true
	cpmrm -f epsqx10 $(BASE_IMG) 0:*.BAS || true
	cpmrm -f epsqx10 $(BASE_IMG) 0:*.ME || true
	cpmrm -f epsqx10 $(BASE_IMG) 0:*.DQC || true
	cpmrm -f epsqx10 $(BASE_IMG) 0:*.QRF || true
	cpmrm -f epsqx10 $(BASE_IMG) 0:*.UPD || true
	cpmrm -f epsqx10 $(BASE_IMG) 0:*.XXX || true
	cpmrm -f epsqx10 $(BASE_IMG) 0:*.DIR || true
	cpmrm -f epsqx10 $(BASE_IMG) 0:RFILE || true

zork:
	cp $(BASE_IMG) $(ZORK_BUILD_IMG)
	cpmcp -f epsqx10 $(ZORK_BUILD_IMG) $(ZORK_SRC)/ZORK1.COM 0:ZORK1.COM
	cpmcp -f epsqx10 $(ZORK_BUILD_IMG) $(ZORK_SRC)/ZORK1.DAT 0:ZORK1.DAT
	cpmcp -f epsqx10 $(ZORK_BUILD_IMG) $(ZORK_SRC)/ZORK2.COM 0:ZORK2.COM
	cpmcp -f epsqx10 $(ZORK_BUILD_IMG) $(ZORK_SRC)/ZORK2.DAT 0:ZORK2.DAT
	cpmcp -f epsqx10 $(ZORK_BUILD_IMG) $(ZORK_SRC)/ZORK3.COM 0:ZORK3.COM
	cpmcp -f epsqx10 $(ZORK_BUILD_IMG) $(ZORK_SRC)/ZORK3.DAT 0:ZORK3.DAT
	dd if=$(BOOTABLE_IMG) of=$(ZORK_IMG) bs=1 count=16384
	dd if=$(ZORK_BUILD_IMG) of=$(ZORK_IMG) bs=1 skip=20480 conv=notrunc oflag=append

tools:
	cp $(BASE_IMG) $(TOOLS_BUILD_IMG)
	cpmcp -f epsqx10 $(TOOLS_BUILD_IMG) $(XMODEM_SRC)/XMODEM.COM 0:XMODEM.COM
	dd if=$(BOOTABLE_IMG) of=$(TOOLS_IMG) bs=1 count=16384
	dd if=$(TOOLS_BUILD_IMG) of=$(TOOLS_IMG) bs=1 skip=20480 conv=notrunc oflag=append

sound:
	cd ../asm && make tune.com sndpres.com
	cp $(BASE_IMG) $(SOUND_BUILD_IMG)
	cpmcp -f epsqx10 $(SOUND_BUILD_IMG) $(TUNE_SRC) 0:TUNE.COM
	cpmcp -f epsqx10 $(SOUND_BUILD_IMG) $(SNDPRES_SRC) 0:SNDPRES.COM	
	cpmcp -f epsqx10 $(SOUND_BUILD_IMG) $(TUNES_DIR)/Attack.pt3 0:ATTACK.PT3
	cpmcp -f epsqx10 $(SOUND_BUILD_IMG) $(TUNES_DIR)/Backup.pt3 0:BACKUP.PT3
	cpmcp -f epsqx10 $(SOUND_BUILD_IMG) $(TUNES_DIR)/BadMice.pt3 0:BADMICE.PT3
	cpmcp -f epsqx10 $(SOUND_BUILD_IMG) $(TUNES_DIR)/Demo1.mym 0:DEMO1.MYM
	cpmcp -f epsqx10 $(SOUND_BUILD_IMG) $(TUNES_DIR)/Demo3mix.mym 0:DEMO3MIX.MYM
	cpmcp -f epsqx10 $(SOUND_BUILD_IMG) $(TUNES_DIR)/Demo3.mym 0:DEMO3.MYM
	cpmcp -f epsqx10 $(SOUND_BUILD_IMG) $(TUNES_DIR)/Demo4.mym 0:DEMO4.MYM
	cpmcp -f epsqx10 $(SOUND_BUILD_IMG) $(TUNES_DIR)/Demo.mym 0:DEMO.MYM
	cpmcp -f epsqx10 $(SOUND_BUILD_IMG) $(TUNES_DIR)/HowRU.pt3 0:HOWRU.PT3
	cpmcp -f epsqx10 $(SOUND_BUILD_IMG) $(TUNES_DIR)/Iteratn.pt3 0:ITERATN.PT3
	cpmcp -f epsqx10 $(SOUND_BUILD_IMG) $(TUNES_DIR)/LookBack.pt3 0:LOOKBACK.PT3
	cpmcp -f epsqx10 $(SOUND_BUILD_IMG) $(TUNES_DIR)/Louboutn.pt3 0:LOUBOUTN.PT3
	cpmcp -f epsqx10 $(SOUND_BUILD_IMG) $(TUNES_DIR)/Namida.pt3 0:NAMIDA.PT3
	cpmcp -f epsqx10 $(SOUND_BUILD_IMG) $(TUNES_DIR)/Recoll.pt3 0:RECOLL.PT3
	cpmcp -f epsqx10 $(SOUND_BUILD_IMG) $(TUNES_DIR)/Sanxion.pt3 0:SANXION.PT3
	cpmcp -f epsqx10 $(SOUND_BUILD_IMG) $(TUNES_DIR)/Synch.pt3 0:SYNCH.PT3
	cpmcp -f epsqx10 $(SOUND_BUILD_IMG) $(TUNES_DIR)/ToStar.pt3 0:TOSTAR.PT3
	cpmcp -f epsqx10 $(SOUND_BUILD_IMG) $(TUNES_DIR)/Victory.pt3 0:VICTORY.PT3
	cpmcp -f epsqx10 $(SOUND_BUILD_IMG) $(TUNES_DIR)/Wicked.pt3 0:WICKED.PT3
	cpmcp -f epsqx10 $(SOUND_BUILD_IMG) $(TUNES_DIR)/YeOlde.pt3 0:YEOLDE.PT3
	cpmcp -f epsqx10 $(SOUND_BUILD_IMG) $(TUNES_DIR)/Yeovil.pt3 0:YEOVIL.PT3
	cpmcp -f epsqx10 $(SOUND_BUILD_IMG) test/test.bas 0:TEST.BAS
	cpmcp -f epsqx10 $(SOUND_BUILD_IMG) tools/MBASIC.COM 0:MBASIC.COM
	dd if=$(BOOTABLE_IMG) of=$(SOUND_IMG) bs=1 count=16384
	dd if=$(SOUND_BUILD_IMG) of=$(SOUND_IMG) bs=1 skip=20480 conv=notrunc oflag=append

speech:
	cp $(BASE_IMG) $(SPEECH_BUILD_IMG)
	cpmcp -f epsqx10 $(SPEECH_BUILD_IMG) tools/MBASIC.COM 0:MBASIC.COM
	cp test/talker.bas /tmp
	unix2dos /tmp/talker.bas
	cpmcp -f epsqx10 $(SPEECH_BUILD_IMG) /tmp/talker.bas 0:TALKER.BAS
	dd if=$(BOOTABLE_IMG) of=$(SPEECH_IMG) bs=1 count=16384
	dd if=$(SPEECH_BUILD_IMG) of=$(SPEECH_IMG) bs=1 skip=20480 conv=notrunc oflag=append	

tpas301:
	cp $(BASE_IMG) $(TPAS301_BUILD_IMG)
	cpmcp -f epsqx10 $(TPAS301_BUILD_IMG) $(TPAS301_SRC)/cmdlin.pas 0:CMDLIN.PAS
	cpmcp -f epsqx10 $(TPAS301_BUILD_IMG) $(TPAS301_SRC)/lister.pas 0:LISTER.PAS
	cpmcp -f epsqx10 $(TPAS301_BUILD_IMG) $(TPAS301_SRC)/mc-mod00.inc 0:MC-MOD00.INC
	cpmcp -f epsqx10 $(TPAS301_BUILD_IMG) $(TPAS301_SRC)/mc-mod01.inc 0:MC-MOD01.INC
	cpmcp -f epsqx10 $(TPAS301_BUILD_IMG) $(TPAS301_SRC)/mc-mod02.inc 0:MC-MOD02.INC
	cpmcp -f epsqx10 $(TPAS301_BUILD_IMG) $(TPAS301_SRC)/mc-mod03.inc 0:MC-MOD03.INC
	cpmcp -f epsqx10 $(TPAS301_BUILD_IMG) $(TPAS301_SRC)/mc-mod04.inc 0:MC-MOD04.INC
	cpmcp -f epsqx10 $(TPAS301_BUILD_IMG) $(TPAS301_SRC)/mc-mod05.inc 0:MC-MOD05.INC
	cpmcp -f epsqx10 $(TPAS301_BUILD_IMG) $(TPAS301_SRC)/mc.hlp 0:MC.HLP
	cpmcp -f epsqx10 $(TPAS301_BUILD_IMG) $(TPAS301_SRC)/mc.pas 0:MC.PAS
	cpmcp -f epsqx10 $(TPAS301_BUILD_IMG) $(TPAS301_SRC)/mcdemo.mcs 0:MCDEMO.MCS
	cpmcp -f epsqx10 $(TPAS301_BUILD_IMG) $(TPAS301_SRC)/READ.ME 0:READ.ME
	cpmcp -f epsqx10 $(TPAS301_BUILD_IMG) $(TPAS301_SRC)/TINST.COM 0:TINST.COM
	cpmcp -f epsqx10 $(TPAS301_BUILD_IMG) $(TPAS301_SRC)/TINST.DTA 0:TINST.DTA
	cpmcp -f epsqx10 $(TPAS301_BUILD_IMG) $(TPAS301_SRC)/TINST.MSG 0:TINST.MSG
	cpmcp -f epsqx10 $(TPAS301_BUILD_IMG) $(TPAS301_SRC)/TURBO.COM 0:TURBO.COM
	cpmcp -f epsqx10 $(TPAS301_BUILD_IMG) $(TPAS301_SRC)/TURBO.MSG 0:TURBO.MSG
	cpmcp -f epsqx10 $(TPAS301_BUILD_IMG) $(TPAS301_SRC)/TURBO.OVR 0:TURBO.OVR

	dd if=$(BOOTABLE_IMG) of=$(TPAS301_IMG) bs=1 count=16384
	dd if=$(TPAS301_BUILD_IMG) of=$(TPAS301_IMG) bs=1 skip=20480 conv=notrunc oflag=append

ls-zork:
	cpmls -f epsqx10 -D $(ZORK_BUILD_IMG)

ls-tools:
	cpmls -f epsqx10 -D $(TOOLS_BUILD_IMG)

ls-tpas301:
	cpmls -f epsqx10 -D $(TPAS301_BUILD_IMG)

ls-sound:
	cpmls -f epsqx10 -D $(SOUND_BUILD_IMG)

ls-speech:
	cpmls -f epsqx10 -D $(SPEECH_BUILD_IMG)		

ls-base:
	cpmls -f epsqx10 -D $(BASE_IMG)

copyout:
	cp $(ZORK_IMG) ../flashflop/DSKA0024-ZORK.img
	cp $(TOOLS_IMG) ../flashflop/DSKA0025-TOOLS.img
	cp $(TPAS301_IMG) ../flashflop/DSKA0026-TPAS301.img
	cp $(SOUND_IMG) ../flashflop/DSKA0027-SOUND.img
	cp $(SPEECH_IMG) ../flashflop/DSKA0028-SPEECH.img
	cp $(ZORK_IMG) ../images/
	cp $(TOOLS_IMG) ../images/
	cp $(TPAS301_IMG) ../images/
	cp $(SOUND_IMG) ../images/
	cp $(SPEECH_IMG) ../images/

