List of images

NOTE: The IMD and HFE files are untested. I made them by loading the IMG file
into HXCFloppyEmulator using the custom format hybridfmt.xml, and then
exporting to IMD or HFE. I don't seem to own a properly aligned Epson drive
to test the IMD file on; In my setup I use a Gotek.

NOTE2: I had bad luck with FlashFloppy and HFE files. If you are using
FlashFloppy, then I suggest using the custom IMG.CFG file in the 
../flashfloppy/ directory together with the IMG file.

* QX10IDE - Patched CPM for use with IDE Board
* QX10SOUND - AY-3-8910 Sound Board, Tune Player
* QX10SPEECH - SP0256 speech board

FORMAT: The format of any IMG files in this directory is generally 16 sectors
of 256 bytes per sector for the first two tracks (on each side), then 10
sectors of 512 bytes each for the remaining tracks. This is a way Epson did
it for the CP/M B release, presumably to maximize disk space while still
being compatible with the bootloader. It does present some challenges when
writing images. A Gotek running Flashfloppy makes for a more convenient
QX-10 than using the SD-321 physical drive.
