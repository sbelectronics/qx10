# Convert disks that have the format
#    2 tracks 16x256
#    38 tracks 10x512
# To format
#    40 tracks 10x512
#
# Throws away data from the first two tracks

import sys

bin = sys.stdin.read()

zeros = ""
for i in range(0, 20480):
    zeros = zeros + "\0"

bout = zeros + bin[16384:]

#print len(bin), len(bout)

sys.stdout.write(bout)
