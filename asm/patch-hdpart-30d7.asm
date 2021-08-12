       .ORG 30D7h

DRQWT:
       in    a, ($87)   ; check status
       bit   3, A
       jr    z, DRQWT
       ; next address 30dd
