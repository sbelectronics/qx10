# Convert disks that have the format
#    1 track, one side 16x256
#    39.5 tracks 10x512
# To format
#    40 tracks 10x512
#
# Throws away data from the first track side 0

import sys

bin = sys.stdin.read()

zeros = ""
for i in range(0, 5120):
    zeros = zeros + "\0"

bout = zeros + bin[4096:]

#print len(bin), len(bout)

sys.stdout.write(bout)
